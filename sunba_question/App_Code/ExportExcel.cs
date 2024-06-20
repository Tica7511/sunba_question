using System;
using System.Web;
using System.Configuration;
using System.Net;
using System.Data;
using System.IO;
using System.Linq;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.SS.Util;

namespace ED.HR.EXPORTEXCEL.WebForm
{
    public partial class Excel : System.Web.UI.Page
    {
        QuestionForm_DB qdb = new QuestionForm_DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Common.FilterCheckMarxString(Request.QueryString["type"]);
            string item = Common.FilterCheckMarxString(Request.QueryString["item"]);
            string num = Common.FilterCheckMarxString(Request.QueryString["num"]);
            string fillformname = Common.FilterCheckMarxString(Request.QueryString["fillformname"]);
            string companylist = Common.FilterCheckMarxString(Request.QueryString["companylist"]);
            string orgnization = Common.FilterCheckMarxString(Request.QueryString["orgnization"]);
            string startday = Common.FilterCheckMarxString(Request.QueryString["startday"]);
            string endday = Common.FilterCheckMarxString(Request.QueryString["endday"]);
            string state = Common.FilterCheckMarxString(Request.QueryString["state"]);
            string content = Common.FilterCheckMarxString(Request.QueryString["content"]);
            string replycontent = Common.FilterCheckMarxString(Request.QueryString["replycontent"]);
            int nCount = 0;

            string FilePath = Server.MapPath("~/Sample/exportexcel.xls");
            HSSFWorkbook hssfworkbook;
            FileStream sampleFile;

            sampleFile = new FileStream(FilePath, FileMode.Open, FileAccess.Read);

            using (sampleFile)
            {
                //建立Excel
                hssfworkbook = new HSSFWorkbook(sampleFile);
            }

            DataTable dt = new DataTable();

