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
	<?php if(APP_LANG): parse_str($_SERVER['QUERY_STRING'],$urlarr); unset($urlarr[l]); $url='index.php?'.http_build_query($urlarr); ?>
		<?php if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$langvo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($url); ?>&l=<?php echo ($langvo["mark"]); ?>" <?php if($langvo[mark]==$_SESSION['YP_lang']): ?>class="on"<?php endif; ?>><?php echo ($langvo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
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


<script type="text/javascript">

  function checknode(obj)
  {
      var chk = $("input[type='checkbox']");
      var count = chk.length;
      var num = chk.index(obj);
      var level_top = level_bottom =  chk.eq(num).attr('level');
      for (var i=num; i>=0; i--)
      {
              var le = chk.eq(i).attr('level');
              if(eval(le) < eval(level_top))
              {
                  chk.eq(i).attr("checked",true);
                  var level_top = level_top-1;
              }
      }
      for (var j=num+1; j<count; j++)
      {
              var le = chk.eq(j).attr('level');
              if(chk.eq(num).attr("checked")=='checked') {

                  if(eval(le) > eval(level_bottom)) chk.eq(j).attr("checked",true);
                  else if(eval(le) == eval(level_bottom)) break;
              }
              else {
                  if(eval(le) > eval(level_bottom)) chk.eq(j).attr("checked",false);
                  else if(eval(le) == eval(level_bottom)) break;
              }
      }
  }
</script>
<style>.mainnav_title{display:none;}span.w1{float:left;width:89px}</style>
<form id="myform" name="myform" action="<?php echo U('Access/insert');?>" method="post">
<input type="hidden" id="rid" name="rid" value="<?php echo ($rid); ?>" />
<div class="pad-lr-10">
<div class="table-list">
    <table width="100%" cellspacing="0"  style="border:1px solid #ccc;" id="dnd-example">
	<tbody>
	<tr>
		<td width=100 bgcolor="#CBE0F6">
		<input type='checkbox' name='nid[1]' value='1'  level='0' <?php if(array_key_exists(1,$alist)) : ?>checked<?php endif;?>  onclick='javascript:checknode(this);' /><?php echo ($topnode[0][title]); ?>
		</td>
		<td bgcolor="#CBE0F6"></td>
	</tr>
	<?php if(is_array($node)): $i = 0; $__LIST__ = $node;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><tr>
		<td  colspan="2" bgcolor="#F0F5FB" align="center" height="40"><b><?php echo ($r[groupinfo][name]); ?></b></td>
		</tr>
			<?php if(is_array($r[data])): $i = 0; $__LIST__ = $r[data];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$rr): $mod = ($i % 2 );++$i; if($rr[level]==2): ?><tr>
			<td style='padding-left:15px;' bgcolor="#F8FAFC"><input type='checkbox' name='nid[<?php echo ($rr["id"]); ?>]' value='<?php echo ($rr["id"]); ?>'  level='<?php echo ($rr["level"]); ?>' <?php echo ($rr["selected"]); ?>  onclick='javascript:checknode(this);' />&nbsp;<?php echo ($rr["title"]); ?>
			</td>

			<td><?php if(is_array($node[$rr[groupid]][data])): $i = 0; $__LIST__ = $node[$rr[groupid]][data];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$rrr): $mod = ($i % 2 );++$i; if($rrr[pid]==$rr[id]): ?><span class="w1"><input type='checkbox' name='nid[<?php echo ($rrr["id"]); ?>]' value='<?php echo ($rrr["id"]); ?>'  level='<?php echo ($rrr["level"]); ?>' <?php echo ($rrr["selected"]); ?>  onclick='javascript:checknode(this);' /> <?php echo ($rrr["title"]); ?> &nbsp;</span><?php endif; endforeach; endif; else: echo "" ;endif; ?></td>

			</tr><?php endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
	<input type="hidden" name="isajax" value="1" />
	<input name="dosubmit" type="submit" value="1" class="hidden" id="dosubmit">
	</tbody>
    </table>
</div>
</div>
</form></div>

</body>
</html>