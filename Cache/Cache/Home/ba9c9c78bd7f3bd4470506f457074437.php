<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta name="viewport"
          content="width=device-width, user-scalable=no,
          initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>

    <meta name="keywords" content="<?php echo ($seo_keywords); ?>"/>
    <meta name="description" content="<?php echo ($seo_description); ?>"/>
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>
    <!-- css-->
    <link rel="stylesheet" href="__PUBLIC__/wap/css/swiper-3.3.1.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/bootstrap.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/base.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/main.css">

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TNMWNT9');</script>
<!-- End Google Tag Manager -->	
	
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TNMWNT9"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- 头部 -->
    <header>
        <!-- 按钮 -->
        <div class="toolbar">
            <a href="/index.php" class="logo"><img src="__PUBLIC__/wap/images/logo.png" alt="外贸服务站" style="margin: 5px 10px;"></a>
            <div id="open-sb" class="menu-button menu-left"><img src="__PUBLIC__/wap/images/menu-btn.png" alt="SEO优化"></div>
        </div>
    </header>
    <section class="sidebar">
        <nav>
            <h3>MENU</h3>
            <ul>
                <li>
                    <a href="/index.php" >HOME</a>
                </li>
                <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(0)==$r["parentid"] ) :++$n; if($r[catname] != 'THANKS' ): ?><li class="drop-cell">
                    <a href="<?php echo ($r["url"]); ?>" ><?php echo ($r["catname"]); ?></a>
                    <?php if($r[child] == 1) : ?>
                    <div class="menu-btn"></div>
                    <div class="drop-down">
                        <?php $n=0;foreach($Categorys as $key=>$rs):if($n<99) :if( intval($r[id])==$rs["parentid"] ) :++$n;?><div class="items">
                            <a href="<?php echo ($rs["url"]); ?>"><?php echo ($rs["catname"]); ?></a>
                        </div><?php endif; endif; endforeach;?>
                    </div>
                    <?php endif;?>
                </li><?php endif; endif; endif; endforeach;?>
            </ul>
        </nav>
    </section>

<!-- 中间内容 -->
    <!--轮播图-->
    <div class="index">
        <div class="swiper-container swiper-container1">
            <div class="swiper-wrapper">
                
 <?php  $_result=M('Slide_data')->where(" status=1 and  fid=2 ")->order(" listorder ASC ,id DESC ")->limit("5")->select();;if ($_result): $i=0;foreach($_result as $key=>$r):$i++;$mod = ($i % 2 );parse_str($r['data'],$r['param']);?>
 <div class="swiper-slide"><img src="<?php echo ($r["pic"]); ?>"alt=""></div>
