$(function(){



    $('#beer_variety').on('change','form.rating_ballot', function() {
        $('form.rating_ballot').submit();
    });

    // Make stars glow on hover
    $('#beer_variety').on({mouseover: function(){
                $(this).prevAll().andSelf().addClass('glow');
            },
            mouseout: function(){
                $(this).siblings().andSelf().removeClass('glow');
            },
            click: function(){
                $(this).siblings().removeClass('bright');
                $(this).prevAll().andSelf().addClass('bright');
            }

        },'form.rating_ballot > label');


});