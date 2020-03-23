<?php	return array ( 'catid' => array ( 'id' => '21', 'moduleid' => '4', 'field' => 'catid', 'name' => '栏目', 'tips' => '', 'required' => '1', 'minlength' => '1', 'maxlength' => '6', 'pattern' => '', 'errormsg' => '必须选择一个栏目', 'class' => '', 'type' => 'catid', 'setup' => '', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '0', 'status' => '1', 'issystem' => '1', ), 'title' => array ( 'id' => '22', 'moduleid' => '4', 'field' => 'title', 'name' => '标题', 'tips' => '', 'required' => '1', 'minlength' => '1', 'maxlength' => '80', 'pattern' => '', 'errormsg' => '标题必须为1-80个字符', 'class' => '', 'type' => 'title', 'setup' => 'array (
  \'thumb\' => \'1\',
  \'style\' => \'1\',
  \'size\' => \'55\',
)', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '0', 'status' => '1', 'issystem' => '1', ), 'keywords' => array ( 'id' => '23', 'moduleid' => '4', 'field' => 'keywords', 'name' => '关键词', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '80', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'text', 'setup' => 'array (
  \'size\' => \'55\',
  \'default\' => \'\',
  \'ispassword\' => \'0\',
  \'fieldtype\' => \'varchar\',
)', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '2', 'status' => '1', 'issystem' => '1', ), 'description' => array ( 'id' => '24', 'moduleid' => '4', 'field' => 'description', 'name' => 'SEO简介', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'textarea', 'setup' => 'array (
  \'fieldtype\' => \'mediumtext\',
  \'rows\' => \'4\',
  \'cols\' => \'55\',
  \'default\' => \'\',
)', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '3', 'status' => '1', 'issystem' => '1', ), 'pic' => array ( 'id' => '41', 'moduleid' => '4', 'field' => 'pic', 'name' => '多图', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '0', 'errormsg' => '', 'class' => '', 'type' => 'images', 'setup' => 'array (
  \\\'default\\\' => \\\'\\\',
  \\\'upload_maxnum\\\' => \\\'20\\\',
  \\\'upload_maxsize\\\' => \\\'20\\\',
  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',
  \\\'watermark\\\' => \\\'0\\\',
  \\\'more\\\' => \\\'0\\\',
)', 'ispost' => '0', 'unpostgroup' => '', 'listorder' => '9', 'status' => '1', 'issystem' => '0', ), 'content' => array ( 'id' => '25', 'moduleid' => '4', 'field' => 'content', 'name' => '内容', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'editor', 'setup' => 'array (
  \'toolbar\' => \'full\',
  \'default\' => \'\',
  \'height\' => \'\',
  \'showpage\' => \'1\',
  \'enablekeylink\' => \'0\',
  \'replacenum\' => \'\',
  \'enablesaveimage\' => \'0\',
  \'flashupload\' => \'1\',
  \'alowuploadexts\' => \'\',
)', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '10', 'status' => '1', 'issystem' => '1', ), 'document' => array ( 'id' => '58', 'moduleid' => '4', 'field' => 'document', 'name' => '相关技术信息和下载PDF文档', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '0', 'errormsg' => '', 'class' => '', 'type' => 'file', 'setup' => 'array (
  \\\'size\\\' => \\\'30\\\',
  \\\'default\\\' => \\\'\\\',
  \\\'upload_maxsize\\\' => \\\'20\\\',
  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',
  \\\'more\\\' => \\\'0\\\',
)', 'ispost' => '0', 'unpostgroup' => '', 'listorder' => '12', 'status' => '1', 'issystem' => '0', ), 'createtime' => array ( 'id' => '26', 'moduleid' => '4', 'field' => 'createtime', 'name' => '发布时间', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'datetime', 'setup' => '', 'ispost' => '1', 'unpostgroup' => '3,4', 'listorder' => '93', 'status' => '1', 'issystem' => '1', ), 'hits' => array ( 'id' => '27', 'moduleid' => '4', 'field' => 'hits', 'name' => '点击次数', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '8', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'number', 'setup' => 'array (
  \'size\' => \'10\',
  \'numbertype\' => \'1\',
  \'decimaldigits\' => \'0\',
  \'default\' => \'0\',
)', 'ispost' => '1', 'unpostgroup' => '3,4', 'listorder' => '93', 'status' => '0', 'issystem' => '0', ), 'posid' => array ( 'id' => '28', 'moduleid' => '4', 'field' => 'posid', 'name' => '推荐位', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'posid', 'setup' => '', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '97', 'status' => '1', 'issystem' => '1', ), 'template' => array ( 'id' => '29', 'moduleid' => '4', 'field' => 'template', 'name' => '模板', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '', 'errormsg' => '', 'class' => '', 'type' => 'template', 'setup' => '', 'ispost' => '1', 'unpostgroup' => '3,4', 'listorder' => '98', 'status' => '1', 'issystem' => '1', ), 'status' => array ( 'id' => '30', 'moduleid' => '4', 'field' => 'status', 'name' => '状态', 'tips' => '', 'required' => '0', 'minlength' => '0', 'maxlength' => '0', 'pattern' => '0', 'errormsg' => '', 'class' => '', 'type' => 'radio', 'setup' => 'array (
  \\\'options\\\' => \\\'发布|1
暂停发布|0\\\',
  \\\'fieldtype\\\' => \\\'tinyint\\\',
  \\\'numbertype\\\' => \\\'1\\\',
  \\\'labelwidth\\\' => \\\'75\\\',
  \\\'default\\\' => \\\'1\\\',
)', 'ispost' => '1', 'unpostgroup' => '', 'listorder' => '99', 'status' => '1', 'issystem' => '1', ), );?>