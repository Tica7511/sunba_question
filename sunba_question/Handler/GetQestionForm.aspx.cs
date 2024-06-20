using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Handler_GetQestionForm : System.Web.UI.Page
{
    QuestionForm_DB db = new QuestionForm_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
        ///功    能: 查詢提問表單
        ///說    明:
        /// * Request["num"]: 編號
        /// * Request["questionType"]: 問題類別
        /// * Request["empid]: 員工編號
        /// * Request["orgnization]: 部門
        /// * Request["startday]: 提出日期 起
        /// * Request["endday]: 提出日期 迄
        /// * Request["state]: 目前狀態
        /// * Request["content]: 內容
        ///-----------------------------------------------------
        XmlDocument xDoc = new XmlDocument();
        DataTable dt = new DataTable();
        DataTable dtnew = new DataTable();
        try
        {
            string guid = (string.IsNullOrEmpty(Request["guid"])) ? "" : Request["guid"].ToString().Trim();
            string item = (string.IsNullOrEmpty(Request["item"])) ? "" : Request["item"].ToString().Trim();
            string num = (string.IsNullOrEmpty(Request["num"])) ? "" : Request["num"].ToString().Trim();
            string questionType = (string.IsNullOrEmpty(Request["questionType"])) ? "" : Request["questionType"].ToString().Trim();
            string empid = (string.IsNullOrEmpty(Request["empid"])) ? "" : Request["empid"].ToString().Trim();
            string orgnization = (string.IsNullOrEmpty(Request["orgnization"])) ? "" : Request["orgnization"].ToString().Trim();
            string startday = (string.IsNullOrEmpty(Request["startday"])) ? "" : Request["startday"].ToString().Trim();
            string endday = (string.IsNullOrEmpty(Request["endday"])) ? "" : Request["endday"].ToString().Trim();
            string state = (string.IsNullOrEmpty(Request["state"])) ? "" : Request["state"].ToString().Trim();
            string content = (string.IsNullOrEmpty(Request["content"])) ? "" : Request["content"].ToString().Trim();
            string replycontent = (string.IsNullOrEmpty(Request["replycontent"])) ? "" : Request["replycontent"].ToString().Trim();
            string rtype = string.IsNullOrEmpty(Request["cktype"]) ? "" : Request["cktype"].ToString().Trim();
            string type = (string.IsNullOrEmpty(Request["type"])) ? "" : Request["type"].ToString().Trim();
            string urgency = (string.IsNullOrEmpty(Request["urgency"])) ? "" : Request["urgency"].ToString().Trim();
            string orderbyinfo = (string.IsNullOrEmpty(Request["orderbyinfo"])) ? "" : Request["orderbyinfo"].ToString().Trim();
            string orderbytype = (string.IsNullOrEmpty(Request["orderbytype"])) ? "" : Request["orderbytype"].ToString().Trim();

            if (type == "list")
            {
                db._項次 = item;
                db._編號 = num;
                db._員工編號 = empid;
                db._程度 = rtype;
                db._目前狀態 = state;
                db._內容 = content;
                db._回覆內容 = replycontent;
                db._程度 = urgency;
                db._排序名稱 = orderbyinfo;
                db._排序狀態 = orderbytype;

                dt = db.GetList(startday, endday);
            }
            else
            {
                db._guid = guid;

                dt = db.GetData();
            }

            string xmlstr = string.Empty;
            xmlstr = DataTableToXml.ConvertDatatableToXML(dt, "dataList", "data_item");
            xmlstr = "<?xml version='1.0' encoding='utf-8'?><root>" + xmlstr + "<datacount>" + dt.Rows.Count.ToString() + "</datacount></root>";
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