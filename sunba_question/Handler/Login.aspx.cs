using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Handler_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
        ///功    能: 登入
        ///說    明:
        /// * Request["acc"]: 帳號
        /// * Request["pw"]: 密碼
        /// * Request["vCode"]: 驗證碼
        ///-----------------------------------------------------
        XmlDocument xDoc = new XmlDocument();
        string acc = (string.IsNullOrEmpty(Request["acc"])) ? "" : Request["acc"].ToString().Trim();
        string pw = (string.IsNullOrEmpty(Request["pw"])) ? "" : Request["pw"].ToString().Trim();
        string reStatus = string.Empty;

        try
        {
            string xmlstr = string.Empty;
            Account.ExecSignIn(acc, Server.UrlDecode(pw));

            xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><Response>登入成功</Response></root>";
            xDoc.LoadXml(xmlstr);
        }
        catch (Exception ex)
        {
            xDoc = ExceptionUtil.GetExceptionDocument(ex);
        }
        Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
        xDoc.Save(Response.Output);
    }
}