<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Rian Geofandy Tan, rian.geofandy.tan@gmail.com" />
    <meta name="description" content="<?php echo ($seo_description); ?>" />
    <meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>
    <link rel="manifest" href="assets/img/site.webmanifest" />
    <link rel="mask-icon" href="__PUBLIC__/www/images/safari-pinned-tab.svg" color="#5bbad5" />
    <meta name="msapplication-TileColor" content="#2d89ef" />
    <meta name="theme-color" content="#0271b9" />
    <link rel="stylesheet" href="__PUBLIC__/www/css/bootstrap.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/font-awesome.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/swiper-4.5.0.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/main.css" />
    <link rel="stylesheet" href="__PUBLIC__/www/css/map.css">
    <script src="__PUBLIC__/www/js/jquery.js"></script>
    <script src="__PUBLIC__/www/js/bootstrap.min.js"></script>
    <script src="__PUBLIC__/www/js/swiper-4.5.0.min.js"></script>
    <script src="__PUBLIC__/www/js/main.js"></script>
    <script src="__PUBLIC__/www/js/map.js"></script>
    <style>
        body {
            position: relative;
            padding-top: 50px;
        }
    </style>
</head>

<body>

    <header>
        <div class="header-container">
            <div class="logo-container">
                <a href=""> <img src="__PUBLIC__/www/images/logo2.png" alt="logo" /></a>
            </div>
            <nav id="box">
                <ul>
                    <li class="actives"><a href="#home">Home</a></li>
                    <li><a class="" href="#working">Way of working</a></li>
                    <li><a href="#benifits">Benifits</a></li>
                    <li><a href="#contact">Contact us</a></li>
                </ul>
            </nav>
            <div id="hamburger">
                <span class="top-bar"></span>
                <span class="mid-bar"></span>
                <span class="bot-bar"></span>
            </div>
        </div>

    </header>



    <div class="main">
        <div id="home">
            <!-- swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <?php  $_result=M("slide_data")->field("*")->where("fid = 1 AND status=1 ")->order("id desc")->limit("5")->select();; if ($_result): $n=0;foreach($_result as $key=>$r):++$n;$mod = ($n % 2 );?><div class="swiper-slide"> <a href="<?php echo ($r["link"]); ?>" title="<?php echo ($r["title"]); ?>" target="_blank">
                        <img src="<?php echo ($r["pic"]); ?>" alt="<?php echo ($r["title"]); ?>"></a>
                    <div class="txt">
                        <?php echo ($r["description"]); ?>
                    </div>
                </div><?php endforeach; endif;?>
                <!-- <div class="swiper-slide"> <a href="" target="_blank"> <img src="__PUBLIC__/www/images/banner.png" alt=""></a></div> -->
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
        </div>
        </div>
        
        <!-- Way of working -->
        
        <div id="how-it-works" class="target-element">
            <h6  id="working"></h6>
            <div class="container" style="padding-top:5%">
                <div class="row">
               <?php getcatvar('page','id = 73','cont');?>
