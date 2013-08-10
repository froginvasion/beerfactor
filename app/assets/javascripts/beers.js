$(document).ready(function(){
    $('#beers').on('click','.pagination a',function(){
        $.getScript($(this).attr('href'));
        return false;
    });
});