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



 <div id="infobox" >
 <a href="<?php echo U('Slide/index');?>" style="float:right;"><?php echo L(gobacklist);?></a>
 <?php echo ($slide[name]); ?> : <a href="<?php echo U('Slide/picmanage?fid='.$_GET[fid]);?>" class="ui-btn"><?php echo L('return');?> - <?php echo L('images_manage');?></a>
</div>


<form name="myform" id="myform" action="<?php if($action_name=='addpic'): echo U($module_name.'/insertpic'); else: echo U($module_name.'/updatepic'); endif; ?>" method="post">
<table cellpadding=0 cellspacing=0 class="table_form" width="100%">
	<tr>
		  <td width="120"><font color="red">*</font><?php echo L('title');?></td>
		  <td><input type="text" id="title" name="title" value="<?php echo ($vo["title"]); ?>" class="input-text" size="50" validate="required:true,cn_username:true, minlength:2, maxlength:20"/></td>
	</tr>
<tr>
		  <td width="120"><?php echo L('description');?></td>
		  <td>
       <?php echo $Form->editor(array('field'=>'description','setup'=>array('toolbar'=>'full','flashupload'=>'1')),$vo[description]);?> 
                  </td>
	</tr>
	<tr>
		  <td><?php echo L(link);?></td>
		  <td><input type="text" id="link" name="link" value="<?php echo ($vo["link"]); ?>" class="input-text" size="50" /></td>
	</tr>
	<tr>
		  <td><?php echo L(pic);?></td>
		  <td>
		   <div class="pic_box"  ><div id="pic_aid_box" style="display:none;"></div>
			<input type="text"  id="pic" name="pic"  value="<?php echo ($vo['pic']); ?>" class="input-text" size="40"/><input type="button" class="button" value="<?php echo L(upload);?>" onclick="javascript:swfupload('pic_uploadfile','pic','<?php echo L(uploadfiles);?>',1,1,0,10,'jpeg,jpg,png,gif',5,230,'<?php echo ($yourphp_auth); ?>',yesdo,nodo)" />  <a href="javascript:void(0);" onclick="showpicbox($('#pic').val());"> <?php echo L(view);?></a>
            <?php echo L('size');?>：<?php echo ($slide['width']); ?>*<?php echo ($slide['height']); ?>px
           </div>
            
		 </td>
	</tr>
	<tr>
		  <td><?php echo L(STATUS);?></td>
		  <td><?php echo Form::radio(array('field'=>'status','options'=>array('1'=>L('display_yes'),'0'=>L('display_no'))),$vo['status']);?></td>
	</tr>


</table>
<div  class="btn">
<?php if($vo['id']!=''): ?><input TYPE="hidden" name="id" value="<?php echo ($vo["id"]); ?>"><?php endif; ?>
<input TYPE="hidden" name="fid" value="<?php echo ($fid); ?>">
<INPUT TYPE="submit"  value="<?php echo L('dosubmit');?>" class="button buttonBtn" >
<input TYPE="reset"  value="<?php echo L('cancel');?>" class="button">
</div>
</form>
</div>

</body></html>

</body>
</html>