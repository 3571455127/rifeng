<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo C('DEFAULT_CHARSET');?>" />
<title><?php echo L('welcome'); echo L('system_name');?></title>
<link rel="stylesheet" type="text/css" href="__ROOT__/Public/Css/style.css" />
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.min.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.artDialog.js?skin=default"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/iframeTools.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.form.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.validate.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/MyDate/WdatePicker.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.colorpicker.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/my.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/swfupload.js"></script>

    <meta name="google-translate-customization" content="108d9124921d80c3-80e20d618ff053c8-g4f02ec6f3dba68b7-c"></meta>
<script language="JavaScript">
<!--
var ROOT =	 '__ROOT__';
var URL = '__URL__';
var APP	 =	 '__APP__';
var PUBLIC = '__PUBLIC__';
function confirm_delete(url){
	art.dialog.confirm("<?php echo L('real_delete');?>", function(){location.href = url;});
}
$(window.parent.$("#main_loading").hide());
//-->
</script>
</head>
<body width="100%">
<div id="result" class="result none"></div>
<div class="mainbox">

<?php if(empty($_GET['isajax'])): ?><div id="nav" class="mainnav_title">

	<div id="lang">
	<?php if(APP_LANG): parse_str($_SERVER['QUERY_STRING'],$urlarr); unset($urlarr[l]); $url='index.php?'.http_build_query($urlarr); foreach($Lang as $k=>$v){ $arrlang[] =$v['mark']; } $strlang = implode(',',$arrlang); ?>
		<?php if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$langvo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($url); ?>&l=<?php echo ($langvo["mark"]); ?>" <?php if($langvo[mark]==$_SESSION['YP_lang']): ?>class="on"<?php endif; ?>><?php echo ($langvo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>    
<?php if(in_array($action_name,array('add','edit'))) : ?>     
<style>
    .goog-te-banner-frame{display: none !important;}
</style>
<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: '<?php echo $strlang;?>', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<?php endif; endif; ?>
	</div>
	<ul><a href="<?php echo U($nav[bnav][model].'/'.$nav[bnav][action],$nav[bnav][data]);?>"><?php echo ($nav["bnav"]["name"]); ?></a>|
	<?php if(is_array($nav["nav"])): $n = 0; $__LIST__ = $nav["nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vonav): $mod = ($n % 2 );++$n; if($vonav[data][isajax]): if($n>1) : ?>|<?php endif;?><a href="javascript:void(0);" onclick="openwin('<?php echo ($vonav[action]); ?>','<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>','<?php echo ($vonav["name"]); ?>',600,440)"><?php echo ($vonav["name"]); ?></a>
	<?php else: ?>
	    <?php if($n>1) : ?>|<?php endif;?><a href="<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>"><?php echo ($vonav["name"]); ?></a><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul>
	</div>
    <script>
	var onurl ='?<?php echo ($_SERVER["QUERY_STRING"]); ?>';
	jQuery(document).ready(function(){
		$('#nav ul a ').each(function(i){
		if($('#nav ul a').length>1){
			var thisurl= $(this).attr('href');
			thisurl = thisurl.replace('&menuid=<?php echo cookie("menuid");?>','');
			if(onurl.indexOf(thisurl) == 0 ) $(this).addClass('on').siblings().removeClass('on');
		}else{
			$('#nav').hide();
		}
		});
		if($('#nav ul a ').hasClass('on')==false){
		$('#nav ul a ').eq(0).addClass('on');
		}
	});
	</script><?php endif; ?>


<form method='post'  id="myform" action="<?php if($action_name=='add'): echo U('Menu/insert'); else: echo U('Menu/update'); endif; ?>">
<table cellpadding=0 cellspacing=0 class="table_form" width="100%">
<tr>
	<td width="140"><?php echo L('menu_parent_menu');?>:</td>
	<td><SELECT   name="parentid">
	<option value="0"><?php echo L('menu_top_menu');?></option>
	<?php echo ($select_categorys); ?>
	</SELECT></td>
</tr>
<tr>
	<td><?php echo L('name');?>:</td>
	<td><input type="text" class="input-text"  name="name" value="<?php echo ($vo["name"]); ?>"  validate="required:true,cn_username:true, minlength:2, maxlength:20"></td>
</tr>
<tr>
	<td><?php echo L('menu_model');?>:</td>
	<td><input type="text" class="input-text" name="model" value="<?php echo ($vo["model"]); ?>"  validate="required:true,english:true, minlength:2, maxlength:20"></td>
</tr>
<tr>
	<td><?php echo L('menu_action');?>:</td>
	<td><input type="text" class="input-text"  name="action" value="<?php echo ($vo["action"]); ?>"  validate="english:true, minlength:2, maxlength:20"> <?php echo L('default');?>:index</td>
</tr>
<tr>
	<td><?php echo L('menu_option');?>:</td>
	<td><input type="text" class="input-text"  name="data" value="<?php echo ($vo["data"]); ?>"> <?php echo L('examples');?>:groupid=1&type=2</td>
</tr>
<tr>
	<td><?php echo L('menu_remark');?>:</td>
	<td><TEXTAREA   name="remark" rows="5" cols="57"><?php echo ($vo["remark"]); ?></textarea></td>
</tr>
<tr>
	<td><?php echo L('status');?>:</td>
	<td><SELECT name="status">
	<option value="1"<?php if(($vo["status"]) == "1"): ?>selected<?php endif; ?>><?php echo L('enable');?></option>
	<option value="0"<?php if(($vo["status"]) == "0"): ?>selected<?php endif; ?>><?php echo L('disable');?></option>
	</SELECT></td>
</tr>
<tr>
	<td><?php echo L('menu_type');?>:</td>
	<td><SELECT name="type">
	<option value="1"<?php if(($vo["type"]) == "1"): ?>selected<?php endif; ?>><?php echo L('menu_type1');?></option>
	<option value="2"<?php if(($vo["type"]) == "2"): ?>selected<?php endif; ?>><?php echo L('menu_type2');?></option>
	</SELECT></td>
</tr>
</table>
<div class="btn">
<?php if($vo[id]!=''): ?><input TYPE="hidden" name="id" value="<?php echo ($vo["id"]); ?>"><?php endif; ?>
<INPUT TYPE="submit"  value="<?php echo L('dosubmit');?>" class="button buttonBtn" >
<input TYPE="reset"  value="<?php echo L('reset');?>" class="button">
</div>
</form>
</div>

</body>
</html>