using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testadmin_AddPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Server.Transfer("Login.aspx");
            return;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckPaper())
        {
            lblMessage.Text = "<font color='red'>This paper has laready been addedd...</font>";
            return;
        }
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "insert into Papers(paper) values('" + txtPaper.Text + "')";
        SqlCommand cmd = new SqlCommand(qr,cn); 
        cmd.ExecuteNonQuery();
        cn.Close();
        lblMessage.Text = "Paper added....";
        GridView1.DataBind();
    }
    bool CheckPaper()
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select * from Papers where paper='"+txtPaper.Text+"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        bool exist = dr.Read(); 
        cn.Close();
        return exist;
    }
}