            if (type == "print")
            {
                qdb._項次 = item;
                qdb._編號 = num;
                qdb._填表人 = fillformname;
                qdb._目前狀態 = state;
                qdb._內容 = content;
                qdb._回覆內容 = replycontent;
                dt = qdb.GetExcelList();

                Sheet sheet = hssfworkbook.GetSheetAt(0);
                hssfworkbook.SetSheetName(0, "提問清單_編號2023-02以前");
                sheet.CreateRow(0);
                sheet.GetRow(0).CreateCell(0).SetCellValue("項次");
                sheet.GetRow(0).CreateCell(1).SetCellValue("編號");
                sheet.GetRow(0).CreateCell(2).SetCellValue("填表人");
                sheet.GetRow(0).CreateCell(3).SetCellValue("公司別");
                sheet.GetRow(0).CreateCell(4).SetCellValue("單位");
                sheet.GetRow(0).CreateCell(5).SetCellValue("提出日期");
                sheet.GetRow(0).CreateCell(6).SetCellValue("急迫性");
                sheet.GetRow(0).CreateCell(7).SetCellValue("內容");
                sheet.GetRow(0).CreateCell(8).SetCellValue("回覆內容");
                sheet.GetRow(0).CreateCell(9).SetCellValue("回覆日期");
                sheet.GetRow(0).CreateCell(10).SetCellValue("預計完成日");
                sheet.GetRow(0).CreateCell(11).SetCellValue("狀態");
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        sheet.CreateRow(i + 1);
                        sheet.GetRow(i + 1).CreateCell(0).SetCellValue(dt.Rows[i]["項次"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(1).SetCellValue(dt.Rows[i]["編號"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(2).SetCellValue(dt.Rows[i]["填表人"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(3).SetCellValue(dt.Rows[i]["公司別_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(4).SetCellValue(dt.Rows[i]["單位_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(5).SetCellValue(dt.Rows[i]["提出日期"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(6).SetCellValue(dt.Rows[i]["程度_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(7).SetCellValue(dt.Rows[i]["內容_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(8).SetCellValue(dt.Rows[i]["回覆內容_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(9).SetCellValue(dt.Rows[i]["回覆日期"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(10).SetCellValue(dt.Rows[i]["預計完成日"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(11).SetCellValue(dt.Rows[i]["目前狀態_V"].ToString().Trim());
                    }
                }

                dt.Clear();

                hssfworkbook.CreateSheet("提問清單_編號2023-03以後");
                sheet = hssfworkbook.GetSheetAt(1);

                qdb._項次 = item;
                qdb._編號 = num;
                qdb._填表人 = fillformname;
                qdb._目前狀態 = state;
                qdb._內容 = content;
                qdb._內容 = replycontent;
                dt = qdb.GetExcelList2();

                sheet.CreateRow(0);
                sheet.GetRow(0).CreateCell(0).SetCellValue("項次");
                sheet.GetRow(0).CreateCell(1).SetCellValue("編號");
                sheet.GetRow(0).CreateCell(2).SetCellValue("填表人");
                sheet.GetRow(0).CreateCell(3).SetCellValue("公司別");
                sheet.GetRow(0).CreateCell(4).SetCellValue("單位");
                sheet.GetRow(0).CreateCell(5).SetCellValue("提出日期");
                sheet.GetRow(0).CreateCell(6).SetCellValue("急迫性");
                sheet.GetRow(0).CreateCell(7).SetCellValue("內容");
                sheet.GetRow(0).CreateCell(8).SetCellValue("回覆內容");
                sheet.GetRow(0).CreateCell(9).SetCellValue("回覆日期");
                sheet.GetRow(0).CreateCell(10).SetCellValue("預計完成日");
                sheet.GetRow(0).CreateCell(11).SetCellValue("狀態");
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        sheet.CreateRow(i + 1);
                        sheet.GetRow(i + 1).CreateCell(0).SetCellValue(dt.Rows[i]["項次"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(1).SetCellValue(dt.Rows[i]["編號"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(2).SetCellValue(dt.Rows[i]["填表人"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(3).SetCellValue(dt.Rows[i]["公司別_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(4).SetCellValue(dt.Rows[i]["單位_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(5).SetCellValue(dt.Rows[i]["提出日期"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(6).SetCellValue(dt.Rows[i]["程度_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(7).SetCellValue(dt.Rows[i]["內容_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(8).SetCellValue(dt.Rows[i]["回覆內容_V"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(9).SetCellValue(dt.Rows[i]["回覆日期"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(10).SetCellValue(dt.Rows[i]["預計完成日"].ToString().Trim());
                        sheet.GetRow(i + 1).CreateCell(11).SetCellValue(dt.Rows[i]["目前狀態_V"].ToString().Trim());
                    }
                }

                Response.ContentType = "application / vnd.ms - excel";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode("線上提問列印單.xls", System.Text.Encoding.UTF8));
                Response.Clear();

                using (MemoryStream ms = new MemoryStream())
                {
                    hssfworkbook.Write(ms);

                    Response.BinaryWrite(ms.GetBuffer());
                    Response.Flush();
                    Response.End();
                }
            }
            else
            {
                #region 狀態統計

                Sheet sheet = hssfworkbook.GetSheetAt(0);
                hssfworkbook.SetSheetName(0, "狀態統計");
                sheet = hssfworkbook.GetSheetAt(0);
                sheet.CreateRow(0);
                sheet.AddMergedRegion(new CellRangeAddress(0, 0, 0, 1)); 
                sheet.GetRow(0).CreateCell(0).SetCellValue("新資料");

                sheet.CreateRow(1);
                sheet.GetRow(1).CreateCell(0).SetCellValue("狀態");
                sheet.GetRow(1).CreateCell(1).SetCellValue("總計");

                dt = qdb.GetStatisticState();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        sheet.CreateRow(i + 2);
                        sheet.GetRow(i + 2).CreateCell(0).SetCellValue(dt.Rows[i]["項目名稱"].ToString().Trim());
                        sheet.GetRow(i + 2).CreateCell(1).SetCellValue(dt.Rows[i]["總計"].ToString().Trim());
                    }
                }
                nCount = dt.Rows.Count;
                dt.Clear();

                sheet.CreateRow(nCount + 2);
                sheet.GetRow(nCount + 2).CreateCell(0).SetCellValue("");
                sheet.GetRow(nCount + 2).CreateCell(0).SetCellValue("");

                sheet.CreateRow(nCount + 3);
                sheet.AddMergedRegion(new CellRangeAddress(nCount + 3, nCount + 3, 0, 1));
                sheet.GetRow(nCount + 3).CreateCell(0).SetCellValue("舊資料");

                sheet.CreateRow(nCount + 4);
                sheet.GetRow(nCount + 4).CreateCell(0).SetCellValue("狀態");
                sheet.GetRow(nCount + 4).CreateCell(1).SetCellValue("總計");

                dt = qdb.GetStatisticState2();
                if (dt.Rows.Count > 0)
                {
                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        sheet.CreateRow(j + 4 + nCount);
                        sheet.GetRow(j + 4 + nCount).CreateCell(0).SetCellValue(dt.Rows[j]["項目名稱"].ToString().Trim());
                        sheet.GetRow(j + 4 + nCount).CreateCell(1).SetCellValue(dt.Rows[j]["總計"].ToString().Trim());
                    }
                }

                #endregion

                #region 程度統計

                hssfworkbook.CreateSheet("程度統計");
                sheet = hssfworkbook.GetSheetAt(1);
                sheet.CreateRow(0);
                sheet.AddMergedRegion(new CellRangeAddress(0, 0, 0, 1));
                sheet.GetRow(0).CreateCell(0).SetCellValue("新資料");

                sheet.CreateRow(1);
                sheet.GetRow(1).CreateCell(0).SetCellValue("狀態");
                sheet.GetRow(1).CreateCell(1).SetCellValue("總計");

                dt = qdb.GetStatisticType();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        sheet.CreateRow(i + 2);
                        sheet.GetRow(i + 2).CreateCell(0).SetCellValue(dt.Rows[i]["項目名稱"].ToString().Trim());
                        sheet.GetRow(i + 2).CreateCell(1).SetCellValue(dt.Rows[i]["總計"].ToString().Trim());
                    }
                }
                nCount = dt.Rows.Count;
                dt.Clear();

                sheet.CreateRow(nCount + 2);
                sheet.GetRow(nCount + 2).CreateCell(0).SetCellValue("");
                sheet.GetRow(nCount + 2).CreateCell(0).SetCellValue("");

                sheet.CreateRow(nCount + 3);
                sheet.AddMergedRegion(new CellRangeAddress(nCount + 3, nCount + 3, 0, 1));
                sheet.GetRow(nCount + 3).CreateCell(0).SetCellValue("舊資料");

                sheet.CreateRow(nCount + 4);
                sheet.GetRow(nCount + 4).CreateCell(0).SetCellValue("狀態");
                sheet.GetRow(nCount + 4).CreateCell(1).SetCellValue("總計");

                dt = qdb.GetStatisticType2();
                if (dt.Rows.Count > 0)
                {
                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        sheet.CreateRow(j + 4 + nCount);
                        sheet.GetRow(j + 4 + nCount).CreateCell(0).SetCellValue(dt.Rows[j]["項目名稱"].ToString().Trim());
                        sheet.GetRow(j + 4 + nCount).CreateCell(1).SetCellValue(dt.Rows[j]["總計"].ToString().Trim());
                    }
                }

                #endregion

                Response.ContentType = "application / vnd.ms - excel";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode("線上提問統計單.xls", System.Text.Encoding.UTF8));
                Response.Clear();

                using (MemoryStream ms = new MemoryStream())
                {
                    hssfworkbook.Write(ms);

                    Response.BinaryWrite(ms.GetBuffer());
                    Response.Flush();
                    Response.End();
                }
            }
        }
    }
}