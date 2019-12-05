$(function(){
    
    //GNB
    var viewH = $(document).height();
    $('.gnb_toggle').click(function(){
        $(this).toggleClass('on');
        $('.header_top').toggleClass('on');
        $('.gnb_bg').fadeToggle(100);
        $(this).siblings('.gnb').toggleClass('off');
        $('.contents').toggleClass('expand');
    })
    $('.gnb_bg').click(function(){
        $('.header_top').removeClass('on');
        $('.gnb').removeClass('off');
        $('.gnb_bg').fadeOut(100);
    });
    $(window).resize(function(){
        $('.header_top').removeClass('on');
        $('.gnb').removeClass('off');
        $('.gnb_bg').fadeOut(100);
        $('.contents').removeClass('expand');
        $('.gnb_toggle').removeClass('on');
    })

    $('.gnb_menu ul > li.on').parent('ul').parent('li').addClass('active');
    $('.gnb_menu > li > button').click(function(){
        if($(this).parent('li').hasClass('active')){
            $(this).parent('li').removeClass('active');
            $(this).siblings('ul').slideUp(300);
        }else{
            $(this).parent('li').addClass('active');
            $(this).siblings('ul').slideDown(300);
        }
    })
    
    
    
    //date picker1
    $( ".datepicker" ).datepicker();
    
    
    $('.tab1 li').click(function(){
        $(this).addClass('on');
        $(this).siblings('li').removeClass('on');
    })
    
    
    //popup
    $('.popup .pop_close, .popup .popup_bg').click(function(){
        $(this).parents('.popup').fadeOut(300);
    })

    $('#btn_member_register').click(function(){
        $('#pop_member_register').fadeIn(300);
    })
    $('.btn_applicant_edit').click(function(){
        $('#pop_applicant_edit').fadeIn(300);
    })
    
    
    //Tab
    $('.tab3 li').click(function(){
        $(this).addClass('on');
        $(this).siblings('li').removeClass('on');
        var tabIndex = $(this).index();
        $('.tab3_wrap .tab3_cont').eq(tabIndex).show();
        $('.tab3_wrap .tab3_cont').eq(tabIndex).siblings('.tab3_cont').hide();
    })
    
    
    $('.btn_img_preview').click(function(){
        $(this).parents('.attach_preview_img').addClass('active');
        $('.attach_preview_img.active .thumb_box_zoom').click(function(){
            $(this).parents('.attach_preview_img').removeClass('active');
        })
    })
    
    
    
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items:1,
        loop:true,
        margin:10,
        autoplay:false,
        autoplayTimeout:1000,
        autoplayHoverPause:false,
        pagination: false,
        nav:true,
        navText: [
           "<button class='btn-prev'></button>",
           "<button class='btn-next'></button>"
        ]
    });
    
    
    
    

})

