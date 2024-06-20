using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Handler_GetCompanyInfo : System.Web.UI.Page
{
    Admin_DB db = new Admin_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
        ///功    能: 查詢人員表單
        ///說    明:
        /// * Request["cname"]: 填表人
        /// * Request["company]: 公司別
        /// * Request["orgnization]: 單位
        /// * Request["ename]: 員工名稱
        ///-----------------------------------------------------
        XmlDocument xDoc = new XmlDocument();
        DataTable dt = new DataTable();
        try
        {
            string type = (string.IsNullOrEmpty(Request["type"])) ? "" : Request["type"].ToString().Trim();
            string cname = (string.IsNullOrEmpty(Request["cname"])) ? "" : Request["cname"].ToString().Trim();
            string company = (string.IsNullOrEmpty(Request["company"])) ? "" : Request["company"].ToString().Trim();
            string orgnization = (string.IsNullOrEmpty(Request["orgnization"])) ? "" : Request["orgnization"].ToString().Trim();
            string ename = (string.IsNullOrEmpty(Request["ename"])) ? "" : Request["ename"].ToString().Trim();

            db._cname = cname;

            if(type == "name")
            {
                dt = db.GetList();
            }
            else
            {
                dt = db.GetEmail();
            }
            

            string xmlstr = string.Empty;
            xmlstr = DataTableToXml.ConvertDatatableToXML(dt, "dataList", "data_item");
            xmlstr = "<?xml version='1.0' encoding='utf-8'?><root>" + xmlstr + "</root>";
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