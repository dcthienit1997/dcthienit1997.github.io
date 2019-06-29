$(window).on("load", function () {

    //preloader
    $('#preloader').delay(550).fadeOut('slow');
    $('body').delay(550).css({
        'overflow': 'visible'
    });

});
$(document).ready(function($) {

    if($(window).width() > 1170) {
        var headerHeight = $('.box-header').height();
        console.log(headerHeight + "_headerHeight");
        $(window).on("scroll", {previousTop: 0}, function() {
            var currentTop = $(window).scrollTop();
            console.log(currentTop + "_currentTop");
            if (currentTop < this.previousTop) {
                if (currentTop > 0 && $('.box-header').hasClass('is-fixed')) {
                    $('.box-header').addClass('is-visible');
                    $('.blur').addClass('is-visible');
                } else {
                    $('.box-header').removeClass('is-visible is-fixed');
                    $('.blur').removeClass('is-visible is-fixed');
                }
            } else {
                $('.box-header').removeClass('is-visible');
                $('.blur').removeClass('is-visible');
                if (currentTop > headerHeight && !$('.box-header').hasClass('is-fixed')) {
                    $('.box-header').addClass('is-fixed');
                    $('.blur').addClass('is-fixed');
                }
            }
            this.previousTop = currentTop;
        })
    }
});

// open/close primary navigation
$('.box-primary-nav-trigger').on('click', function() {
    $('.box-menu-icon').toggleClass('is-clicked');
    $('.box-header').toggleClass('menu-is-open');
    console.log('Click box-primary-nav-trigger');
    if($('.box-primary-nav').hasClass('is-visible')) {
        $('.box-primary-nav').removeClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
            $('body').removeClass('overflow-hidden');
        });
    } else {
        $('.box-primary-nav').addClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
            $('body').addClass('overflow-hidden');
        });	
    }

});
