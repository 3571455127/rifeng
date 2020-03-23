<?php
if(!is_file('./Cache/config.php'))header("location: ./Install");
header("Content-type: text/html;charset=utf-8");
ini_set('memory_limit','32M');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
define('UPLOAD_PATH','./Uploads/');
define('VERSION','v2.2 Released');
define('UPDATETIME','20121225');
define('Mobile',true);
define('APP_NAME', 'Mobile');
define('APP_PATH', './Mobile/');  
define('APP_LANG', false);
//define('APP_DEBUG',false);// 关闭调试模式
define('APP_DEBUG', true); // 开启调试模式
define('THINK_PATH','./Core/');
require(THINK_PATH.'Core.php');
?>