<?php endforeach; endif;?>
            </div>
            <!-- 如果需要分页器 -->
            <div class="swiper-pagination"></div>

        </div>
    </div>

    <!--关于我们-->
        <div class="index_about">
            <img src="__PUBLIC__/wap/images/about.jpg" alt="" />
            <div>
                <h4>ABOUT US</h4>
                <p>GUANGDONG METAL FORMING MACHINE WORKS CO.,LTD is a forging equipment manufacturer integrating professional design, research and development, manufacturing and service in South China. Is the first batch of domestic forging industry through ISO9001 enterprises, and has the "national backbone enterprise for forging equipment" and "national export bases", "national high-tech enterprises" more than ten honors.</p>
            </div>
            <br/>
            <a class="more" href="/about.html">VIEW MORE</a>
        </div>
        
    <!--首页产品列表-->
    <div class="index_content">
        <div class="index_pro" >
            <h4 class="bioati">PRODUCTS</h4>
            <div class="pro_list">
                <div>
                    <h4 class="biaoti_h4 active">PUNCHING MACHINE<span></span></h4>
                    <h4 class="biaoti_h4">HYDRAULIC PRESS<span></span></h4>
                </div>
                <ul class="pro_list_ul" >
                    
                </ul>
                <ul class="pro_list_ul" style="display: none;">
                    
                </ul>
                <a class="more" href="/product.html">VIEW MORE</a>
            </div>
        </div>
        <!--首页案例-->
        <div class="case_list">
            <h4 class="bioati">CASES</h4>
            <ul class="case_list">
                <?php  $_result=M("Page")->field("id,catid,url,title,title_style,keywords,description,thumb,createtime")->where(" 1  AND status=1  AND catid=77")->order("id asc")->limit("2")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><li>
                    <img src="<?php echo ($r["thumb"]); ?>" alt="" />
                    <a href="<?php echo ($r["url"]); ?>">
                        <h5><?php echo ($r["title"]); ?></h5>
                    </a>
                </li><?php endforeach; endif;?>            
            </ul>
            <a class="more" href="/cases.html">VIEW MORE</a>
        </div>
        
        <!--新闻列表-->
        <div class="index_new">
            <h4 class="bioati">NEWS</h4>
            <ul class="new_ul">
                
            </ul>
            <a class="more" href="/news.html">VIEW MORE</a>
        </div>
        
        
    </div>
 <!--版权-->
    <div class="banquan">
        <div class="banquan_top">
            <img src="__PUBLIC__/wap/images/logo.png" alt="" />
            <div>
                <p><img src="__PUBLIC__/wap/images/index_icon1.png" alt="" /></p>
                <p><img src="__PUBLIC__/wap/images/index_icon2.png" alt="" /></p>
                <p><img src="__PUBLIC__/wap/images/index_icon3.png" alt="" /></p>
                <p><img src="__PUBLIC__/wap/images/index_icon4.png" alt="" /></p>
                <p><img src="__PUBLIC__/wap/images/index_icon5.png" alt="" /></p>
                <p><img src="__PUBLIC__/wap/images/index_icon6.png" alt="" /></p>
            </div>

        </div>
        <h4><?php echo ($cop); ?></h4>

    </div>
    <!-- 底部浮动导航 -->
    <div class="float-menu">
        <div class="container-fluid">
            <div class="row">
                <!-- 选中 active -->
                <div class="col-xs-3 <?php if(MODULE_NAME == 'Index') : ?>active<?php endif;?>">
                    <a href="/index.php">
                        <img src="__PUBLIC__/wap/images/icon1.png" alt="">
                        <p>HOME</p>
                    </a>
                </div>
                <div class="col-xs-3 <?php if($bcid==73) : ?>active<?php endif;?>">
                    <a href="/product.html">
                        <img src="__PUBLIC__/wap/images/icon.png" alt="">
                        <p>PRODUCTS</p>
                    </a>
                </div>
                <div class="col-xs-3 <?php if($bcid==74) : ?>active<?php endif;?>">
                    <a href="/about.html">
                        <img src="__PUBLIC__/wap/images/icon3.png" alt="">
                        <p>ABOUT US</p>
                    </a>
                </div>
                <div class="col-xs-3 <?php if($bcid==78) : ?>active<?php endif;?>" style="border: 0">
                    <a href="/contact.html">
                        <img src="__PUBLIC__/wap/images/icon4.png" alt="">
                        <p>CONTACT</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <img class="back_top" src="__PUBLIC__/wap/images/top.png" alt="">

</body>
<script src="__PUBLIC__/wap/js/jquery-2.2.0.min.js"></script>
<script src="__PUBLIC__/wap/js/jquery.simplesidebar.js"></script>
<script src="__PUBLIC__/wap/js/swiper-3.3.1.min.js"></script>
<script src="__PUBLIC__/wap/js/main.js"></script>
<script>
    var mySwiper1 = new Swiper('.swiper-container1', {
        loop: true,
        autoplay: 3000,
        pagination: {
            el: '.swiper-pagination'
        }
    })

</script>
<script>
    $('.pro_de img').eq(0).click(function(){
        var path1=$(".pro_de img").eq(0).attr("src");
        var url1 = 'http://<?php echo $_SERVER["HTTP_HOST"]?>'+path1;
        window.open(url1,'_blank');
    });

    $('.pro_de img').eq(1).click(function(){
        var path2=$(".pro_de img").eq(1).attr("src");
        var url2 = 'http://<?php echo $_SERVER["HTTP_HOST"]?>'+path2;
        window.open(url2,'_blank');
    });
</script>
</html>