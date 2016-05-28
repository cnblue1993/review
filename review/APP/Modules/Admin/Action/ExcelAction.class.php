<?php
  class ExcelAction extends CommonAction{
    public function excel(){
        //dump($state);
        $where=array('r_id'=>$_GET['rid']);
        $review=M('review')->where($where)->find();
        if($review['r_state']=='新建'){
          $list=M('review')->where($where)->find();
            // $this->list=$list;
            $this->assign('list',$list)->display();
        }else{
            $this->error('不能为当前状态的评审活动导入项目');
        }
    }
    //读取excel表单的内容
    public function runexcel(){
      import('Class.Excelhelp',APP_PATH);
      $rid=$_POST['r_id'];
      if (! empty ( $_FILES ['file_stu'] ['name'] )) 
          {
              $tmp_file = $_FILES ['file_stu'] ['tmp_name'];
              $file_types = explode ( ".", $_FILES ['file_stu'] ['name'] );
              $file_type = $file_types [count ( $file_types ) - 1];
              /*判别是不是.xls文件，判别是不是excel文件*/
              if (strtolower ( $file_type ) != "xls")              
              {
                $this->error ( '不是Excel文件，重新上传' );
              }
              /*设置上传路径*/
              $savePath = './Excel/';
              /*以时间来命名上传的文件*/
              $str = date ( 'Ymdhis' ); 
              $file_name = $str . "." . $file_type;
              /*是否上传成功*/
              if (! copy ( $tmp_file, $savePath . $file_name )) 
              {
                  $this->error ( '上传失败' );
              }
            $exceldata=Category::read($savePath.$file_name);
            //dump($exceldata);//取$exceldata[2]为这张数据的表头
            $excelTop=Category::getExcelTop($exceldata[2]);

            //获取ExcelBody
            $excelBody=Category::getExcelBody($exceldata);
            $full_excel=$this->fillExcel($excelBody);
            $rusultExcel=$this->saveExcel($full_excel,$excelTop,$rid);
            $resultForeignExpert=$this->saveForeignExpert($full_excel,$excelTop,$rid);
            $this->automatic($rid);
          }
          if($rusultExcel&&$resultForeignExpert)
            $this->success('项目导入成功！',U(GROUP_NAME.'/Review/showNow'));
          else
            $this->error('项目导入失败！');
        }

        //回填表格中的空白部分
         public function fillExcel($excel){
          foreach($excel as $k=>$v){
            foreach($v as $a=>$b){
              if($a<=10){
                $data[$a]=($b==null)?($result[$k-1][$a]):$b;
              }
              if($a>10){
                $data[$a]=$b;
              }
            }
            $result[$k]=$data;
          }
          return $result;
        }
        //添加项目内容信息到进数据库
        public function saveExcel($excel,$excelTop,$rid){
          foreach($excel as $k=>$v){
            $condition=array('r_id'=>$rid,'p_name'=>$v[$excelTop['项目名称']]);
            $project=M('project')->where($condition)->find();
            if(empty($project)){
              $data=array(
                'p_number'=>$v[$excelTop['项目批号']],
                'p_name'=>$v[$excelTop['项目名称']],
                'p_rank'=>($v[$excelTop['项目类别']]=='高校常规引智项目')?('一般'):('重点'),
                'p_principal'=>$v[$excelTop['项目负责人']],
                'p_department'=>$v[$excelTop['承办学院']],
                'r_id'=>$rid,
                'p_funds'=>$v[$excelTop['费用合计']]
                );
                $result=M('project')->add($data);
            }
          }
          if($result)
            return true;
          else
            return false;
        }
        //添加项目相关的外国专家信息到数据库
       public function saveForeignExpert($excel,$excelTop,$rid){
       foreach($excel as $k=>$v){
       $where=array('r_id'=>$rid,
                  'p_name'=>$v[$excelTop['项目名称']], 
                  'fe_name'=>$v[$excelTop['专家姓名']]);
         $foreign_expert=M('foreign_expert')->where($where)->find();
            $condition=array('r_id'=>$rid,
                'p_name'=>$v[$excelTop['项目名称']]);
            $p_id=M('project')->where($condition)->getField('p_id');
         if(empty($foreign_expert)){
         $data=array(
                'p_id'=>$p_id,
                'p_number'=>$v[$excelTop['项目批号']],
                'p_name'=>$v[$excelTop['项目名称']],
                'r_id'=>$rid,
         'fe_name'=>$v[$excelTop['专家姓名']],
         'fe_passport'=>$v[$excelTop['护照号码']],
         'fe_workday'=>$v[$excelTop['在华工作天数']],
         'fe_education'=>$v[$excelTop['专家学历']],
         'fe_nation'=>$v[$excelTop['专家国籍']]
         );
         $result=M('foreign_expert')->add($data);
         }
         }
          if($result)
            return true;
          else
            return false;       
        }

        //显示导入的项目
        public function show(){
          import('ORG.Util.Page');
          $data=M('department')->select();
          $infor=M('project');
          $review=M('review')->select();
          if(!empty($_POST['department'])&&!empty($_POST['r_id'])){ 
            $where=array('p_department'=>$_POST['department'],
                        'p_state'=>0,
                        'r_id'=>$_POST['r_id']);
          }
          elseif (!empty($_POST['department'])&&$_POST['r_id']==''){
            $where=array('p_department'=>$_POST['department'],'p_state'=>0);
          }elseif (!empty($_POST['r_id'])&&$_POST['department']==''){
            $where=array('r_id'=>$_POST['r_id'],'p_state'=>0);
          }else{
            $where=array('p_state'=>0);
          }
          $count=$infor->where($where)->count();
          $page=new Page($count,20);
          $page->setConfig('prev','上一页');
          $page->setConfig('next','下一页');
          $page->setConfig('first','首页');
          $page->setConfig('last','末页');
          $show=$page->show();
          $list=$infor->where($where)->limit($page->firstRow.','.$page->listRows)->select();
          $this->assign('list',$list);
          $this->assign('page',$show);
          $this->dname=$_POST['department'];
          $this->rid=$_POST['r_id'];
          $this->data=$data;
          $this->review=$review;
          $this->display();
        }

        //编辑修改项目信息
        public function editor(){
          $project_infor=M('project')->where('p_id='.$_GET['p_id'])->find();
          // dump($project_infor);
          $this->infor=$project_infor;
          $this->display();
      }

      //
      public function del_editor(){
          $data=array('p_id'=>$_POST['p_id'],
                    'p_name'=>$_POST['p_name'],
                    'p_number'=>$_POST['p_number'],
                    'p_rank'=>$_POST['p_rank'],
                    'p_department'=>$_POST['p_department'],
                    'p_funds'=>$_POST['p_funds'],
                    'p_year'=>$_POST['p_year'],
                    'p_principal'=>$_POST['p_principal']);
          if(M('project')->setfield($data)){
              $this->success('更新成功！');
          }else{$this->error('更新失败！');}
        }
        //逻辑删除项目
        public function delete(){
          //dump($_GET['id']);
          $project_rid=M('project')->where('p_id='.$_GET['p_id'])->getfield('r_id');
          // dump($project_rid);die;
          $reviewState=M('review')->where('r_id='.$project_rid)->getfield('r_state');
          if($reviewState=='新建'){
              $where=array('p_id'=>$_GET['p_id'],'p_state'=>1,'p_number'=>'','r_id'=>'');
              if(M('project')->setfield($where))
              {
                  $this->delete_question($_GET['p_id']);
                  $this->success('删除成功！');
              }else{
                  $this->error('删除失败！');
              }
          }
          else{
              $this->error('项目所处的评审活动已封存或正在评审，此项目不可删除！');
          }
        }
      
        //删除项目对应的问题和调查分组
        public function  delete_question($pid){
          $project_infor=m(v_project_major_group)->where('p_id='.$pid)->find();
          M('question')->where('source_id='.$pid)->delete();
          $condition=array('r_id'=>$project_infor['r_id'],'p_state'=>0,'p_department'=>$project_infor['p_department']);
          $question_group_list=m(v_project_major_group)->where($condition)->select();//与删除项目相同分组的项目列表
          $where=array('r_id'=>$project_infor['r_id'],'p_state'=>0,'mg_name'=>$project_infor['mg_name']);
          $survey_list=m(v_project_major_group)->where($where)->select();//同一张调查表
          //进行级联操作删除
          if(count($question_group_list)==0){
              $condition2=array('r_id'=>$project_infor['r_id'],'qg_name'=>$project_infor['p_department']);
              M('question_group')->where($condition2)->delete();
          }
          if(count($survey_list)==0){
              $where2=array('r_id'=>$project_infor['r_id'],'a_value'=>$project_infor['mg_name']);
              $surveyname=m(v_survey_major)->where($where2)->find();
              $where3=array('r_id'=>$project_infor['r_id'],'s_id'=>$surveyname['s_id']);
              M('survey')->where($where3)->delete();
          }

        }
        //自动生成调查表和question_group表。
      public function automatic($rid){
          $r_id=$rid;
          // 查询出本次评审活动待评审项目列表$reviewProject
          $condition=array('r_id'=>$r_id,'p_state'=>0);
          $reviewProject=m(v_project_major_group)->where($condition)->select();
          //查询原始数据表中是否已经存在要添加的元素
          foreach($reviewProject as $k){
            $where=array('r_id'=>$r_id);
            $original=m('v_survey_major')->where($where)->select();
            $originalcount=count($original);
              for($i=0;$i<$originalcount;$i++){
                  if($original[$i]['a_value']==$k['mg_name'])
                     break;
              }
                if($i==$originalcount){
                  $s_name=$k['mg_name'].date("Y-m-d H:i:s");
                  $review=M('review')->where('r_id='.$r_id)->find();
                  $data=array('s_name'=>$s_name,
                              's_start'=>$review['r_start'],
                              's_end'=>$review['r_end'],
                              'r_id'=>$r_id,
                              's_state'=>'新建');
                  M('survey')->add($data);
                  $condition2=array('s_name'=>$s_name);
                  $addsurvey_befor=M('survey')->where($condition2)->find();
                  $condition3=array('s_id'=>$addsurvey_befor['s_id'],
                                    'a_name'=>'学科',
                                    'a_value'=>$k['mg_name']);
                  M('survey_attribute')->add($condition3);
              }
          }
          $this->automatic2($r_id);
      }
      //自动调用的生成问题分组表函数实现
        public function automatic2($rid){
          $r_id=$rid;
          // 遍历要评审项目
          $condition=array('r_id'=>$r_id,'p_state'=>0);
          $reviewProject=m(v_project_major_group)->where($condition)->select();
          // 查询原始数据表中针对本次评审已添加的数据
          foreach($reviewProject as $k){
              $where=array('r_id'=>$r_id);
              $original=m(v_question_group_major)->where($where)->select();
              $originalcount=count($original);
              //dump($original[5]['qg_name']);dump($k['p_department']);die;
              for($i=0;$i<$originalcount;$i++){
                  if($original[$i]['qg_name']==$k['p_department'])
                      break;
              }
              if($i==$originalcount){//满足此条件说明没有
                  $where2=array('r_id'=>$r_id,
                              'a_value'=>$k['mg_name']);
                  $result=m('v_survey_major')->where($where2)->field('s_id')->select();
                  $firstresult=$result[0];
                  $data=array(
                  'qg_name'=>$k['p_department'],
                    's_id'=>$firstresult['s_id']);
                  M('question_group')->add($data);
              }
          }
            $this->add_question_answer($r_id);
        }
         //自动生成问题和答案
        public function add_question_answer($rid){
          $review=$rid;
          $con=array('r_id'=>$review,'is_insert'=>'0');

          $project=M('project')->where($con)->select();
          $question=M('question');
          $answer=M('answer');
          foreach($project as $k=>$value)
          {
              $value=1;
              M('project')->where('p_id='.$project[$k]['p_id'])->setField('is_insert',$value);
              $condition=array('r_id'=>$project[$k]['r_id'],'qg_name'=>$project[$k]['p_department']);
              $qg_survey=M('survey')
                    ->join('tb_question_group on tb_survey.s_id=tb_question_group.s_id')
                    ->where($condition)->select();
              $s_id=$qg_survey[0]['s_id'];
              $qg_id=$qg_survey[0]['qg_id'];
              $data=array(
                  'source_id'=>$project[$k]['p_id'],
                  'q_text'=>$project[$k]['p_name'],
                  's_id'=>$s_id,
                  'qg_id'=>$qg_id,
                  'q_order'=>$project[$k]['p_rank']=='重点'?0:1
                  );
              $question->add($data);

              $q_id=$question->where('source_id='.$project[$k]['p_id'])->getField('q_id');
              $data1=array(
                'a_number'=>1,
                'a_text'=>'不通过',
                'a_order'=>1,
                'qg_id'=>$qg_id,
                'q_id'=>$q_id
              );
              $data2=array(
                'a_number'=>2,
                'a_text'=>'一般',
                'a_order'=>2,
                'qg_id'=>$qg_id,
                'q_id'=>$q_id
              );
              $data3=array(
                'a_number'=>3,
                'a_text'=>'重点',
                'a_order'=>3,
                'qg_id'=>$qg_id,
                'q_id'=>$q_id
              );
              $answer->add($data1);
              $answer->add($data2);
              if($project[$k]['p_rank']=='重点')
                $answer->add($data3);
          }
      }
  } 
?>
