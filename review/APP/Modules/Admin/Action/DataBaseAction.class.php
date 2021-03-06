<?php
  class DatabaseAction extends CommonAction{

      public function index()
      {
            $this->display();
      }
      //备份数据库
      public function backup()
      {
        $dbhost = C('DB_HOST');     //数据库主机名  
        $dbuser = C('DB_USER');     //数据库用户名  
        $dbpass = C('DB_PWD');    //数据库密码  
        $dbname = C('DB_NAME');    //数据库名  
        // 设置SQL文件保存文件名  
        $filename=date("Y-m-d_H:i:s")."_".$dbname.".sql";  
        // 所保存的文件名  
        //header("Content-disposition:filename=".$filename);  
        //header("Content-type:application/octetstream");  
        //header("Pragma:no-cache");  
        //header("Expires:0");  
        // SQL文件就导出到此文件夹内  
        $tmpFile = "./data/".$filename;  
        // 用MySQLDump命令导出数据库  
        $result=exec("E:\wamp\bin\mysql\mysql5.6.17\bin\mysqldump -h $dbhost -u$dbuser -p$dbpass --default-character-set=utf8 $dbname > ".$tmpFile,$str_r);  
        $file = fopen($tmpFile, "r"); // 打开文件  
       // echo fread($file,filesize($tmpFile));  
        fclose($file);  
        //exit;
        if(!$result) 
            $this->success('数据库备份成功！');
        else
            $this->error('数据库备份失败！');
        exit;
      }
      //  恢复数据库
      public function restore()
      {
            $file_name = $_POST['sqlFile']; //要导入的SQL文件名  
            $dbhost      = C('DB_HOST');     //数据库主机名  
            $dbuser      = C('DB_USER');     //数据库用户名  
            $dbpass     = C('DB_PWD');    //数据库密码  
            $dbname    = C('DB_NAME');    //数据库名  
        
           // dump($file_name);die;
            set_time_limit(0); //设置超时时间为0，表示一直执行。当php在safe mode模式下无效，此时可能会导致导入超时，此时需要分段导入  
            $fp = @fopen($file_name, "r") or die("不能打开SQL文件 $file_name");//打开文件  
            mysql_connect($dbhost, $dbuser, $dbpass) or die("不能连接数据库 $dbhost");//连接数据库  
            mysql_select_db($dbname) or die ("不能打开数据库 $dbname");//打开数据库    
            echo "<p>正在清空数据库,请稍等....<br>";                       
            $result = mysql_query("SHOW tables");                       
            while ($currow=mysql_fetch_array($result))  
            {                       
               mysql_query("drop TABLE IF EXISTS $currow[0]");                       
               echo "清空数据表【".$currow[0]."】成功！<br>";                       
            }                       
            echo "<br>恭喜你清理MYSQL成功<br>";  
            echo "正在执行导入数据库操作<br>";  
            // 导入数据库的MySQL命令  
            exec("E:\wamp\bin\mysql\mysql5.6.17\bin\mysql -h $dbhost  -u$dbuser -p$dbpass $dbname < ".$file_name);  
            echo "<br>导入完成！";  
            mysql_close();
      }
  }
?>