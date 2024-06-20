using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Handler_GetCodeTable : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
		///功    能: 查詢代碼檔列表
		///說    明:
        /// * Request["gNo"]: 群組代碼
        /// * Request["relation"]: 項目代碼
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
        DataTable dt = new DataTable();
        try
        {
            string gNo = (string.IsNullOrEmpty(Request["gNo"])) ? "" : Request["gNo"].ToString().Trim();
            string relation = (string.IsNullOrEmpty(Request["relation"])) ? "" : Request["relation"].ToString().Trim();
            string department = (string.IsNullOrEmpty(Request["department"])) ? "" : Request["department"].ToString().Trim();
            string extend1 = (string.IsNullOrEmpty(Request["extend1"])) ? "" : Request["extend1"].ToString().Trim();
            if (string.IsNullOrWhiteSpace(gNo))
            {
                string str_extendl = string.Empty;
                switch(extend1)
                {
                    case "01":
                        str_extendl = "台灣汽電共生";
                        break;
                    case "02":
                        str_extendl = "星能";
                        break;
                }

                Admin_DB a_db = new Admin_DB();
                a_db._department = department;
                a_db._extend1 = str_extendl;
                dt = a_db.GetList();
            }
            else
            {
                CodeTable_DB db = new CodeTable_DB();
                db._群組代碼 = gNo;
                db._項目代碼 = relation;
                dt = db.GetList();
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