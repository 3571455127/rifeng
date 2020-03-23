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



<form method='post'  id="form1" action="<?php echo U('Config/dosite');?>">
<table width="100%"  cellpadding=0 cellspacing=0  class="table_form">
  <tr>
    <th width="120"><?php echo L('config_mail_md');?></th>
    <td class="y-bg">
     <input name="mail_type"   value="1" onclick="showsmtp(this)" type="radio"  <?php if($mail_type == 1): ?>checked<?php endif; ?>> <?php echo L('config_mail_smtp');?>
	 <input name="mail_type"  value="2" onclick="showsmtp(this)" type="radio"  <?php if($mail_type == 2): ?>checked<?php endif; ?>  <?php if(substr(strtolower(PHP_OS), 0, 3) == 'win') echo 'disabled'; ?>/> <?php echo L('config_mail_mailfun');?>
	 <input name="mail_type"   value="3" onclick="showsmtp(this)" type="radio"  <?php if($mail_type == 3): ?>checked<?php endif; ?>> sendmail
	</td>
  </tr>
  <tbody id="smtpconfig" style="">
  <tr>
    <th><?php echo L('config_mail_server');?></th>
    <td class="y-bg"><input type="text" class="input-text" name="mail_server" id="mail_server" size="30" value="<?php echo ($mail_server); ?>"/></td>
  </tr>
  <tr>
    <th><?php echo L('config_mail_port');?></th>
    <td class="y-bg"><input type="text" class="input-text" name="mail_port" id="mail_port" size="30" value="<?php echo ($mail_port); ?>"/></td>
  </tr>
  <tr>
    <th><?php echo L('config_mail_from');?></th>
    <td class="y-bg"><input type="text" class="input-text" name="mail_from" id="mail_from" size="30" value="<?php echo ($mail_from); ?>"/></td>
  </tr>
  <tr>
    <th><?php echo L('config_mail_auth');?></th>
    <td class="y-bg">
    <input name="mail_auth" id="mail_auth" value="1" type="radio" <?php if($mail_auth == 1): ?>checked<?php endif; ?>> <?php echo L('open_select');?>	<input name="mail_auth" id="mail_auth" value="0" type="radio" <?php if($mail_auth == 0): ?>checked<?php endif; ?> > <?php echo L('close_select');?></td>
  </tr>

	  <tr>
	    <th><?php echo L('config_mail_user');?></th>
	    <td class="y-bg"><input type="text" class="input-text" name="mail_user" id="mail_user" size="30" value="<?php echo ($mail_user); ?>"/></td>
	  </tr>
	  <tr>
	    <th><?php echo L('config_mail_password');?></th>
	    <td class="y-bg"><input type="password" class="input-text" name="mail_password" id="mail_password" size="30" value="<?php echo ($mail_password); ?>"/></td>
	  </tr>

 </tbody>

<tbody id="sendmailconfig" style="">
 <!-- <tr>
    <th><?php echo L('config_mail_sendmail');?></th>
    <td class="y-bg"><input type="text" class="input-text" name="mail_sendmail" id="mail_sendmail" size="30" value="<?php echo ($mail_sendmail); ?>"/></td>
  </tr> -->
 </tbody>

  <tr>
    <th><?php echo L('config_mail_test');?></th>
    <td class="y-bg"><input type="text" class="input-text" name="mail_to" id="mail_to" size="30" value=""/> <input type="button" class="button" onClick="javascript:test_mail();" value="<?php echo L('config_mail_testsed');?>"></td>
  </tr>
  </table>
<div class="btn">
<INPUT TYPE="submit"  value="<?php echo L('save');?>" class="button buttonBtn" >
<input TYPE="reset"  value="<?php echo L('reset');?>" class="button">
</div>
</form>
</div>
<script>
function showsmtp(obj){

	if(obj){
	var issmtp  = $(obj).val();
	}else{
	var issmtp = $("input[name=mail_type][checked]").val();
	}

	if(issmtp==1){
		$('#smtpconfig').show();
		$('#sendmailconfig').hide();
	}else if(issmtp==3){
		$('#smtpconfig').hide();
		$('#sendmailconfig').show();
	}else{
		$('#smtpconfig').hide();
		$('#sendmailconfig').hide();
	}
}
function test_mail(){

 	var mail_type =  $("input[name=mail_type][checked]").val();


    $.post('<?php echo U("Config/testmail");?>&mail_to='+$('#mail_to').val(),{mail_type:mail_type,mail_sendmail:$('#mail_sendmail').val(),mail_server:$('#mail_server').val(),mail_port:$('#mail_port').val(),mail_user:$('#mail_user').val(),mail_password:$('#mail_password').val(),mail_auth:$('#mail_auth').val(),mail_auth:$('#mail_auth').val(),mail_from:$('#mail_from').val()}, function(data){
	alert(data.info);
	},"json");

}
showsmtp();
</script>

</body>
</html>