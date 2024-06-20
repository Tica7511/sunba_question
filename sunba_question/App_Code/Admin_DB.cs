using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

/// <summary>
/// Admin_DB 的摘要描述
/// </summary>
public class Admin_DB
{
    string KeyWord = string.Empty;
    public string _KeyWord { set { KeyWord = value; } }
    #region 私用
    string id = string.Empty;
    string cname = string.Empty;
    string extend1 = string.Empty;
    string department = string.Empty;
    #endregion
    #region 公用
    public string _id
    {
        set { id = value; }
    }
    public string _cname
    {
        set { cname = value; }
    }
    public string _extend1
    {
        set { extend1 = value; }
    }
    public string _department
    {
        set { department = value; }
    }
    #endregion

    public DataTable GetList()
    {
        SqlCommand oCmd = new SqlCommand();
        oCmd.Connection = new SqlConnection(ConfigurationManager.AppSettings["SSOConnectionString"]);
        StringBuilder sb = new StringBuilder();

        sb.Append(@" select GROUP_ID, GROUP_NAME from V_人員資料表2 
  where GROUP_ID is not null or GROUP_ID<>''
  group by GROUP_ID, GROUP_NAME
  order by GROUP_NAME ");

        oCmd.CommandText = sb.ToString();
        oCmd.CommandType = CommandType.Text;
        SqlDataAdapter oda = new SqlDataAdapter(oCmd);
        DataTable ds = new DataTable();

        //oCmd.Parameters.AddWithValue("@extend1", extend1);
        //oCmd.Parameters.AddWithValue("@department", department);
        //oCmd.Parameters.AddWithValue("@cname", cname);

        oda.Fill(ds);
        return ds;
    }

    public DataTable GetEmail()
    {
        SqlCommand oCmd = new SqlCommand();
        oCmd.Connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString2"]);
        StringBuilder sb = new StringBuilder();

        sb.Append(@"select distinct email 
  from dbo.admin 
  where cname =@cname ");

        oCmd.CommandText = sb.ToString();
        oCmd.CommandType = CommandType.Text;
        SqlDataAdapter oda = new SqlDataAdapter(oCmd);
        DataTable ds = new DataTable();

        oCmd.Parameters.AddWithValue("@cname", cname);

        oda.Fill(ds);
        return ds;
    }
}