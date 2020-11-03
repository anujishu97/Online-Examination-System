using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_StartTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        if (Session["start"] != null)
        {
            Response.Redirect("../exam/Questions.aspx");
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select paper from TestRequest where test_code='" + txtCode.Text + "' and userid='"+Session["userid"]+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["paper"] = dr[0].ToString();
            Session["code"] = txtCode.Text;
            cn.Close();
            Response.Redirect("../exam/Questions.aspx");
            return;
        }
        cn.Close();
        lblMessage.Text = "Entered Test code does not exist";
    }
}