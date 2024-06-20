using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class index : System.Web.UI.Page
{
    public string name;
    public string empid;
    public string groupid;
    public string groupname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!LogInfo.isLogin)
        {
            //Response.Redirect("https://powersunba.com.tw/SSO/");
        }
        else
        {
            name = LogInfo.name;
            empid = LogInfo.mGuid;
            groupid = LogInfo.orgcd;
            groupname = LogInfo.orgname;
        }
    }
}