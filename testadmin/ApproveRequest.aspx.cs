using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testadmin_ApproveRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Server.Transfer("Login.aspx");
            return;
        }
        string rid = Request["rid"];
        string code = GenCode();
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "update TestRequest set status='approved',test_code='"+code+"' where reqid="+rid;
        SqlCommand cmd = new SqlCommand(qr,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("TestCode.aspx");
    }
    string GenCode()
    {
        string code = "SPECTECH";
        Random ra = new Random();
        do
        {
            int num = ra.Next(100000,1000000);
            code = code + num;
        } while (CheckCcode(code));
        return code;
    }
    bool CheckCcode(string code)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select test_code from TestRequest where test_code='"+code+"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        bool exist = dr.Read();
        cn.Close();
        return exist;
    }
}