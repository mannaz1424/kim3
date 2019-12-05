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
    $('.gnb_menu ul > li.on').parent('ul').slideDown(300);
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
    
    
    
    

    
    
    

})

