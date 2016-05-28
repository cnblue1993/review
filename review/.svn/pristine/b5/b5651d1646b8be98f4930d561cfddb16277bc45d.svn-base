<?php
	class CateAction extends CommonAction{

		public function index(){
			$data=M('department')->select();
			$this->data=$data;
			$this->display();
		}
		public function index2(){
			$data=M('major_group')->select();
			$this->data=$data;
			$this->display();
		}

		public function xueke(){
			$data1=M('major_group')->select();
			$this->data1=$data1;
			$this->display();
		}
		//分别引入添加学院和学科的模板
		public function addhtml1(){
			$mg_list=M('major_group')->select();
			$this->list=$mg_list;
			$this->display();
		}
		//添加学科
		public function addxk(){
			$data=array('mg_name'=>$_POST['mg_name']);
			if(M('major_group')->add($data)){
				$this->success('添加学科成功',U(GROUP_NAME.'/Cate/index2'));
			}else{
				$this->error('添加学科失败');
			}
		}
		//添加学院
		public function add(){
			$data=array('d_name'=>$_POST['d_name'],
						 'mg_id'=>$_POST['mg_id']);
			if(M('department')->add($data)){
				$this->success('添加学院成功！',U(GROUP_NAME.'/Cate/index'));
			}else{
				$this->error('添加学院失败！');
			}
		}
		//修改学院
		public function modifyShow()
		{
			$department=M('department')->where('d_id='.$_GET['d_id'])->select();
			$mg_name=M('major_group')->where('mg_id='.$department[0]['mg_id'])->getField('mg_name');
			$this->assign('d_name',$department[0]['d_name']);
			$this->assign('d_id',$department[0]['d_id']);
			$this->assign('mg_name',$mg_name);
			$this->display();
		}
		public function modify(){
			$condition=array('mg_name'=>$_POST['mg_name']);
			$mg_id=M('major_group')->where($condition)->getField('mg_id');
			$data=array('d_name'=>$_POST['d_name'],
						 'mg_id'=>$mg_id);
			if(M('department')->where('d_id='.$_POST['d_id'])->save($data)){
				$this->success('修改学院成功！',U(GROUP_NAME.'/Cate/index'));
			}else{
				$this->error('修改学院失败！');
			}
		}
		//删除学院代码
		public function delete(){
			$where=array('d_id'=>$_GET['d_id']);
			if(M('department')->where($where)->delete()){
				$this->success('删除学院成功',U(GROUP_NAME.'/Cate/index'));
			}else{
				$this->error('删除学院失败');
			}
		}
		//注释掉
				// // 调整前台显示问题组的顺序界面显示
				// public function showSort(){
				// 	$sort=M('question_group')->select();
				// 	$this->sort=$sort;
				// 	// dump($sort);
				// 	$this->display();
				// }
				// 调整前台分组显示顺序实现
				// public function sort(){
				// 	dump($_POST);

				// }
				//调用显示修改的模板
				// public function modifyShow(){
				// 	$modifyShow=M('department')->where('d_id='.$_GET['d_id'])->select();
				// 	$this->list=$modifyShow;
				// 	$this->display();
				// }
				// // 修改学院信息的实现
				// public function modify(){

				// }
		//显示学院排序界面
		public function showQG_Order()
		{
			$survey=M('v_survey_major')->where('r_id='.$_GET['id'])->select();
			$this->assign('survey',$survey);
			$qg_order=M('question_group')->order('qg_order')->select();
			$this->assign('qg_order',$qg_order);
			$this->display();
		}
		//数据库保存提交的排序
		public function setQG_Order()
		{
			foreach($_POST as $k=>$value)
			{
				$data['qg_order']=$value;
				M('question_group')->where('qg_id='.$k)->save($data);
			}
			$this->success('修改成功',U(GROUP_NAME.'/Review/showNow'));
		}
	}
?>