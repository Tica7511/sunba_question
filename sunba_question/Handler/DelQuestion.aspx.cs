using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Handler_DelQuestion : System.Web.UI.Page
{
    QuestionForm_DB db = new QuestionForm_DB();
    FileTable_DB fdb = new FileTable_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
		///功    能: 刪除 檔案
		///說    明:
		/// * Request["guid:"]: guid 
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
        try
        {
            string guid = (string.IsNullOrEmpty(Request["guid"])) ? "" : Request["guid"].ToString().Trim();
            string xmlstr = string.Empty;
            DataTable dt = new DataTable();

            db._guid = guid;
            db.DeleteData();

            fdb._guid = guid;
            fdb.DeleteDataAll();

            xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><Response>刪除成功</Response></root>";
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