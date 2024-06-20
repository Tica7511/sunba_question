<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
<title>森霸電力線上提問單系統</title>
<link rel="stylesheet" href="css/bootstrap.css" /><!-- normalize & bootstrap's grid system -->
<link rel="stylesheet" href="css/fontawesome-all.min.css"><!-- css icon fontawesome 5 -->
<link rel="stylesheet" href="css/simple-accordion.css" /><!-- mobile menu -->
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css" /><!-- popup dialog -->
<link rel="stylesheet" href="css/OClayout.css" /><!-- ochsion layout base -->
<link rel="stylesheet" href="css/OchiRWD.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/jquery.treetable.css" />
<link rel="stylesheet" href="css/jquery.datetimepicker.css" />
<link rel="stylesheet" href="css/jquery-ui.css" />
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
    
    <script type="text/javascript" src="js/jquery-ui-1.10.2.custom.min.js"></script>
    <%--<script type="text/javascript" src="js/jquery-ui.js"></script>--%>
    <style>
.ui-front
{
    z-index: 1045;
}
</style>
</head>

<body class="ochiFlexFrame">
<form id="form1" runat="server">
    <input type="hidden" id="SSOname" value="<%= name %>" />
    <input type="hidden" id="SSOempid" value="<%= empid %>" />
    <input type="hidden" id="SSOgroupid" value="<%= groupid %>" />
    <input type="hidden" id="SSOgroupname" value="<%= groupname %>" />
    <input type="hidden" id="Mitem" />
    <input type="hidden" id="Mnum" />
    <input type="hidden" id="MquestionType" />
    <input type="hidden" id="Mempid" />
    <input type="hidden" id="Mfillformname" />
    <input type="hidden" id="Mcompanylist" />
    <input type="hidden" id="Morgnization" />
    <input type="hidden" id="Mstartday" />
    <input type="hidden" id="Mendday" />
    <input type="hidden" id="Mstate" />
    <input type="hidden" id="Mtype" />
    <input type="hidden" id="Mcontent" />
    <input type="hidden" id="Mreplycontent" />
    <input type="hidden" id="Fguid" />
    <input type="hidden" id="ffGuid" />
    <input type="hidden" id="Fsn" />
    <input type="hidden" id="Qguid" />
    <input type="hidden" id="OrderbyInfo" />
    <input type="hidden" id="OrderbyType" />
    <div class="ochibody">
        <div class="ochiheader">
            <div class="syslogobox"><img src="images/logo.svg" height="60"><span style="color:#FFFFFF;font-size: 1.6em; font-weight: bold;" class="fs-3 fw-bold">森霸電力線上提問單系統</span> </div><!-- syslogobox -->
            <div class="sysinfobox">
                <a href="#" id="switchsidebarmenu">關閉選單</a>
            </div><!-- sysinfobox -->
        </div><!-- ochiheader -->

        <div class="ochisidebar">
            <div id="sidebarmenu" class="overflowbarA">
                <div class="sidebarinfowrapper">
                    <div class="sidebarinfo">
                        <%= name %> 您好
                        <!--<div class="font-normal margin10T">
                            <i class="far fa-lock IconCa"></i> <a href="#">密碼修改</a>
                            <i class="far fa-sign-out IconCa"></i> <a href="#">登出</a>
                        </div>-->
                    </div><!-- sidebarinfo -->
                </div><!-- sidebarinfowrapper -->
                <ul class="myAccordion-list ac ac--animation">
                    <li><a href="index.aspx">首頁</a></li>
                </ul>
            </div><!-- sidebarmenu -->
        </div><!-- ochisidebar -->
        <div class="ochicontent">
            <!-- 內容start -->
            <div class="ochibasecontainerP">

                <div class="BoxStyleA margin20TB">
                    <div class="BoxStyleAheader">
                        <div class="ochiFleColB">
                            <div class="ColLeft"><div class="ContentPageTitle">線上提問單系統</div></div><!-- ColLeft -->
                            <div class="ColRight">首頁 / 線上提問單</div><!-- ColRight -->
                        </div><!-- ochiFleColB -->
                    </div><!-- BoxStyleAheader -->
                    <div class="BoxStyleAbody">

                        <div class="OchiTrasTable width100 TitleLength05">
                            <div class="OchiRow">
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">項次</div>
                                    <div class="OchiCell width100">
                                        <input id="txt_item" class="width100 inputex" />
                                    </div>
                                </div><!-- OchiHalf -->
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">編號</div>
                                    <div class="OchiCell width100">
                                        <input id="txt_num" class="width100 inputex" />
                                    </div>
                                </div><!-- OchiHalf -->
                            </div><!-- OchiRow -->

                            <div class="OchiRow">
                               
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">問題類別</div>
                                    <div class="OchiCell width100">
                                        <select id="sel_questionType" class="width100 inputex">
                                            <option value=""> -- 請選擇 -- </option>
                                        </select>
                                    </div>
                                </div><!-- OchiHalf -->
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">部門</div>
                                    <div class="OchiCell width100">
                                        <select id="sel_orgnization" class="width100 inputex">
                                            <option value=""> -- 請選擇 -- </option>
                                        </select>
                                    </div>
                                </div><!-- OchiHalf -->
                            </div><!-- OchiRow -->

                            <div class="OchiRow">
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">員工編號</div>
                                    <div class="OchiCell width100">
                                        <select id="sel_empid" class="width100 inputex">
                                            <option value=""> -- 請選擇 -- </option>
                                        </select>
                                    </div>
                                </div><!-- OchiHalf -->
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">提出日期</div>
                                    <div class="OchiCell width100">
                                        <input id="txt_startday" type="text" class="inputex width30 Jdatepicker"> ~ <input id="txt_endday" type="text" class="inputex width30 Jdatepicker">
                                    </div>
                                </div><!-- OchiHalf -->
                            </div><!-- OchiRow -->

                            <div class="OchiRow">
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">急迫性</div>
                                    <div id="div_type" class="OchiCell width100"></div>
                                </div><!-- OchiHalf -->
                                <%--<div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">狀態</div>
                                    <div class="OchiCell width100"><select id="sel_state" class="width100 inputex"></select></div>
                                </div><!-- OchiHalf -->--%>
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">內容</div>
                                    <div class="OchiCell width100"><input id="txt_content" class="width80 inputex" />(可輸入關鍵字)</div>
                                </div><!-- OchiHalf -->
                            </div><!-- OchiRow -->
                            <div class="OchiRow">
                                <%--<div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">內容</div>
                                    <div class="OchiCell width100"><input id="txt_content" class="width80 inputex" />(可輸入關鍵字)</div>
                                </div><!-- OchiHalf -->
                                <div class="OchiHalf">
                                    <div class="OchiCell OchiTitle TitleSetWidth">回覆內容</div>
                                    <div class="OchiCell width100"><input id="txt_replycontent" class="width80 inputex" />(可輸入關鍵字)</div>
                                </div><!-- OchiHalf -->--%>
                            </div><!-- OchiRow -->
                        </div>

                        <div class="twocol">
                            <div class="left">
                                <%--<a id="statisticsbtn" href="javascript:void(0);" class="genbtn">統計</a> 
                                <a id="printbtn" href="javascript:void(0);" class="genbtn">列印</a>--%>
                            </div>
                            <div id="div_new" class="right">
                                總資料筆數: <span id="sp_count"></span> 
                                <a id="newbtn" href="javascript:void(0);" class="genbtn open-popup-link-tiny">新增</a> 
                                <a id="querybtn" href="javascript:void(0);" class="genbtn">查詢</a>
                                <a id="clearbtn" href="javascript:void(0);" class="genbtn">清除</a>
                            </div>
                        </div><!-- twocol -->
                        <br />

                        <div class="stripeMe font-normal" style="overflow-x: auto">
                           <table id="tablist" width="100%" border="0" cellspacing="0" cellpadding="0">
                               <thead>
                                   <tr>
                                       <th width="5%" nowrap>項次</th>
                                       <th width="8%" nowrap><a name="orderHead" href="javascript:void(0);" clname="編號">編號 </a></th>
                                       <th width="5%" nowrap><a name="orderHead" href="javascript:void(0);" clname="問題類別">問題類別 </a></th>
                                       <th width="7%" nowrap><a name="orderHead" href="javascript:void(0);" clname="員工編號">員工編號 </a></th>
                                       <th width="7%" nowrap><a name="orderHead" href="javascript:void(0);" clname="填表人">填表人 </a></th>
                                       <th width="7%" nowrap><a name="orderHead" href="javascript:void(0);" clname="部門">部門 </a></th>
                                       <th width="8%" nowrap><a name="orderHead" href="javascript:void(0);" clname="提出日期">提出日期 </a></th>
                                       <%--<th width="8%" nowrap><a name="orderHead" href="javascript:void(0);" clname="預計完成日">預計完成日 </a></th>--%>
                                       <th width="5%" nowrap><a name="orderHead" href="javascript:void(0);" clname="程度">急迫性 </a></th>
                                       <%--<th width="7%" nowrap><a name="orderHead" href="javascript:void(0);" clname="目前狀態">狀態 </a></th>--%>
                                       <th width="15%" nowrap>內容 </th>
                                       <%--<th width="15%" nowrap>回覆內容 </th>--%>
                                       <th width="8%"  nowrap>附件列表 </th>
                                       <th width="5%" id="td_editExpert" nowrap >功能 </th>
                                   </tr>
                               </thead>
                               <tbody></tbody>
                            </table>
                        </div>

                    </div><!-- BoxStyleAbody -->
                </div><!-- BoxStyleA -->


            </div><!-- ochibasecontainerP -->
            <!-- 內容end -->
        </div><!-- ochicontent -->

    </div><!-- ochibody -->
    <div class="ochifooter">
        <div class="ochibasecontainerP">
            <div class="footercontainer">
                版權所有© 2023 ITRI. 工業技術研究院著作
            </div><!-- footercontainer -->
        </div><!-- ochibasecontainerP -->
    </div><!-- ochifooter -->


    <div id="newsbox" class="magpopup magSizeL mfp-hide">
        <div class="magpopupTitle">提問單內容</div>
        <div class="padding10ALL">
    
            <div class="OchiTrasTable width100 TitleLength05">
                <div class="OchiRow">
                    <div class="margin5TB font-size4 font-bold" style="text-align:center">填表人員</div>
                </div><!-- OchiRow -->
                <div class="OchiRow">
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">編號</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_num" class="width100 inputex" disabled />
                        </div>
                    </div><!-- OchiHalf -->
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">問題類型</div>
                        <div class="OchiCell width100">
                            <select id="nsel_questionType" class="width100 inputex"></select>
                        </div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->

                <div class="OchiRow">
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">部門</div>
                        <div class="OchiCell width100">
                            <input id="nsel_orgnization" class="width100 inputex" disabled />
                        </div>
                    </div><!-- OchiHalf -->
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">填表人</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_fillformname" class="width100 inputex" disabled />
                        </div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->

                <div class="OchiRow">
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">提出日期</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_day" type="text" class="inputex width30 Jdatepicker" disabled>
                        </div>
                    </div><!-- OchiHalf -->
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">急迫性</div>
                        <div class="OchiCell width100"><select id="nsel_type" class="width100 inputex"></select></div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->

                <div id="div_file" class="OchiRow">
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">附件</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_file" type="file" multiple>
                        </div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->


            </div>
            <br />
            <div class="margin5T font-size3">問題描述: (可貼表格或圖片)</div>
            <textarea id="n_suggestion" name="ntextarea" rows="8" class="mytextareapopup"></textarea>
            <div class="twocol margin10T">
                <div class="right">
                    <a id="n_closebtn" href="javascript:void(0);" class="genbtn">離開</a>
                    <a id="n_subbtn" href="javascript:void(0);" class="genbtn">儲存</a>
                </div>
            </div><!-- twocol -->


            <%--<div class="OchiTrasTable width100 TitleLength05">
                <div class="OchiRow">
                    <div class="margin5TB font-size4 font-bold" style="text-align:center">回覆人員</div>
                </div><!-- OchiRow -->

                <div class="OchiRow">
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">回覆日期</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_returnday" type="text" class="inputex width30 Jdatepicker">
                        </div>
                    </div><!-- OchiHalf -->
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">預計完成日</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_finishday" type="text" class="inputex width30 Jdatepicker">
                        </div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->
                <div class="OchiRow">
                    <div id="div_file2" class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">附件</div>
                        <div class="OchiCell width100">
                            <input id="ntxt_file2" type="file" multiple>
                        </div>
                    </div><!-- OchiHalf -->
                    <div class="OchiHalf">
                        <div class="OchiCell OchiTitle TitleSetWidth">目前狀態</div>
                        <div class="OchiCell width100">
                            <select id="nsel_state" class="width100 inputex"></select>
                        </div>
                    </div><!-- OchiHalf -->
                </div><!-- OchiRow -->
            </div>

            <br />
            <div class="margin5T font-size3">問題回覆: (可貼表格或圖片)</div>
            <textarea id="n_replies" name="ntextarea" rows="8" class="mytextareapopup"></textarea>
    
            <div class="twocol margin10T">
                <div class="right">
                    <a id="n_closebtn2" href="javascript:void(0);" class="genbtn">離開</a>
                    <a id="n_subbtn2" href="javascript:void(0);" class="genbtn">儲存</a>
                </div>
            </div><!-- twocol -->--%>
        </div><!-- padding10ALL -->
    
    </div><!--magpopup -->

    <div id="popupFile" class="magpopup magSizeM mfp-hide">
    <div class="magpopupTitle">填表附件</div>
    <div class="padding10ALL">
        <div class="overtablewidth margin5T">
           <table class="overtablewidthS" width="100%">
             <tr>
               <td>
                 <!-- start -->
                 <div class="stripeMe">
                   <table id="tablistfile" cellspacing="0" cellpadding="0" width="100%">
                       <thead>
                           <tr>
                             <th align="center" nowrap>文件名稱</th>
                             <th align="center" nowrap>上傳日期</th>
                             <th align="center" id="th_editfile" width="120" nowrap="nowrap">功能</th>
                           </tr>
                       </thead>
                       <tbody></tbody>
                   </table>
                 </div><!-- stripeMe -->
                 <!-- end -->
               </td>
             </tr>
           </table>
        </div><!-- overtablewidth -->
    </div>
    <!-- padding10ALL -->
