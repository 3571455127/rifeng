$(function () {

    // css3
    new WOW().init();


    var result = window.matchMedia('(max-width:418px)');
    var result2 = window.matchMedia('(max-width:768px)');
    var result3 = window.matchMedia('(max-width:992px)');
    if (result.matches) {
        $('.bqd').scrollLeft($('.bqd')[0].scrollWidth);

    } else if (result2.matches) {
        $('.bqd').scrollLeft($('.bqd')[0].scrollWidth);

    } else if (result3.matches) {
        $('.bqd').scrollLeft($('.bqd')[0].scrollWidth);

    } else {
        console.log("大屏幕(>1200)");
    }

    // 轮播
    var swiper = new Swiper('.swiper-container', {
        autoplay: true,
        speed: 1200,
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });


    $("nav li").click(function () {
        $(this).addClass("actives").siblings().removeClass('actives');
    })

    // 返回顶部
    $(window).scroll(function () {
        if ($(window).scrollTop() > 10) {
            $(".goTop").fadeIn(1000);

        } else {
            $(".goTop").fadeOut(1000);
        }
    });
    $(".goTop").click(function () {
        $("html,body").animate({
            scrollTop: 0
        }, 500);
    });

    var windowWidth = $(window).width();
    if (windowWidth >= 768) {
        $(window).scroll(function () {
            if ($(window).scrollTop() > 10) {
                $("header").addClass("header-top");

            } else {
                $("header").removeClass("header-top");
            }
        })
    }


    $(".nav li").click(function () {
        $(this).parent().parent().removeClass("in");
    })
})
// 展开
$(function () {
    var Accordion = function (el, multiple) { this.el = el || {}; this.multiple = multiple || false; var links = this.el.find('.link'); links.on('click', { el: this.el, multiple: this.multiple }, this.dropdown) }
    Accordion.prototype.dropdown = function (e) { var $el = e.data.el; $this = $(this), $next = $this.next(); $next.slideToggle(); $this.parent().toggleClass('open'); if (!e.data.multiple) { $el.find('.submenu').not($next).slideUp().parent().removeClass('open'); }; }
    var accordion = new Accordion($('#accordion'), false);
});

var submitcount2 = 0;

function beforeSubmit2(form) {

    if (form.name.value == '') {
        alert('Name can not be empty');
        form.name.focus();
        return false;
    } else if (form.email.value == '') {
        alert('Please enter the correct email format');
        form.email.focus();
        return false;
    } else if (form.email.value.indexOf('@') < 0) {
        alert('The email is wrong');
        form.email.focus();
        return false;
    } else if (form.message.value == '') {
        alert('The message can not be empty');
        form.message.focus();
        return false;
    } else {

        if (submitcount2 == 0) {
            submitcount2++;
            return true;
        } else {
            alert("Message is being sent, please wait!");
            return false;

        }
    }

}


