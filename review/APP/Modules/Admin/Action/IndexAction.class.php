<?php
	//后台首页控制器
    Class IndexAction extends CommonAction
    {
    	Public function index()
    	{
    		//$this->display();
            $this->display('frame');
        }

        //退出登录提交
        public function logout(){
        	session_unset();
        	session_destroy();
        	//$this->redirect(GROUP_NAME.'/Login/index');
        }

    }

?>