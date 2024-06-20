<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="zh-Hant-TW">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="zh-TW" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="關鍵字內容" />
<meta name="description" content="描述" /><!--告訴搜尋引擎這篇網頁的內容或摘要。-->
<meta name="generator" content="Notepad" /><!--告訴搜尋引擎這篇網頁是用什麼軟體製作的。-->
<meta name="author" content="ochison" /><!--告訴搜尋引擎這篇網頁是由誰製作的。-->
<meta name="copyright" content="本網頁著作權所有" /><!--告訴搜尋引擎這篇網頁是...... -->
<meta name="revisit-after" content="3 days" /><!--告訴搜尋引擎3天之後再來一次這篇網頁，也許要重新登錄。-->
<title>台灣汽電共生股份有限公司</title>
<link rel="stylesheet" href="css/bootstrap.css" /><!-- normalize & bootstrap's grid system -->
<link rel="stylesheet" href="css/fontawesome-all.min.css"><!-- css icon fontawesome 5 -->
<link rel="stylesheet" href="css/simple-accordion.css" /><!-- mobile menu -->
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css" /><!-- popup dialog -->
<link rel="stylesheet" href="css/OClayout.css" /><!-- ochsion layout base -->
<link rel="stylesheet" href="css/OchiRWD.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/jquery.treetable.css" />
<link rel="stylesheet" href="css/jquery.datetimepicker.css" />
<link rel="stylesheet" href="css/login.css" type="text/css" />
<!-- IE 瀏覽器處理 -->
<!--[if lte IE 11]>
<link rel="stylesheet" href="css/cssie.css" />
<![endif]-->
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/jquery.simple.accoridion.js"></script><!-- mobile menu -->
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script><!-- popup dialog -->
<script type="text/javascript" src="js/jquery.datetimepicker.js"></script>
<script type="text/javascript" src="js/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="js/jquery.treetable.js"></script>
<script type="text/javascript" src="js/NickCommon.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(document).on("keyup", "body", function (e) {
            if (e.keyCode == 13)
                $("#lgbtn").click();
        });

        $(document).on("click", "#lgbtn", function () {
            $.ajax({
                type: "POST",
                async: true, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/Login.aspx",
                data: {
                    acc: $("#acStr").val(),
                    pw: encodeURIComponent($("#pStr").val())
                },
                error: function (xhr) {
                    $("#errMsg").html("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        $("#errMsg").html($(data).find("Error").attr("Message"));
                    }                        
                    else {
                        location.href = "index.aspx";
                    }
                }
            });
        });
    });

</script>
</head>

<body>
<form id="form1">
    <div class="loginwrapper padding10RL">
		<div class="loginblock">
			<div class="loginheader textcenter">
				<img src="images/head-logo-L.png" width="200" height="100" class="imgcenter">
				<div class="font-size6 font-shadowA font-bold">台汽電線上提問單系統</div>
			</div>
			<div class="padding10ALL">
				<div class="OchiFixTable width100 TitleLength03 font-size3 margin10T">
					<div class="OchiRow">
						<div class="OchiCell OchiTitle TitleSetWidth font-size3">帳號</div>
						<div class="OchiCell width100"><input type="text" id="acStr" class="width99 inputex" /></div>
					</div>
					<!-- OchiRow -->
					<div class="OchiRow">
						<div class="OchiCell OchiTitle TitleSetWidth font-size3">密碼</div>
						<div class="OchiCell width100"><input type="password" id="pStr" class="width99 inputex" /></div>
					</div>
					<!-- OchiRow -->                     
				</div><!-- OchiFixTable -->
			</div>
			<div id="errMsg" style="color: red; text-align: center;"></div>
            <div class="margin20T textcenter"><a id="lgbtn" href="javascript:void(0);" class="fullbtn loginbtn">登入</a></div>
		</div>
	</div>

</form>

    <script src="js/LiteCommon.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

    });
</script>
</body>
</html>


