<?php
return array(
	//'配置项'=>'配置值'
	'DB_HOST'=>'localhost',
    'DB_USER'=>'root',
    'DB_PWD'=>'root',
    'DB_NAME'=>'db_review',//数据库名称
    'DB_PREFIX'=>'tb_',//表前缀

	//开启应用分组
	'APP_GROUP_LIST' => 'Index,Admin',
	'DEFAULT_GROUP' => 'Index',
	'APP_GROUP_MODE' => 1,
	'APP_GROUP_PATH' => 'Modules',
	'LOAD_EXT_CONFIG'=>'verify',//加载一下自己设置的配置文件
	
	//点前缀配置

	//配置路由路径
	'URL_ROUTER_ON'=>true,
	'URL_ROUTE_RULES'=>array(
	//'/^c_(101)$/'=>'Index/Show/index?id=1',
	//'/^c_(102)$/'=>'Index/List/index?id=1',
	//'/^c_(119)$/'=>'Index/Baoming/index?id=1',

		//':11'=>'Index/Show/index',
		//':100'=>'Index/List/index'

		
        '/^c_(\d+)$/'=>'Index/Show/index?id=:1',
		'/^m_(\d_\d+)$/'=>'Index/Show/index?md=:1&id=:1'
		)
	    
);
?>