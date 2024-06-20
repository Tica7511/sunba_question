using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class indexAdmin : System.Web.UI.Page
{
    public string name;
    public string competence;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (LogInfo.account == "")
        //    Response.Write("<script>alert('請重新登入'); location='login.aspx';</script>");
        //else
        //{
        //    // 登入者名稱
        //    name = LogInfo.name;
        //    // 登入者權限
        //    competence = LogInfo.competence;
        //}

        //DataTable isdt = Account.IfAccountPasswordEqual(LogInfo.id);
        //if (isdt.Rows.Count > 0)
        //{
        //    if (isdt.Rows[0]["ifEqual"].ToString().Trim() == "Y")
        //    {
        //        Response.Redirect("ChangePassword.aspx");
        //    }
        //}
    }
}