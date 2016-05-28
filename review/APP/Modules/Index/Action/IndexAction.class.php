<?php
	Class IndexAction extends Action{

		public function index()
    	{
    		$this->display('login');
        }
        
        public function checkpwd()//检查密码、各个状态
        {
            $time = date("Y-m-d H:i:s"); 
      		$EXP=M('expert');
            $condition=array('e_pwd'=>$_POST['password']);
            $expert=$EXP->where($condition)->select();
        	$_SESSION['e_id']=$expert[0]['e_id'];
        	$_SESSION['e_name']=$expert[0]['e_name'];
            $survey_condition ="s_start <'".$time."' and "."s_end >'".$time."' and "."a_value ='".$expert[0]['e_type']."'";
            $s_time=M('v_survey_major')->where($survey_condition )->select();
            $_SESSION['s_id']=$s_time[0]['s_id'];
            $_SESSION['r_id']=M('survey')->where('s_id='.$_SESSION['s_id'])->getField('r_id');
            $s_state=M('survey')->where('s_id='.$_SESSION['s_id'])->getField('s_state');
            if(!$expert)
            {
                $this->error('口令错误！');
            }
            elseif(count($s_time)==0||$s_state=='新建')
            {
                $this->error('没有正在进行的评审活动！');
            }
            elseif(count($s_time)>1)
            {
                $this->error('存在多个的评审活动！');
            }
            elseif($expert[0]['e_state']=='休眠')
            {
                $this->error('您不具备此次评审资格！');
            }     
            else{
                //修改调查表状态
                if ($s_state=='评审开始') {
                    $new_s_state=M('survey')->where('s_id='.$_SESSION['s_id'])->setField('s_state','评审中');
                }
                //修改评审活动状态
                $r_state=M('review')->where('r_id='.$_SESSION['r_id'])->getField('r_state');
                if($r_state=='评审开始'){
                    $r_state=M('review')->where('r_id='.$_SESSION['r_id'])->setField('r_state','评审中');
                }
                //修改专家登录时间，ip，状态
                $ip=get_client_ip();
                $login_time=M('expert')->where('e_id='.$_SESSION['e_id'])->setField('login_time',$time);
                $s_id=M('expert')->where('e_id='.$_SESSION['e_id'])->setField('s_id',$_SESSION['s_id']);//用于统计参与评审的专家
                $e_state=M('expert')->where('e_id='.$_SESSION['e_id'])->getField('e_state');
                if($e_state!='评审完毕')//修改专家状态
                    $e_state=M('expert')->where('e_id='.$_SESSION['e_id'])->setField('e_state','已登录');
                $this->redirect(GROUP_NAME.'/Response/welcome');//跳转至欢迎页面
                
            }
        }
        public function logout()//退出，清空session
        {
            session_unset();
            session_destroy();
            $this->redirect(GROUP_NAME.'/Index/index');
        }
	}	
?>