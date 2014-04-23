$(document).ready(function(){
    $(".snippy-area").focus(function(){
        $(this).closest("div.col-lg-8").find("div.offer").addClass("snippy-area-focus");
    }).blur(function(){
        $(this).closest("div.col-lg-8").find("div.offer").removeClass("snippy-area-focus");
    });

    $("#user").hover(function () {
        $(this).closest("div.col-lg-4").find("div.offer").addClass("snippy-area-focus");
    }, function(){
        $(this).closest("div.col-lg-4").find("div.offer").removeClass("snippy-area-focus");
    })
});