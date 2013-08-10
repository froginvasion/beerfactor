$(document).ready(function(){
    $('.pagination').on('click','a',function(){
        $.getScript($(this).attr('href'));
        return false;
    });
});