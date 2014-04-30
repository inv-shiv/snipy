$(document).ready(function(){
    /*$(".snippy-area").focus(function(){
        $(this).closest("div.col-lg-8").find("div.offer").addClass("snippy-area-focus");
    }).blur(function(){
        $(this).closest("div.col-lg-8").find("div.offer").removeClass("snippy-area-focus");
    });*/

    $("#user").hover(function () {
        $(this).closest("div.col-lg-4").find("div.offer").addClass("snippy-area-focus");
    }, function(){
        $(this).closest("div.col-lg-4").find("div.offer").removeClass("snippy-area-focus");
    });

    $('form[id^="edit_snip_"]').submit(function(e){
        if($("input[type=submit]").attr("name") == "edit"){
            $("#snip_snippet").removeAttr('readonly');
            $("#snip_title").removeAttr("readonly");
            $("input[type=submit]").attr("name", "update")
            $("input[type=submit]").attr("value", "update")
            e.preventDefault();
            return false;
        }
        return true;
    });

    $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });

});