// JavaScript Document
$(document).ready(function(){

    //套用accordion menu
    $('.ac').simpleAccordion({
        useLinks: true,
        button:'<span class="ac-btn"></span>',
    });
    //RWD menu show or hide
    var docwidth = $(window).width();
    if(docwidth < 2160){
        //$("#switchsidebarmenu > i").removeClass().addClass("fas fa-bars");
        $("#switchsidebarmenu").html("開啟選單");
        $(".ochisidebar").css({
            width: "0"
        });
        $(".ochiheader").css({
            width: "100%"
        });
    }
    //側選單顯示按鈕
    $("#switchsidebarmenu").on("click",function(){
        if($(".ochisidebar").width() == 0){
            //$("#switchsidebarmenu > i").removeClass().addClass("far fa-times");
            $("#switchsidebarmenu").html("關閉選單");
            $(".ochisidebar").animate({
                width: "250px"
            },300);
            $(".ochiheader").animate({
                width: "-=250px"
            },300);
        }else{
            //$("#switchsidebarmenu > i").removeClass().addClass("fas fa-bars");
            $("#switchsidebarmenu").html("開啟選單");
            $(".ochisidebar").animate({
                width: "0"
            },300);
            $(".ochiheader").animate({
                width: "100%"
            },300);
        }
    })





});