</div>

    <div id="popupFile2" class="magpopup magSizeM mfp-hide">
    <div class="magpopupTitle">回覆附件</div>
    <div class="padding10ALL">
        <div class="overtablewidth margin5T">
           <table class="overtablewidthS" width="100%">
             <tr>
               <td>
                 <!-- start -->
                 <div class="stripeMe">
                   <table id="tablistfile2" cellspacing="0" cellpadding="0" width="100%">
                       <thead>
                           <tr>
                             <th align="center" nowrap>文件名稱</th>
                             <th align="center" nowrap>上傳日期</th>
                             <th align="center" id="th_editfile2" width="120" nowrap="nowrap">功能</th>
                           </tr>
                       </thead>
                       <tbody></tbody>
                   </table>
                 </div><!-- stripeMe -->
                 <!-- end -->
               </td>
             </tr>
           </table>
        </div><!-- overtablewidth -->
    </div>
    <!-- padding10ALL -->
</div>

</form>

    <script src="js/LiteCommon.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //開窗後使用tinymce
        $('.open-popup-link-tiny').magnificPopup({
            type:'inline',
            midClick: false, // 是否使用滑鼠中鍵
            closeOnBgClick:true,//點擊背景關閉視窗
            showCloseBtn:true,//隱藏關閉按鈕
            fixedContentPos:true,//彈出視窗是否固定在畫面上
            mainClass: 'mfp-fade',//加入CSS淡入淡出效果
            tClose: '關閉',//翻譯字串
            callbacks: {
                open: function () {
                    addTinyMCE();
                },
                close: function () {
                    tinymce.remove('.mytextareapopup');
                }
                // e.t.c.
            }
        });
        $(".closemagnificPopup").click(function(){
            $.magnificPopup.close();
        });
    });

    function addTinyMCE() {
        tinymce.init({
            menubar: false,
            selector: ".mytextareapopup",
            language: "zh_TW",
            //menubar: false, //上方工具列顯示or隱藏
            file_browser_callback: function (field_name, url, type, win) {
                if (type == "image") {
                    tinymce.activeEditor.windowManager.close();
                    tinymce.activeEditor.windowManager.open({
                        title: "圖片上傳",
                        url: 'js/tinymce/ImageUpload/upload.aspx?Fguid=' + $("#Fguid").val(),
                        width: 380,
                        height: 140,
                    });
                }
            },
            plugins: ["advlist autolink lists image link charmap print preview searchreplace visualblocks code fullscreen insertdatetime table contextmenu paste pagebreak textcolor image"],
            font_formats: "新細明體=新細明體;標楷體=標楷體;微軟正黑體=微軟正黑體;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Comic Sans MS=comic sans ms,sans-serif;Times New Roman=times new roman,times;",
            pagebreak_separator: "<!--pagebreak-->",
            image_advtab: true, //圖片進階選項
            relative_urls: false,
            remove_script_host: false,
            convert_urls: true,
            toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link pagebreak table image | forecolor backcolor | fontselect fontsizeselect",
            fontsize_formats: "8pt 10pt 12pt 14pt 18pt 24pt 36pt 42pt 60pt 72pt"
        });
    }

    function addTinyMCEreadyonly() {
        tinymce.init({
            menubar: false,
            selector: ".mytextareapopup",
            language: "zh_TW",
            //menubar: false, //上方工具列顯示or隱藏
            file_browser_callback: function (field_name, url, type, win) {
                if (type == "image") {
                    tinymce.activeEditor.windowManager.close();
                    tinymce.activeEditor.windowManager.open({
                        title: "圖片上傳",
                        url: 'js/tinymce/ImageUpload/upload.aspx?Fguid=' + $("#Fguid").val(),
                        width: 380,
                        height: 140,
                    });
                }
            },
            plugins: ["advlist autolink lists image link charmap print preview searchreplace visualblocks code fullscreen insertdatetime table contextmenu paste pagebreak textcolor image"],
            font_formats: "新細明體=新細明體;標楷體=標楷體;微軟正黑體=微軟正黑體;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Comic Sans MS=comic sans ms,sans-serif;Times New Roman=times new roman,times;",
            pagebreak_separator: "<!--pagebreak-->",
            image_advtab: true, //圖片進階選項
            relative_urls: false,
            remove_script_host: false,
            convert_urls: true,
            toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | forecolor backcolor | fontselect fontsizeselect",
            fontsize_formats: "8pt 10pt 12pt 14pt 18pt 24pt 36pt 42pt 60pt 72pt"
        });
    }
