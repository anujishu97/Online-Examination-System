using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int d = 1; d <= 31; d++)
        {
            ddlDate.Items.Add(d.ToString());
        }
        string[] str = {"JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"};
        for (int m = 0; m <str.Length; m++)
        {
            ddlMonth.Items.Add(str[m]);
        }
        for (int y = 1947; y<=DateTime.Now.Year; y++)
        {
            ddlYear.Items.Add(y.ToString());
        }
        Random ra = new Random();
        string captcha="";
        int count = 0;
        int tot = ra.Next(6,9);
        do
        {
            int num = ra.Next(48,123);
            if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122))
            {
                captcha = captcha + (char)num;
                count++;
                if (count == tot)
                    break;
            }
        } while (true);
        imgCaptcha.AlternateText = captcha;
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string fname = txtFname.Text;
        string lname = txtLname.Text;
        string uid = txtUserId.Text;
        Session["userid"] = uid;
        Session["name"] = fname + " " + lname;
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select userid from Registration where userid='"+uid+"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            cn.Close();
            Server.Transfer("Failed.aspx");
            return;
        }
        cn.Close();
        string pass = txtPass.Text;
        string gen = RadioButtonList1.Text;
        string dob = ddlDate.Text + "/" + ddlMonth.SelectedIndex + "/" + ddlYear.Text;
        string mob = txtMobile.Text;
        string secq = ddlQst.Text;
        string answer = txtAnswer.Text;
        cn.Open();
        qr = "insert into Registration values('"+fname+"','"+lname+"','"+uid+"','"+pass+"','"+gen+"','"+dob+"','"+mob+"','"+secq+"','"+answer+"',null)";
        cmd = new SqlCommand(qr,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Server.Transfer("Registered.aspx");
    }
}