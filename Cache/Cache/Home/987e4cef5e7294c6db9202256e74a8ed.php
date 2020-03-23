<?php if (!defined('THINK_PATH')) exit();?>
<!-- 
<div class="mianbao">
    <div class="mb_dao">
        <img src="__PUBLIC__/www/images/home-icon.png" alt="" onclick="window.open('http://<?php echo $_SERVER['HTTP_HOST']?>','_self');" />
    </div>
</div>

<div class="contact" style="background: #ffffff;margin-top: 150px;padding: 80px 0">
    <h4 style="height: 30px;">Thanks for your inquiry!</h4>
    <div class="contact_center">
        <div class="center_left" style="text-align: center;width: 100%;">
            <p>Our Professional Team Will Contact With You In 24 Hours.</p>
        </div>

    </div>
    <div class="map_div">
        <iframe src="http://www.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d3677.8552198953444!2d113.23522731543332!3d22.807827985062172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340248e1962a1313%3A0x32246cb8177d4ac2!2z5bm_5Lic55yB5L2b5bGx5biC6aG65b635Yy66L-e5a6J57q_!5e0!3m2!1szh-CN!2scn!4v1539765743992" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>

</div>
<div class="top_img">
  <img src="__PUBLIC__/www/images/product_bander.jpg" alt="" />
</div> -->
<style>
    .thank {
        padding: 191px 0;
        text-align: center;
    }

    .thank h5,
    .thank p {
        line-height: 1.4;
        font-size: 24px;
        padding-bottom: 20px;
    }

    .thank .back {
        padding-left: 10px;
        width: 32px;
        max-width: 100%;
        height: auto;
        cursor: pointer;
    }

    #sec {
        color: #fe641d;
    }
</style>
<div class="thank">
    <div class="container">
        <div class="row">
            <h5>Thanks for your inquiry!</h5>
            <p>Our Professional Team Will Contact With You In 24 Hours</p>
            <a class="link" href="/" onclick="history.go(-1)"><span id="sec">5</span>s Back Home</a>
            <img class="back" src="__PUBLIC__/www/images/back.png" alt="back" onClick="javascript :history.go(-1);" />
        </div>
    </div>
</div>

<script src="__PUBLIC__/www/js/jquery.js"></script>
<script>
    $(function () {
        setTimeout("lazyGo();", 1000);
    });

    function lazyGo() {
        var sec = $("#sec").text();
        $("#sec").text(--sec);
        if (sec > 0)
            setTimeout("lazyGo();", 1000);
        else

            javascript: history.back(-1);
    }
</script>