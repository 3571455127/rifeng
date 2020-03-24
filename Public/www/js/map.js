$(function () {

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
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        }
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

(function () {
    function hScroll(options) {
        var self = this;
        //$.extend(defaults, options);
        self = Object.assign(self, {
            nav1: '', //导航栏
            nav2: '', //需要监听的内容
            check: '', //选中样式
        }, options);
        self.init();
    }

    hScroll.prototype = {
        init: function () {
            var self = this,
                arr = [],
                kdiv = $(self.nav2);
            for (var i = 0; i < kdiv.length; i++) {
                arr.push($(kdiv[i]).offset().top);
            }
            self.sctopFun(arr);
            $(window).scroll(function (e) {
                self.sctopFun(arr);
            });
            $(self.nav1).click(function (e) {
                $('body,html').animate({
                    scrollTop: arr[$(this).index()] + 'px'
                });
            });
        },
        sctopFun: function (arr) {
            var self = this;
            var scrollTop = document.body.scrollTop || document.documentElement.scrollTop || window
                .pageYOffset;
            var keys = 0,
                flag = true;
            for (var i = 0; i < arr.length; i++) {
                keys++;
                if (flag) {
                    if (scrollTop >= arr[arr.length - keys] - 300) {
                        $(self.nav1).eq(arr.length - keys).addClass(self.checkClass).siblings()
                            .removeClass(self.checkClass);
                        flag = false;
                    } else {
                        flag = true;
                    }
                }
            }
        },
    }
    window.hScroll = hScroll;
}());


