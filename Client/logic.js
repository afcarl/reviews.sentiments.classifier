/**
 * Created by I313712 on 2/21/2016.
 */
$.ready(function() {
    $('.submit').click(function(e){
        var review = $('.form-control').value();
        var base64_encoded_review = window.btoa(review);
        $.ajax({
            url: 'review',
            method: 'post',
            content: base64_encoded_review
        }).done(function(res){
            if (res.classification == true) {
                $('.button-down').css('display','true');
                $('.button-up').css('display','none');
            } else {
                $('.button-up').css('display','true');
                $('.button-down').css('display','none');
            }
        });
    });
});