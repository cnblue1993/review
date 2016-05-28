<?php
	Class CommonAction extends Action
	{
		public function _initialize()
		{
			if(!isset($_SESSION['id']))
			{
				$this->redirect(GROUP_NAME.'/Login/index');
			}
		}
	}
?>