</script>

    <script type="text/javascript">
        $(document).ready(function () {
            getDDL('001', '', 'sel_questionType');
            getCompanyList("orgnization", "");
            getCompanyList("empname", "");
            getDDL2('005', '', 'div_type');
            getDDL('004', '', 'sel_state');
            getData();

            //匯出統計表
            $(document).on("click", "#statisticsbtn", function () {
                location.href = "EXPORTEXCEL.aspx?type=statistics";
            });

            //匯出列印表
            $(document).on("click", "#printbtn", function () {
                location.href = "EXPORTEXCEL.aspx?type=print&item=" + $("#Mitem").val() + "&num=" + $("#Mnum").val() + "&questionType=" + $("#MquestionType").val() + "&fillformname=" + $("#Mfillformname").val() +
                    "&empid=" + $("#Mempid").val() + "&companylist=" + $("#Mcompanylist").val() + "&orgnization=" + $("#Morgnization").val() + "&startday=" + insertsqlDate($("#Mstartday").val()) +
                    "&endday=" + insertsqlDate($("#Mendday").val()) + "&state=" + $("#Mstate").val() + "&content=" + $("#Mcontent").val() + "&replycontent=" + $("#Mreplycontent").val();
            });

            //關閉彈出填表人視窗
            $(document).on("click", "#n_closebtn", function () {
                $.magnificPopup.close();
            });

            //關閉彈出填表人視窗
            $(document).on("click", "#n_closebtn2", function () {
                $.magnificPopup.close();
            });

            //查詢按鈕
            $(document).on("click", "#querybtn", function () {
                var cktypevalue = '';

                $("#Mitem").val($("#txt_item").val());
                $("#Mnum").val($("#txt_num").val());
                $("#MquestionType").val($("#sel_questionType option:selected").val());
                $("#Mempid").val($("#sel_empid option:selected").val());
                $("#Mfillformname").val($("#sel_fillformname option:selected").val());
                $("#Mcompanylist").val($("#sel_companylist").val());
                $("#Morgnization").val($("#sel_orgnization").val());
                $("#Mstartday").val(insertsqlDate($("#txt_startday").val()));
                $("#Mendday").val(insertsqlDate($("#txt_endday").val()));
                $("#Mstate").val($("#sel_state").val());
                $('input[name="cktype"]:checked').each(function () {
                    if (cktypevalue == "") {
                        cktypevalue += this.value;
                    }
                    else {
                        cktypevalue += "," + this.value;
                    }

                });

                $("#Mtype").val(cktypevalue);
                $("#Mcontent").val($("#txt_content").val());
                $("#Mreplycontent").val($("#txt_replycontent").val());
                $("#OrderbyInfo").val('');
                $("#OrderbyType").val('');

                getData();
            });

            //表頭排序
            $(document).on("click", "a[name='orderHead']", function () {
                if ($("#OrderbyType").val() == '')
                    $("#OrderbyType").val('DESC');
                else
                    if ($("#OrderbyType").val() == 'DESC')
                        $("#OrderbyType").val('ASC');
                    else
                        $("#OrderbyType").val('DESC');

                $("#OrderbyInfo").val($(this).attr("clname"));
                getData();
            });

            //填表人儲存按鈕
            $(document).on("click", "#n_subbtn", function () {
                var msg = '';

                if ($("#nsel_questionType").val() == "")
                    msg += "請選擇【問題類型】\n";
                if ($("#nsel_type").val() == "")
                    msg += "請選擇【急迫性】\n";
                if (msg != "") {
                    alert(msg);
                    return false;
                }

                // '<' & '>' 做全形處理
                tinyMCE.activeEditor.dom.addClass(tinyMCE.activeEditor.dom.select('img'), 'img-responsive');
                var content_tmp = tinyMCE.get("n_suggestion").getContent().trim().replace(/&lt;/g, "＜").replace(/&gt;/g, "＞");

                // Get form
                var form = $('#form1')[0];

                // Create an FormData object 
                var data = new FormData(form);

                var mode = ($("#Qguid").val() == "") ? "new" : "edit";

                // If you want to add an extra field for the FormData
                data.append("guid", $("#Qguid").val());
                data.append("num", encodeURIComponent($("#ntxt_num").val()));
                data.append("mode", encodeURIComponent(mode));
                data.append("questionType", encodeURIComponent($("#nsel_questionType option:selected").val()));
                data.append("day", encodeURIComponent(insertsqlDate($("#ntxt_day").val())));
                data.append("rtype", encodeURIComponent($("#nsel_type").val()));
                data.append("nContent", encodeURIComponent(content_tmp));
                $.each($("#ntxt_file")[0].files, function (i, file) {
                    data.append('file', file);
                });

                $.ajax({
                    type: "POST",
                    async: true, //在沒有返回值之前,不會執行下一步動作
                    url: "Handler/AddQuestionForm.aspx",
                    data: data,
                    processData: false,
                    contentType: false,
                    cache: false,
                    error: function (xhr) {
                        alert("Error: " + xhr.status);
                        console.log(xhr.responseText);
                    },
                    success: function (data) {
                        if ($(data).find("Error").length > 0) {
                            alert($(data).find("Error").attr("Message"));
                        }
                        else {
                            alert($("Response", data).text());
                            $("#OrderbyInfo").val('');
                            $("#OrderbyType").val('');
                            getData();
                            tinymce.remove('.mytextareapopup');
                            $.magnificPopup.close();
                            $("#Mitem").val();
                            $("#Mnum").val();
                            $("#Mfillformname").val();
                            $("#Mcompanylist").val();
                            $("#Morgnization").val();
                            $("#Mstartday").val();
                            $("#Mendday").val();
                            $("#Mstate").val();
                            $("#Mcontent").val();
                            $("#Mreplycontent").val();
                        }
                    }
                });
            });

            //回覆人儲存按鈕
            $(document).on("click", "#n_subbtn2", function () {
                var msg = '';

                if ($("#ntxt_num").val() == "")
                    msg += "【填表人】資料尚未填寫 無法回覆\n";
                if ($("#nsel_state").val() == "")
                    msg += "請填寫【目前狀態】\n";
                if ($("#ntxt_returnday").val() != '')
                    if (!ValidDate($("#ntxt_returnday").val()))
                        msg += "【回覆日期】日期格式不正確\n";
                if ($("#ntxt_finishday").val() != '')
                    if (!ValidDate($("#ntxt_finishday").val()))
                        msg += "【預計完成日】日期格式不正確\n";
                if ($("#ntxt_email").val() == "")
                    msg += "請填寫【信箱】\n";
                if (msg != "") {
                    alert(msg);
                    return false;
                }

                // '<' & '>' 做全形處理
                tinyMCE.activeEditor.dom.addClass(tinyMCE.activeEditor.dom.select('img'), 'img-responsive');
                var content_tmp = tinyMCE.get("n_replies").getContent().trim().replace(/&lt;/g, "＜").replace(/&gt;/g, "＞");

                // Get form
                var form = $('#form1')[0];

                // Create an FormData object 
                var data = new FormData(form);

                var mode = ($("#Qguid").val() == "") ? "new" : "edit";

                // If you want to add an extra field for the FormData
                data.append("guid", $("#Qguid").val());
                data.append("mode", encodeURIComponent(mode));
                data.append("fillformname", encodeURIComponent($("#ntxt_fillformname").val()));
                data.append("email", encodeURIComponent($("#ntxt_email").val()));
                data.append("returnday", encodeURIComponent(insertsqlDate($("#ntxt_returnday").val())));
                data.append("finishday", encodeURIComponent(insertsqlDate($("#ntxt_finishday").val())));
                data.append("state", encodeURIComponent($("#nsel_state").val()));
                data.append("nContent", encodeURIComponent(content_tmp));
                $.each($("#ntxt_file2")[0].files, function (i, file) {
                    data.append('file', file);
                });

                $.ajax({
                    type: "POST",
                    async: true, //在沒有返回值之前,不會執行下一步動作
                    url: "Handler/AddReplyForm.aspx",
                    data: data,
                    processData: false,
                    contentType: false,
                    cache: false,
                    error: function (xhr) {
                        alert("Error: " + xhr.status);
                        console.log(xhr.responseText);
                    },
                    success: function (data) {
                        if ($(data).find("Error").length > 0) {
                            alert($(data).find("Error").attr("Message"));
                        }
                        else {
                            alert($("Response", data).text());
                            $("#Mitem").val();
                            $("textarea[name='ntextarea']").val('');
                            $("#Mnum").val();
                            $("#Mfillformname").val();
                            $("#Mcompanylist").val();
                            $("#Morgnization").val();
                            $("#Mstartday").val();
                            $("#Mendday").val();
                            $("#Mstate").val();
                            $("#Mcontent").val();
                            $("#Mreplycontent").val();
                            $("#OrderbyInfo").val('');
                            $("#OrderbyType").val('');
                            getData();
                            tinymce.remove('.mytextareapopup');
                            $.magnificPopup.close();
                        }
                    }
                });
            });

            //刪除資料
            $(document).on("click", "a[name='deleteExpert']", function () {
                if (confirm("確定刪除?")) {
                    $.ajax({
                        type: "POST",
                        async: false, //在沒有返回值之前,不會執行下一步動作
                        url: "Handler/DelQuestion.aspx",
                        data: {
                            guid: $(this).attr("aid")
                        },
                        error: function (xhr) {
                            alert("Error: " + xhr.status);
                            console.log(xhr.responseText);
                        },
                        success: function (data) {
                            if ($(data).find("Error").length > 0) {
                                alert($(data).find("Error").attr("Message"));
                            }
                            else {
                                alert($("Response", data).text());
                                getData();
                            }
                        }
                    });
                }
            });


            //新增按鈕
            $(document).on("click", "#newbtn", function () {
                getDDL('001', '', 'nsel_questionType');
                getDDL('005', '', 'nsel_type');
                getDDL('004', '', 'nsel_state');
                $("#ntxt_fillformname").val($("#SSOempid").val() + " " + $("#SSOname").val());
                $("#nsel_orgnization").val($("#SSOgroupname").val());
                $("#Qguid").val('');
                $("#ntxt_num").val('');
                $("#nsel_questionType").val('');
                $("#ntxt_day").val(getTaiwanDate());
                $("#nsel_type").val('');
                $("#ntxt_file").val('');
                $("#ntxt_returnday").val('');
                $("#ntxt_finishday").val('');
                $("#ntxt_file2").val('');
                $("#nsel_state").val('01');
                $("#n_suggestion").val('');
                $("#n_replies").val('');
                $("#ntxt_email").val('');
                $("#div_file").show();
                $("#div_file2").show();

                $("#nsel_type").attr("disabled", false);
                $("#nsel_questionType").attr("disabled", false);
                $("#n_subbtn").show();
                $("#ntxt_returnday").attr("disabled", false);
                $("#ntxt_finishday").attr("disabled", false);
                $("#nsel_state").attr("disabled", false);
                $("#n_subbtn2").show();

                doOpenMagPopup();
                $(".mfp-close").hide();
            });

            //清除按鈕
            $(document).on("click", "#clearbtn", function () {
                $("#txt_item").val('');
                $("#txt_num").val('');
                $("#sel_questionType").val('');
                $("#sel_orgnization").val('');
                getCompanyList('empname', '')
                $("#sel_empid").val('');
                getDDL2('005', '', 'div_type');
                $("#sel_state").val('');
                $("#txt_startday").val('');
                $("#txt_endday").val('');
                $("#txt_content").val('');
                $("#txt_replycontent").val('');
            });

            //編輯按鈕
            $(document).on("click", "a[name='editExpert']", function () {
                getDDL('001', '', 'nsel_questionType');
                getDDL('005', '', 'nsel_type');
                getDDL('004', '', 'nsel_state');
                $("#Qguid").val($(this).attr("aid"));
                $("#ntxt_file").val('');
                $("#ntxt_file2").val('');
                $("#div_file").hide();
                $("#div_file2").hide();

                //瀏覽後將所有欄位改成反灰
                $("#nsel_questionType").attr("disabled", true);
                $("#nsel_orgnization").attr("disabled", true);
                $("#ntxt_fillformname").attr("disabled", true);
                $("#nsel_type").attr("disabled", true);
                $("#n_subbtn").hide();
                $("#ntxt_returnday").attr("disabled", true);
                $("#ntxt_finishday").attr("disabled", true);
                $("#nsel_state").attr("disabled", true);
                $("#n_subbtn2").hide();

                getData2();
                doOpenMagPopupReadOnly();
                $(".mfp-close").hide();
            });

            //刪除檔案按鈕
            $(document).on("click", "a[name='delbtn2']", function () {
                var tabname = '';
                if ($(this).attr("ftype") == '01')
                    tabname = 'tablistfile';
                else
                    tabname = 'tablistfile2';

                if (confirm("確定刪除?")) {
                    $.ajax({
                        type: "POST",
                        async: false, //在沒有返回值之前,不會執行下一步動作
                        url: "Handler/DelFile.aspx",
                        data: {
                            ftype: $(this).attr("ftype"),
                            fsn: $(this).attr("fsn"),
                            guid: $(this).attr("aid")
                        },
                        error: function (xhr) {
                            alert("Error: " + xhr.status);
                            console.log(xhr.responseText);
                        },
                        success: function (data) {
                            if ($(data).find("Error").length > 0) {
                                alert($(data).find("Error").attr("Message"));
                            }
                            else {
                                alert($("Response", data).text());
                                getDataFile(tabname);
                            }
                        }
                    });
                }
            });

            //填表人附件按鈕
            $(document).on("click", "a[name='filesbtn']", function () {
                $("#ffGuid").val($(this).attr("aid"));
                $("#Fsn").val($(this).attr("fsn"));
                getDataFile('tablistfile');

                doOpenMagPopup2();
            });

            //回覆人附件按鈕
            $(document).on("click", "a[name='filesbtn2']", function () {
                $("#ffGuid").val($(this).attr("aid"));
                $("#Fsn").val($(this).attr("fsn"));
                getDataFile('tablistfile2');

                doOpenMagPopup3();
            });

            //自動帶入填表人姓名
            //$(document).on("change", "#ntxt_fillformname", function () {
            //    if (($("#nsel_orgnization").val() != '') && ($("#nsel_companylist").val() != ''))
            //        getCompanyMember();
            //});

            //更改部門
            $(document).on("change", "#nsel_orgnization", function () {
                $("#ntxt_email").val('');
                $("#ntxt_email").attr("disabled", true);
                if (($("#nsel_orgnization").val() != '') && ($("#nsel_companylist").val() != '')) {
                    getCompanyMember('name');
                }
                if ($("#nsel_orgnization option:selected").val() == '') {
                    $("#ntxt_fillformname").empty();
                    $('#ntxt_fillformname').append('<option value=""> -- 請選擇 -- </option>');
                }
            });

            //更改填表人
            //$(document).on("change", "#ntxt_fillformname", function () {
            //    getCompanyMember('email');
            //});

            //datepicker
            $(".Jdatepicker").datetimepicker({
                format: 'Y/m/d',
                timepicker: false,
                withoutBottomPanel: true,
                scrollInput: false,//取消input滾動調整日期功能
                //yearEnd:2022,//下拉選單最末年份
            });

            //變更部門
            $(document).on("change", "#sel_orgnization", function () {
                $.ajax({
                    type: "POST",
                    async: false, //在沒有返回值之前,不會執行下一步動作
                    url: "Handler/GetCompanyList.aspx",
                    data: {
                        type: "empname",
                        orgnization: $("#sel_orgnization option:selected").val()
                    },
                    error: function (xhr) {
                        alert("Error: " + xhr.status);
                        console.log(xhr.responseText);
                    },
                    success: function (data) {
                        if ($(data).find("Error").length > 0) {
                            alert($(data).find("Error").attr("Message"));
                        }
                        else {
                            var ddlstr = '<option value=""> -- 請選擇 -- </option>';
                            if ($(data).find("data_item").length > 0) {
                                $(data).find("data_item").each(function (i) {
                                    ddlstr += '<option value="' + $(this).children("編號").text().trim() + '">' + $(this).children("編號").text().trim() + ' ' + $(this).children("姓名").text().trim() + '</option>';
                                });
                            }
            
                            $("#sel_empid").empty();
                            $("#sel_empid").append(ddlstr);
                        }
                    }
                });
            });

            //$(document).on("change", "#sel_orgnization,sel_companylist", function () {
            //    if ($("#sel_companylist option:selected").val() != '' && $("#sel_orgnization option:selected").val() != '') {
            //        if ($("#sel_companylist option:selected").val() == "03" && $("#sel_orgnization option:selected").val() == "01") {
            //            $("#sel_fillformname").empty();
            //            $("#sel_fillformname").append('<option value=""> -- 請選擇 -- </option>');
            //            $("#sel_fillformname").append('<option value="張晏瑋">張晏瑋</option>');
            //        }
            //        else {
            //            getDDL3();
            //        }
            //    }
            //
            //    if ($("#sel_orgnization option:selected").val() == '') {
            //        $("#sel_fillformname").empty();
            //        $('#sel_fillformname').append('<option value=""> -- 請選擇 -- </option>');
            //    }
            //});
        });

        //function addTinyMCE() {
        //    tinymce.init({
        //        menubar: false,
        //        selector: ".mytextareapopup",
        //        language: "zh_TW",
        //        //menubar: false, //上方工具列顯示or隱藏
        //        file_browser_callback: function (field_name, url, type, win) {
        //            if (type == "image") {
        //                tinymce.activeEditor.windowManager.close();
        //                tinymce.activeEditor.windowManager.open({
        //                    title: "圖片上傳",
        //                    url: 'js/tinymce/ImageUpload/upload.aspx?Fguid=' + $("#Fguid").val(),
        //                    width: 380,
        //                    height: 140,
        //                });
        //            }
        //        },
        //        plugins: ["advlist autolink lists image link charmap print preview searchreplace visualblocks code fullscreen insertdatetime table contextmenu paste pagebreak textcolor image"],
        //        font_formats: "新細明體=新細明體;標楷體=標楷體;微軟正黑體=微軟正黑體;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Comic Sans MS=comic sans ms,sans-serif;Times New Roman=times new roman,times;",
        //        pagebreak_separator: "<!--pagebreak-->",
        //        image_advtab: true, //圖片進階選項
        //        relative_urls: false,
        //        remove_script_host: false,
        //        convert_urls: true,
        //        toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link pagebreak table image | forecolor backcolor | fontselect fontsizeselect",
        //        fontsize_formats: "8pt 10pt 12pt 14pt 18pt 24pt 36pt 42pt 60pt 72pt"
        //    });
            
        //}

        function getData() {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetQestionForm.aspx",
                data: {
                    type: "list",
                    item: $("#Mitem").val(),
                    num: $("#Mnum").val(),
                    questionType: $("#MquestionType").val(),
                    empid: $("#Mempid").val(),
                    fillformname: $("#Mfillformname").val(),
                    orgnization: $("#Morgnization").val(),
                    startday: $("#Mstartday").val(),
                    endday: $("#Mendday").val(),
                    state: $("#Mstate").val(),
                    content: $("#Mcontent").val(),
                    replycontent: $("#Mreplycontent").val(),
                    urgency: $("#Mtype").val(),
                    orderbyinfo: $("#OrderbyInfo").val(),
                    orderbytype: $("#OrderbyType").val()
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        $("#tablist tbody").empty();
                        var tabstr = '';

                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                tabstr += '<tr>';
                                tabstr += '<td >' + $(this).children("項次").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("編號").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("問題類別_V").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("員工編號").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("填表人").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("部門").text().trim() + '</td>';
                                tabstr += '<td >' + getDate($(this).children("提出日期").text().trim()) + '</td>';
                                //tabstr += '<td >' + getDate($(this).children("預計完成日").text().trim()) + '</td>';
                                tabstr += '<td >' + $(this).children("程度_V").text().trim() + '</td>';
                                //tabstr += '<td >' + $(this).children("目前狀態_V").text().trim() + '</td>';
                                tabstr += '<td >' + $(this).children("內容").text().trim() + '</td>';
                                //tabstr += '<td width="15%">' + $(this).children("回覆內容").text().trim() + '</td>';
                                tabstr += '<td align="center" ><a name="filesbtn" href="javascript:void(0);" class="genbtn open-popup-link-tiny" fsn="01" aid="' + $(this).children("guid").text().trim() +
                                    '">填表附件</a></td>';
                                //tabstr += '<td align="center" ><a name="filesbtn" href="javascript:void(0);" class="genbtn open-popup-link-tiny" fsn="01" aid="' + $(this).children("guid").text().trim() +
                                //    '">填表附件</a><br><a name="filesbtn2" href="javascript:void(0);" class="genbtn open-popup-link-tiny" fsn="02" aid="' + $(this).children("guid").text().trim() +
                                //    '">回覆附件</a></td>';
                                tabstr += '<td align="center"><a name="editExpert" href="javascript:void(0);" class="open-popup-link-tiny" aid="' + $(this).children("guid").text().trim() +
                                    '">瀏覽</a>';
                                tabstr += '</td>';
                            });
                        }
                        else {
                            tabstr += '<tr><td colspan="14">查詢無資料</td></tr>';
                        }

                        $("#sp_count").html($("datacount", data).text());
                        $("#tablist tbody").append(tabstr);
                    }
                }
            });
        }

        function getData2() {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetQestionForm.aspx",
                data: {
                    type: "data",
                    guid: $("#Qguid").val()
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                $("#ntxt_num").val($(this).children("編號").text().trim());
                                $("#nsel_questionType").val($(this).children("問題類別").text().trim());
                                $("#nsel_orgnization").val($(this).children("部門_id").text().trim());
                                $("#ntxt_fillformname").val($(this).children("填表人").text().trim());
                                $("#ntxt_day").val(getDate($(this).children("提出日期").text().trim()));
                                $("#nsel_type").val($(this).children("程度").text().trim());
                                $("#nsel_state").val($(this).children("目前狀態").text().trim());
                                $("#n_suggestion").val($(this).children("內容").text().trim());
                                $("#n_replies").val($(this).children("回覆內容").text().trim());
                                $("#ntxt_returnday").val(getDate($(this).children("回覆日期").text().trim()));
                                $("#ntxt_finishday").val(getDate($(this).children("預計完成日").text().trim()));
                            });
                        }
                    }
                }
            });
        }

        function getCompanyMember(type) {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetCompanyInfo.aspx",
                data: {
                    type: type,
                    cname: $("#ntxt_fillformname").val(),
                    company: $("#nsel_companylist").val(),
                    orgnization: $("#nsel_orgnization option:selected").text(),
                    ename: $("#ntxt_email").text(),
                },
                error: function (xhr) {
                    alert(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0)
                        alert(data);
                    else {
                        if (type == 'name') {
                            var ddlstr = '<option value=""> -- 請選擇 -- </option>';
                            if ($(data).find("data_item").length > 0) {
                                $(data).find("data_item").each(function (i) {
                                    ddlstr += '<option value="' + $(this).children("cname").text().trim() + '">' + $(this).children("cname").text().trim() + '</option>';
                                });
                            }

                            $("#ntxt_fillformname").empty();
                            if ($("#nsel_companylist").val() == '03') {
                                $("#ntxt_fillformname").append('<option value="張晏瑋">張晏瑋</option>');
                                $("#ntxt_email").val('itri532358@itri.org.tw');
                                $("#ntxt_email").attr("disabled", true);
                            }
                            else {
                                $("#ntxt_fillformname").append(ddlstr);
                            }                            
                        }
                        else {
                            if ($(data).find("data_item").length > 0) {
                                $(data).find("data_item").each(function (i) {
                                    if ($(this).children("email").text().trim() == '') {
                                        $("#ntxt_email").val('');
                                        $("#ntxt_email").attr("disabled", false);
                                    }
                                    else {
                                        $("#ntxt_email").val($(this).children("email").text().trim());
                                        $("#ntxt_email").attr("disabled", true);
                                    }
                                    
                                });
                            }
                            else {
                                if ($("#nsel_companylist").val() == '03') {
                                    $("#ntxt_email").val('itri532358@itri.org.tw');
                                }
                                else {
                                    $("#ntxt_email").val('');
                                    $("#ntxt_email").attr("disabled", true);
                                }
                            }
                        }
                                                                      
                    }
                }
            });
        }

        function getDataFile(tablename) {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetFileTable.aspx",
                data: {
                    guid: $("#ffGuid").val(),
                    ftype: $("#Fsn").val()
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        $("#" + tablename + " tbody").empty();
                        var tabstr = '';
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                tabstr += '<tr>'
                                tabstr += '<td nowrap><a href="DOWNLOAD.aspx?type=' + $("#Fsn").val() + '&fsn=' + $(this).children("排序").text().trim() + '&v=' + $(this).children("EncodeGuid").text().trim() + '">' + $(this).children("原檔名").text().trim() + $(this).children("附檔名").text().trim() + '</a></td>';
                                tabstr += '<td nowrap>' + $(this).children("上傳日期").text().trim() + '</td>';
                                tabstr += '<td name="td_edit2" nowrap="" align="center"><a href="javascript:void(0);" name="delbtn2" ftype=' + $("#Fsn").val() + ' fsn=' + $(this).children("排序").text().trim() + ' aid="' + $(this).children("guid").text().trim() + '">刪除</a></td>';
                                tabstr += '</tr>';
                            });
                        }
                        else
                            tabstr += '<tr><td colspan="3">查詢無資料</td></tr>';
                        $("#" + tablename + " tbody").append(tabstr);
                    }
                }
            });
        }

        function getDDL(gNo, relation, idname) {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetCodeTable.aspx",
                data: {
                    gNo: gNo,
                    relation: relation,
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        var ddlstr = '<option value=""> -- 請選擇 -- </option>';
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                ddlstr += '<option value="' + $(this).children("項目代碼").text().trim() + '">' + $(this).children("項目名稱").text().trim() + '</option>';
                            });
                        }

                        $("#" + idname).empty();
                        $("#" + idname).append(ddlstr);
                    }
                }
            });
        }

        function getDDL2(gNo, relation, idname) {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetCodeTable.aspx",
                data: {
                    gNo: gNo,
                    relation: relation,
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        var ddlstr = '';
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                ddlstr += ' <input type="checkbox" name="cktype" value="' + $(this).children("項目代碼").text().trim() + '" checked> ' + $(this).children("項目名稱").text().trim();
                            });
                        }
                        $("#" + idname).empty();
                        $("#" + idname).append(ddlstr);
                    }
                }
            });
        }
        
        function getDDL3() {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetCodeTable.aspx",
                data: {
                    gNo:"",
                    department: $("#sel_orgnization option:selected").text(),
                    extend1: $("#sel_companylist option:selected").val(),
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        var ddlstr = '';
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                if (i == 0)
                                    ddlstr += '<option value=""> -- 請選擇 -- </option>';

                                ddlstr += '<option value="' + $(this).children("cname").text().trim() + '">' + $(this).children("cname").text().trim() + '</option>';
                            });
                        }
                        $("#sel_fillformname").empty();
                        $("#sel_fillformname").append(ddlstr);
                    }
                }
            });
        }

        function getCompanyList(type, orgnization) {
            $.ajax({
                type: "POST",
                async: false, //在沒有返回值之前,不會執行下一步動作
                url: "Handler/GetCompanyList.aspx",
                data: {
                    type: type,
                    orgnization: orgnization
                },
                error: function (xhr) {
                    alert("Error: " + xhr.status);
                    console.log(xhr.responseText);
                },
                success: function (data) {
                    if ($(data).find("Error").length > 0) {
                        alert($(data).find("Error").attr("Message"));
                    }
                    else {
                        var ddlstr = '<option value=""> -- 請選擇 -- </option>';
                        if ($(data).find("data_item").length > 0) {
                            $(data).find("data_item").each(function (i) {
                                if (type == 'orgnization') {
                                    ddlstr += '<option value="' + $(this).children("GROUP_ID").text().trim() + '">' + $(this).children("GROUP_NAME").text().trim() + '</option>';
                                }
                                else {
                                    ddlstr += '<option value="' + $(this).children("編號").text().trim() + '">' + $(this).children("編號").text().trim() + ' ' + $(this).children("姓名").text().trim() + '</option>';
                                }                                
                            });
                        }

                        if (type == 'orgnization') {
                            $("#sel_orgnization").empty();
                            $("#sel_orgnization").append(ddlstr);
                        }
                        else {
                            $("#sel_empid").empty();
                            $("#sel_empid").append(ddlstr);
                        }
                    }
                }
            });
        }

        //驗證 執行日期 日期格式是否有誤
        function ValidDate(str) {
            var status = true;
            var ValidAry = str.split('/');
            if (ValidAry.length < 2)
                status = false;
            else {
                // 年
                if (parseInt(ValidAry[0]) < 1 || parseInt(ValidAry[0]) > 9999)
                    status = false;
                // 月
                if (parseInt(ValidAry[1]) < 1 || parseInt(ValidAry[1]) > 12)
                    status = false;
                else {
                    if (ValidAry[1].length != 2)
                        status = false;
                }

                if (ValidAry[2] != null) {
                    // 日
                    if (parseInt(ValidAry[2]) < 1 || parseInt(ValidAry[2]) > 31)
                        status = false;
                    else {
                        if (ValidAry[2].length != 2)
                            status = false;
                    }
                }
            }
            return status;
        }

        function getDate(fulldate) {
            if (fulldate != '') {
                var year = fulldate.substring("0", "4");
                var month = fulldate.substring("4", "6");
                var date = fulldate.substring("6", "8");

                return year + "/" + month + "/" + date;
            }
            else {
                return fulldate;
            }
        }

        function insertsqlDate(fulldate) {
            if (fulldate != '') {
                var farray = new Array();
                farray = fulldate.split("/");
                var yyyy = farray[0];
                var mm = farray[1];
                var dd = farray[2];

                return yyyy + mm + dd;
            }
            else {
                return fulldate;
            }
        }

        function getTaiwanDate() {
            var nowDate = new Date();

            var nowYear = nowDate.getFullYear();
            var nowTwYear = nowYear;
            var nowMonth = (nowDate.getMonth() + 1);
            if (nowMonth < 10)
                nowMonth = '0' + nowMonth;
            var nowDay = nowDate.getDate();
            if (nowDay < 10)
                nowDay = '0' + nowDay;

            return nowTwYear + '/' + nowMonth + '/' + nowDay;
        }

        function doOpenMagPopup() {
            $.magnificPopup.open({
                items: {
                    src: '#newsbox'
                },
                type: 'inline',
                midClick: false, // 是否使用滑鼠中鍵
                closeOnBgClick: true,//點擊背景關閉視窗
                showCloseBtn: true,//隱藏關閉按鈕
                fixedContentPos: true,//彈出視窗是否固定在畫面上
                mainClass: 'mfp-fade',//加入CSS淡入淡出效果
                tClose: '關閉',//翻譯字串
                callbacks: {
                    open: function () {
                        addTinyMCE();
                    },
                    close: function () {
                        tinymce.remove('.mytextareapopup');
                    }
                    // e.t.c.
                }
            });
            $(".closemagnificPopup").click(function () {
                $.magnificPopup.close();
            });
        }

        function doOpenMagPopup2() {
            $.magnificPopup.open({
                items: {
                    src: '#popupFile'
                },
                type: 'inline',
                midClick: false, // 是否使用滑鼠中鍵
                closeOnBgClick: true,//點擊背景關閉視窗
                showCloseBtn: true,//隱藏關閉按鈕
                fixedContentPos: true,//彈出視窗是否固定在畫面上
                mainClass: 'mfp-fade',//加入CSS淡入淡出效果
                tClose: '關閉',//翻譯字串
            });
        }

        function doOpenMagPopup3() {
            $.magnificPopup.open({
                items: {
                    src: '#popupFile2'
                },
                type: 'inline',
                midClick: false, // 是否使用滑鼠中鍵
                closeOnBgClick: true,//點擊背景關閉視窗
                showCloseBtn: true,//隱藏關閉按鈕
                fixedContentPos: true,//彈出視窗是否固定在畫面上
                mainClass: 'mfp-fade',//加入CSS淡入淡出效果
                tClose: '關閉',//翻譯字串
            });
        }

        function doOpenMagPopupReadOnly() {
            $.magnificPopup.open({
                items: {
                    src: '#newsbox'
                },
                type: 'inline',
                midClick: false, // 是否使用滑鼠中鍵
                closeOnBgClick: true,//點擊背景關閉視窗
                showCloseBtn: true,//隱藏關閉按鈕
                fixedContentPos: true,//彈出視窗是否固定在畫面上
                mainClass: 'mfp-fade',//加入CSS淡入淡出效果
                tClose: '關閉',//翻譯字串
                callbacks: {
                    open: function () {
                        addTinyMCEreadyonly();
                    },
                    close: function () {
                        tinymce.remove('.mytextareapopup');
                    }
                    // e.t.c.
                }
            });
            $(".closemagnificPopup").click(function () {
                $.magnificPopup.close();
            });
        }
    </script>
</body>
</html>

