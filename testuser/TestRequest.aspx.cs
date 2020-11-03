using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_TestRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (CheckRequest())
        {
            Server.Transfer("RequestFailed.aspx");
            return;
        }
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "insert into TestRequest values('"+Session["userid"]+"','"+ddlPaper.Text+"','"+DateTime.Now.ToShortDateString()+"',null,'pending')";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Server.Transfer("SaveRequest.aspx");
    }
    bool CheckRequest()
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select * from TestRequest where paper='"+ddlPaper.Text+"' and status in('pending','approved') and userid='"+Session["userid"]+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr=cmd.ExecuteReader();
        Boolean exist = dr.Read();
        cn.Close();
        return exist;
    }
}