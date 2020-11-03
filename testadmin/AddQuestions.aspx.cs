using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testadmin_AddQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Server.Transfer("Login.aspx");
            return;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "insert into QuestionBank values('" + ddlPaper.Text + "','"+txtQuestion.Text+"','"+txtAnswer1.Text+"','"+txtAnswer2.Text+"','"+txtAnswer3.Text+"','"+txtAnswer4.Text+"',"+ddlAnswer.Text+")";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblMessage.Text = "Question added....";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtQuestion.Text = "";
        txtAnswer1.Text = "";
        txtAnswer2.Text = "";
        txtAnswer3.Text = "";
        txtAnswer4.Text = "";
        lblMessage.Text = "";
        ddlAnswer.SelectedIndex = 0;
    }
}