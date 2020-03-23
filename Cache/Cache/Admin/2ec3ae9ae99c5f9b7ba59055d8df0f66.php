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



      <form id="myform" action="<?php if($action_name=='add'): echo U('User/insert'); else: echo U('User/update'); endif; ?>" method="post">
      	<table cellpadding=0 cellspacing=0 class="table_form" width="100%">
      	<tr>
		<td width="120"><?php echo L('username');?></td>
		<td><?php if($action_name=='add'): ?><input type="text" class="input-text"  name="username" validate="required:true,en_num:true, minlength:5, maxlength:20"/><?php else: echo ($vo['username']); endif; ?></td>
		</tr>
		<tr>
		<td><?php echo L('password');?></td><td><input type="password" id="pwd" name="pwd" class="input-text" validate=" <?php if($action_name=='add'): ?>required:true,<?php endif; ?> minlength:5, maxlength:20"/></td>
		</tr>
		<tr>
			<td><?php echo L('realname');?></td>
			<td><input type="text" class="input-text"  name="realname" value="<?php echo ($vo["realname"]); ?>" ></td>
		</tr>
		<tr>
			<td><?php echo L('email');?></td>
			<td><input type="text" class="input-text"  name="email" value="<?php echo ($vo["email"]); ?>" validate="required:true,email:true,remote: '<?php echo U('Login/checkEmail?userid='.$vo[id]);?>' , minlength:1, maxlength:40"></td>
		</tr>
		<tr>
		<td><?php echo L('user_is_enable');?></td>
		<td>
		<?php echo L('yes');?><input type="radio" name="status" value="1" <?php if(($vo['status']) == "1"): ?>checked="checked"<?php endif; ?> />
		<?php echo L('no');?><input type="radio" name="status" value="0" <?php if(($vo['status']) == "0"): ?>checked="checked"<?php endif; ?> />
		</td>
		</tr>
		<tr>
		<td valign="top"><?php echo L('user_group');?></td>
		<td>
		<select name="groupid">
		<?php if(is_array($rlist)): $i = 0; $__LIST__ = $rlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($i % 2 );++$i;?><option value="<?php echo ($row['id']); ?>" <?php if(($vo['groupid']) == $row['id']): ?>selected="selected"<?php endif; ?>><?php echo ($row['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
		</select>
		</td>
		</tr>
		<tr>
			<td><?php echo L('question');?></td>
			<td><input type="text" class="input-text"  name="question" value="<?php echo ($vo["question"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('answer');?></td>
			<td><input type="text" class="input-text"  name="answer" value="<?php echo ($vo["answer"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('sex');?></td>
			<td><input type="radio" id="" name="sex" value=1 <?php if(($vo["sex"]) == "1"): ?>checked<?php endif; ?> /> <?php echo L('sex1');?>&nbsp;<input type="radio" id="" name="sex" value=2 <?php if(($vo["sex"]) == "2"): ?>checked<?php endif; ?> /> <?php echo L('sex2');?> &nbsp;<input type="radio" id="" name="sex" value=1 <?php if(($vo["sex"]) == "0"): ?>checked<?php endif; ?> /><?php echo L('sex0');?></td>
		</tr>
		<tr>
			<td><?php echo L('telephone');?></td>
			<td><input type="text" class="input-text"  name="tel" value="<?php echo ($vo["tel"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('mobile');?></td>
			<td><input type="text" class="input-text"  name="mobile" value="<?php echo ($vo["mobile"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('fax');?></td>
			<td><input type="text" class="input-text"  name="fax" value="<?php echo ($vo["fax"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('web_url');?></td>
			<td><input type="text" class="input-text"  name="web_url" value="<?php echo ($vo["web_url"]); ?>"></td>
		</tr>
		<tr>
			<td><?php echo L('address');?></td>
			<td><input type="text" class="input-text"  name="address" value="<?php echo ($vo["address"]); ?>"></td>
		</tr>

		</table>

		<div class="btn">
		<?php if($action_name=='edit'): ?><input type="hidden" name="id" value="<?php echo ($vo['id']); ?>" />
		<input type="hidden" name="opwd" value="<?php echo ($vo['password']); ?>" /><?php endif; ?>
		<input type="hidden" name="forward" value="<?php echo ($_SERVER['HTTP_REFERER']); ?>" />
		<INPUT TYPE="submit"  value="<?php echo L('dosubmit');?>" class="button buttonBtn" >
		<input TYPE="reset"  value="<?php echo L('cancel');?>" class="button">
		</div>

      </form>
     </div>

</body>
</html>