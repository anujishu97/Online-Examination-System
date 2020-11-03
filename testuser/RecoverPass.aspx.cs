using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testuser_RecoverPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPassword_Click(object sender, EventArgs e)
    {
        if (txtAns.Text != Session["ans"].ToString())
        {
            lblMessage.Text = "<font color='red'>Enterred answer is wrong</font>";
            return;
        }
        lblMessage.Text = "<font color='blue'>Your password is:"+Session["pass"]+"</font>";
    }
}