using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class Handler_AddReplyForm : System.Web.UI.Page
{
    FileTable_DB fdb = new FileTable_DB();
    QuestionForm_DB qdb = new QuestionForm_DB();
    QuestionFormLog_DB qldb = new QuestionFormLog_DB();
    CodeTable_DB cdb = new CodeTable_DB();
    SendMail send_mail = new SendMail();
    Admin_DB adb = new Admin_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
        ///功    能: 新增/編輯 提問表 
        ///說    明:
        /// * Request["guid"]: guid 
        /// * Request["cpid"]: 業者Guid 
        /// * Request["category"]: 網頁類別 gas/oil 
        /// * Request["type"]: 檔案類型  
        ///-----------------------------------------------------

        XmlDocument xDoc = new XmlDocument();

        /// Transaction
        SqlConnection oConn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
        oConn.Open();
        SqlCommand oCmmd = new SqlCommand();
        oCmmd.Connection = oConn;
        SqlTransaction myTrans = oConn.BeginTransaction();
        oCmmd.Transaction = myTrans;

        try
        {

            string guid = (string.IsNullOrEmpty(Request["guid"])) ? "" : Request["guid"].ToString().Trim();
            string fillformname = (string.IsNullOrEmpty(Request["fillformname"])) ? "" : Request["fillformname"].ToString().Trim();
            string email = (string.IsNullOrEmpty(Request["email"])) ? "" : Request["email"].ToString().Trim();
            string returnday = (string.IsNullOrEmpty(Request["returnday"])) ? "" : Request["returnday"].ToString().Trim();
            string finishday = (string.IsNullOrEmpty(Request["finishday"])) ? "" : Request["finishday"].ToString().Trim();
            string state = (string.IsNullOrEmpty(Request["state"])) ? "" : Request["state"].ToString().Trim();
            string nContent = (string.IsNullOrEmpty(Request["nContent"])) ? "" : Request["nContent"].ToString().Trim();
            string mode = (string.IsNullOrEmpty(Request["mode"])) ? "" : Request["mode"].ToString().Trim();
            string tmpGuid = (Server.UrlDecode(mode) == "new") ? Guid.NewGuid().ToString("N") : guid;
            string xmlstr = string.Empty;
            DataTable dt = new DataTable();
            DataTable adt = new DataTable();
            DataTable qdt = new DataTable();
            string sn = string.Empty;
            string mailTo = string.Empty;
            string mailContent = string.Empty;
            string state_v = string.Empty;
            string qcontent = string.Empty;

            qdb._guid = tmpGuid;
            qdb._回覆日期 = Server.UrlDecode(returnday);
            qdb._預計完成日 = Server.UrlDecode(finishday);
            qdb._目前狀態 = Server.UrlDecode(state);
            qdb._回覆內容 = Server.UrlDecode(nContent);

            qdb.UpdateData2(oConn, myTrans);

            qldb._類別 = "編輯";
            qldb._儲存類別 = "回覆人員";
            qldb._填表人 = Server.UrlDecode(fillformname);
            qldb._儲存內容 = Server.UrlDecode(returnday) + Server.UrlDecode(finishday) + Server.UrlDecode(state)
                + Server.UrlDecode(nContent);

            qldb.InsertData(oConn, myTrans);

            cdb._群組代碼 = "004";
            cdb._項目代碼 = Server.UrlDecode(state);
            dt = cdb.GetList();

            if (dt.Rows.Count > 0)
            {
                state_v = dt.Rows[0]["項目名稱"].ToString().Trim();
            }

            qdt = qdb.GetDataTran(oConn, myTrans);

            if (qdt.Rows.Count > 0)
            {
                qcontent = qdt.Rows[0]["內容"].ToString().Trim();
            }

            //adb._cname = Server.UrlDecode(fillformname);
            //adt = adb.GetEmail();

            //if (adt.Rows.Count > 0)
            //{
            //    mailTo = adt.Rows[0]["email"].ToString().Trim();
            //}

            mailTo = Server.UrlDecode(email);

            if(state == "04")
            {
                string Subject = "新增提問單回覆人員之回覆內容";
                string rerurnday_v = string.IsNullOrEmpty(returnday) ? "" : Server.UrlDecode(returnday).Substring(0, 4) + "/" + Server.UrlDecode(returnday).Substring(4, 2) + "/" + Server.UrlDecode(returnday).Substring(6, 2);
                string finishday_v = string.IsNullOrEmpty(finishday) ? "" : Server.UrlDecode(finishday).Substring(0, 4) + "/" + Server.UrlDecode(finishday).Substring(4, 2) + "/" + Server.UrlDecode(finishday).Substring(6, 2);
                mailContent = "回覆日期: " + rerurnday_v + "<br/>預計完成日: " + finishday_v + "<br/>目前狀態: " + state_v + "<br/>問題描述: " + qcontent + 
                    "<br/>-----------------------------------------------------------------------------<br/>回覆內容: " + Server.UrlDecode(nContent) + "<br/><br/><br/>此郵件為系統自動產生，請勿回覆本郵件";
                //send_mail.SendMailFunction(mailTo, Subject, mailContent, "", "");
            }            

            // 檔案上傳
            HttpFileCollection uploadFiles = Request.Files;
            for (int i = 0; i < uploadFiles.Count; i++)
            {
                HttpPostedFile File = uploadFiles[i];
                if (File.FileName.Trim() != "")
                {
                    string UpLoadPath = ConfigurationManager.AppSettings["UploadFileRootDir"] + "reply\\";
                    //原檔名
                    string orgName = Path.GetFileNameWithoutExtension(File.FileName);

                    //副檔名
                    string extension = System.IO.Path.GetExtension(File.FileName).ToLower();

                    //取得TIME與GUID
                    string timeguid = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Guid.NewGuid().ToString("N");
                    //儲存的名稱
                    string newName = timeguid.Replace("..", "").Replace("\\", "") + extension.Replace("..", "").Replace("\\", "");

                    string file_size = File.ContentLength.ToString();

                    //如果上傳路徑中沒有該目錄，則自動新增
                    if (!Directory.Exists(UpLoadPath.Substring(0, UpLoadPath.LastIndexOf("\\"))))
                    {
                        Directory.CreateDirectory(UpLoadPath.Substring(0, UpLoadPath.LastIndexOf("\\")));
                    }

                    cdb._群組代碼 = "006";
                    cdb._項目代碼 = "02";
                    DataTable cdt = cdb.GetList();

                    if (cdt.Rows.Count > 0)
                    {
                        fdb._guid = tmpGuid;
                        fdb._檔案類型 = "02";

                        if (!string.IsNullOrEmpty(sn))
                        {
                            if (0 < Convert.ToInt32(sn) && Convert.ToInt32(sn) < 9)
                            {
                                sn = "0" + (Convert.ToInt32(sn) + 1).ToString();
                            }
                            else
                            {
                                sn = (Convert.ToInt32(sn) + 1).ToString();
                            }
                        }
                        else
                        {
                            DataTable fdt = fdb.GetMaxSn();

                            if (fdt.Rows.Count > 0)
                            {
                                int maxsn = Convert.ToInt32(fdt.Rows[0]["Sort"].ToString().Trim());
                                if (maxsn > 9)
                                    sn = maxsn.ToString();
                                else
                                    sn = "0" + maxsn.ToString();
                            }
                            else
                            {
                                sn = "01";
                            }
                        }
                    }

                    File.SaveAs(UpLoadPath + newName);
                    //進資料庫前, 儲存名稱要去除副檔名
                    newName = newName.Replace(extension, "");

                    fdb._guid = tmpGuid;
                    fdb._原檔名 = orgName;
                    fdb._新檔名 = newName;
                    fdb._附檔名 = extension;
                    fdb._排序 = sn;
                    fdb._檔案大小 = file_size;
                    fdb._建立日期 = DateTime.Now;

                    fdb.UpdateFile_Trans(oConn, myTrans);
                }
            }

            myTrans.Commit();

            xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><Response>儲存完成</Response></root>";
            xDoc.LoadXml(xmlstr);
        }
        catch (Exception ex)
        {
            myTrans.Rollback();
            xDoc = ExceptionUtil.GetExceptionDocument(ex);
        }
        finally
        {
            oCmmd.Connection.Close();
            oConn.Close();
        }
        Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
        xDoc.Save(Response.Output);
    }
}