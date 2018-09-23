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

})