<!--                    <div class="col-lg-5 col-md-5 animate animate-down">
                        <div class="box">
                            <h3>Way of working </h3>
                            <p>
                                Safe Shield test process may vary from country to country. Here take Australia as an
                                example.
                            </p>
                            <p>
                                1.Check the piping system to see whether there is any leakage at the welding points,
                                valves
                                and
                                plugs, then install the Safe Shield device
                            </p>
                            <p>2.Login the APP and fill in the form</p>
                            <p>3.Pressure test stage: Select pressure test group, pressurize the system to setting
                                pressure
                                then
                                start test. The hydrostatic test has one round which lasts 30 mins. </p>
                            <p>4.When the pressure testing is completed, it will form a report and clicked to send a PDF
                                file to
                                tester's mailbox.</p>
                            <p>Pressure test process can be customized.</p>
                        </div>

                        <a href="#contact"><img src="/Public/www/images/contacts.png" alt=""></a>
                    </div>
                    <div class="col-lg-7 col-md-7">

                        <div class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                            <div class="btn-img">
                                <div class="img-box">
                                    <img src="/Public/www/images/video.png" alt="Video instruction" />
                                    <div class="hovers">
                                        <img class="btn-play" src="/Public/www/images/btns-play.png" alt="" />
                                    </div>
                                </div>

                            </div>
                        </div>

                         Modal 
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe width="100%" height="100%"
                                            src="https://www.youtube.com/embed/j6Mua8mybAY" frameborder="0"
                                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen=""></iframe>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>


            </div>

        </div>

        <!-- Benifits -->
        <h6 id="benifits"></h6>
        <div id="why-buy-one" class="target-element" data-before="#how-it-works">
            
            <div class="container">
               <?php getcatvar('page','id = 77','cont');?>
            </div>
        </div>

        <!-- map -->
        <div class="page-wrapper">
            <div class="container">
                <div class="row">
                    <div class="bqd col-lg-7 col-md-7 col-sm-12 col-xs-12">
                        <div id="cn-add">
                            <img src="__PUBLIC__/www/images/map.png" alt="cn">
                            
                            <?php  $_result=M("Article")->field("*")->where(" 1  AND status=1  AND catid=74")->order("listorder desc")->limit("20")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div class="cn-item po-bo main-team" style="bottom: <?php echo ($r["xz"]); ?>px; right: <?php echo ($r["yz"]); ?>px;"
                                id="x<?php echo ($r["id"]); ?>">
                                <span><i class="fa fa-map-marker icon"></i></span>
                                <div class="box xt<?php echo ($r["id"]); ?> xtt"><?php echo ($r["title"]); ?></div>
                            </div><?php endforeach; endif;?>

                        </div>

                    </div>

                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">

                        <ul id="accordion" class="accordion">
                            <?php  $_result=M("Article")->field("*")->where(" 1  AND status=1  AND catid=74")->order("listorder desc")->limit("20")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><li class="">
                                <div class="link b<?php echo ($r["id"]); ?>"><i class="fa fa-plus"></i><?php echo ($r["title"]); ?></div>
                                <?php echo ($r["cont"]); ?>
                            </li><?php endforeach; endif;?>

                        </ul>


                    </div>

                </div>
            </div>

        </div>
        <div>
 <!-- footer -->
 <footer>
    
    <div class="container">
        <div class="row">
            <h6 id="contact"></h6>
            <div class="footer-content clearfix">
                <div class="txt col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="top clearfix">
                        <div class="box-img col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            <img class="" src="__PUBLIC__/www/images/logo.png" alt="">
                        </div>

                        <div class="company col-lg-10 col-md-10 col-sm-10 col-xs-10">
                            <p><?php echo ($cnname); ?></p>
                            <p><?php echo ($site_name); ?></p>
                        </div>
                    </div>
                    <div class="text col-lg-7">
                        <div class="title">Lorem Ipsum</div>
                        <p>
                           <?php getcatvar('page','id = 78','cont');?>
                        </p>
                    </div>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-0 col-xs-0"></div>
                <div class="form col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <form name="form" method="post" onsubmit="return beforeSubmit2(this);" action="index.php?g=Home&a=message" enctype="multipart/form-data">
                        <input type="hidden" name="lang" value="<?php echo ($Lang); ?>">
                        <div class="box">
                            <p>Name:</p>
                            <input type="text" name="name" placeholder="">
                        </div>
                        <div class="box">
                            <p>Email:</p>
                            <input type="text" name="email" placeholder="">
                        </div>
                        <div class="box">
                            <p>Message for max Prefab:</p>
                            <input type="text" name="message" placeholder="">
                        </div>
                        <input type="submit" value="Send" class="submit-btn">
                    </form>
                </div>
            </div>
            <div class="info clearfix">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12"><img src="__PUBLIC__/www/images/address.png"
                        alt=""><?php echo ($address); ?></div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12"><img src="__PUBLIC__/www/images/phone.png" alt=""><?php echo ($phone); ?>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12"><img src="__PUBLIC__/www/images/eamil.png" alt="">
                    <a href="mailto:<?php echo ($email); ?>" class="emails" target="_blank"><?php echo ($email); ?></a>
                </div>

            </div>
            <div class="internet"><a href="<?php echo ($wwwurl); ?>" target="_blank"><?php echo ($wwwurl); ?></a></div>
        </div>
    </div>

    <div class="goTop" style="display: block;">
        <i class="topIcon"></i>
        <p>TOP</p>
    </div>
</footer>
        </div>

    </div>
    <script>
        
//alert(1);
    // map
        $(function () {
    <?php  $_result=M("Article")->field("*")->where(" 1  AND status=1  AND catid=74")->order("listorder desc")->limit("20")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?>$('#x<?php echo ($r["id"]); ?>').click(function () {
        $('.b<?php echo ($r["id"]); ?>').click();
        $(".xtt").css({'opacity':'0','z-index':'0'});
        $(".xt<?php echo ($r["id"]); ?>").css({'opacity':'1','z-index':'99'});
    });
    $(".b<?php echo ($r["id"]); ?>").click(function () {
        $("#x<?php echo ($r["id"]); ?>").siblings().removeClass('active-icon');
        $("#x<?php echo ($r["id"]); ?>").addClass("active-icon");
//        alert(<?php echo ($r["id"]); ?>);
        $(".xtt").css({'opacity':'0','z-index':'0'});
        $(".xt<?php echo ($r["id"]); ?>").css({'opacity':'1','z-index':'99'});
        
    });<?php endforeach; endif;?>
        })
    </script>

</body>
<script>
    new hScroll({
    nav1: '#box ul>li', //导航对应的元素
    nav2: '.main>div', //监听的元素
    checkClass: 'actives' //选中的样式
});

</script>
</html>