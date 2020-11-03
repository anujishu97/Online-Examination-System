using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testuser_TestCodes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        if (GridView1.Rows.Count == 0)
        {
            Pending.InnerText = "No Test Code found....";
            Pending.Style.Add("color", "red");
        }
    }
}