using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_ForgotPaassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select firstname,lastname,password,sec_ques,ans from Registration where userid='"+txtUserId.Text+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["name"] = dr[0] + " " + dr[1];
            Session["pass"] = dr[2].ToString();
            Session["secqst"] = dr[3].ToString();
            Session["ans"] = dr[4].ToString();
            cn.Close();
            Server.Transfer("RecoverPass.aspx");
        }
        else
            lblMessage.Text = "Entered user id does not exist...";
        cn.Close();
    }
}