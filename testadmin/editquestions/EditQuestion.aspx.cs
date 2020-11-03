using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testadmin_editquestions_EditQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select qid from  questionBank where qid=" + TextBox1.Text;
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.Read())
        {
            lblMessage.Text = "Question id doest not exist...";
        }
        else
            lblMessage.Text = "";
        cn.Close();
    }
}