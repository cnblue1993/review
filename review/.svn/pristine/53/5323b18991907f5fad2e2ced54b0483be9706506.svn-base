<?php
	Class CheckAction extends Action
	{
		public function _initialize()
		{
			$state=M('review')->order('r_id DESC')->find();
			if($state['r_state']=='0')
			{
				$this->error('请先添加评审活动',U(GROUP_NAME.'/Review/index'));
			}
		}
	}
?>
