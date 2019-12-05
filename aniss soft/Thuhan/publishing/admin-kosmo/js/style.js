
$(document).ready(function(){
    
    //GNB
    var viewH = $(document).height();
    $('.gnb_toggle').click(function(){
        $(this).toggleClass('on');
        $('.header_top').toggleClass('on');
        $('.gnb_bg').fadeToggle(100);
        $(this).siblings('.gnb').toggleClass('off');
        $('.section').toggleClass('expand');
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
    $('.gnb_menu ul > li.on').parent('ul').css('display','block');
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
    

        
    /*ckeckbox*/
    $('.check_row').each(function(){
        $(this).click(function(){
            if($(this).is(':checked')){
                $(this).parents('tr').addClass('tr_checked');
            }else{
                $(this).parents('tr').removeClass('tr_checked');
            }
        })
    })
    
})
