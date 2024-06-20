using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    public string aaa;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!LogInfo.isLogin)
        {
            Response.Redirect("https://powersunba.com.tw/SSOTEST2/");
        }
        else
        {
            aaa = Session["登入姓名"].ToString();
        }
    }
}