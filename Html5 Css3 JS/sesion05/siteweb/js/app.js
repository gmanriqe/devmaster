$(document).ready(function(){
    $('.works_image').not(":first").hide();

    var containerImage = $('.work_item');
    $('.work_item').on('click',function(){
        var valueSelected = $(this).attr('id');
        $('.work_item').removeClass('active');

        $(this).addClass('active');

        var imageShow = $('.works_image');
        $.each(imageShow, function (i, e) { 
            var image = $(e).data();
            var imageNumber = image.number;
            
            // debugger
            if(valueSelected == imageNumber) {
                imageShow.hide()
                $(this).show();
            }
        });
    })

    // owl carousel
    $(".owl-carousel").owlCarousel({
        // stagePadding: 20,
        loop: true,
        responsiveClass: true,
        // margin: 15,
        responsive: {
            0: {
                items: 1,
                dots: true,
            },
            992: {
                items: 2,
                dots: false,
                nav: true
            }
        }
    });

    // scroll
    $(window).on('scroll',function(){
        var sizeTop = $(window).scrollTop();
        if( sizeTop > 700){
            $('.scrollTop').removeClass('display-scroll');
        }else {
            $('.scrollTop').addClass('display-scroll');
        }
    })

    $('.scrollTop').on('click',function(){
        $('html, body').animate({ scrollTop: 0 }, 1000 );
    })

    $('.nav-link').on('click',function(){
        var link = $(this).attr('href');
        // console.log($(this));
        /* .stop() para parar cualquier animacion 
        que este ocurriendo antes en este caso la animacion anterior */
        $('html, body').stop().animate({ scrollTop: $(link).offset().top },1000)
    })
})
