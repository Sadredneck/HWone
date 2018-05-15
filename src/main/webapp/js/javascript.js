$(document).ready(function() {
    $('#userName').blur(function() {
        $.ajax({
            url : 'lemain',
            data : {
                userName : $('#userName').val()
            },
            success : function(responseText) {
                $('#ajaxGetUserServletResponse').text(responseText);
            }
        });
    });
});