<?php
	Class Checkreview{
		static public function checkre(){
			$state=M('review')->order('r_id DESC')->find();
			$a=$state['r_state'];
			return $a;
		}
		function get_password( $length = 8 ) 
		{
    		$str = substr(md5(time()), 0, 6);
    		return $str;
		}
	}
?>