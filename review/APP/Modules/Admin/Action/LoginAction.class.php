<?php
	//后台首页控制器
    Class LoginAction extends Action
    {
    		Public function index()
    		{
    			$this->display(login);
        }
          	
          
        Public function login(){
       		if(!IS_POST) halt('页面不存在');
        	if(I('code','','strtolower')!=session('verify')) $this->error('验证码错误');
       		$db=M('admin');
       		$admin=$db->where(array('a_name'=>I('username')))->find();

          //dump($admin);
        
       	  if(!$admin||$admin['a_pwd']!=I('password','','md5'))
          {            
       	    $this->error('账号或密码错误');
          }
       		
          //更新最后一次登录时间
          $data=array(
            'a_id'=>$admin['a_id'],
            'logintime'=>date("Y-m-d H:i:s")
          );
          $db->save($data);
          session('id',$admin['a_id']);
          session('username',$admin['a_name']); 
          
          redirect(U(GROUP_NAME.'/Index/index'));

      }

      Public function verify(){
        import('Class.Image',APP_PATH);
        Image::Verify();
      }
      public function test(){
        $i=I('i',1);
        $j=I('j',1);        
        //dump($i);
        $this->reviewID = $i;
        $this->reviewID2 = $j;
        $this->display();
      }
    }
?>