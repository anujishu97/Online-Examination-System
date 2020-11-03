using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class exam_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        Session["start"] = null;
        ShowPreview();
        int[] ca = (int[])Session["cans"];
        int[] ma = (int[])Session["ma"];
        int toca = 0;
        for (int i = 0; i < ca.Length; i++)
        {
            if (ca[i] == ma[i])
                toca++;
        }
        int toica = ca.Length - toca;
        int p = (int)((toca / (float)ca.Length) * 100);
        lblCorrect.Text = "<h2 style='color:green'>Total correct answers:"+toca+"</h2>";
        lblIncorrect.Text = "<h2 style='color:red'>Total incorrect answers:" + toica + "</h2>";
        if(p>=50)
            lblPercentage.Text = "<h2 style='color:green'>Percentage Gained:"+p+"</h2>";
        else
            lblPercentage.Text = "<h2 style='color:red'>Percentage Gained:" + p + "</h2>";
        SaveResult(ca.Length,toca,p);
        Session["end"] = "done";
    }
    void ShowPreview()
    {
        int[] ca = (int[])Session["cans"];
        int[] ma = (int[])Session["ma"];
        int noq = (int)Session["tq"];
        int q = 30;
        int row = noq / q;
        if (noq % q != 0)
            row++;
        int x = q, y = 0;
        for (int r = 1; r <= row; r++)
        {
            if (r == row && noq % q!= 0)
                x = noq % q;
            TableRow tr = new TableRow();
            Table1.Rows.Add(tr);
            for (int c = 1; c <= x; c++)
            {
                TableCell tc = new TableCell();
                tr.Cells.Add(tc);
                Button bt = new Button();
                if (ca[y] == ma[y])
                    bt.Style.Add("background-color", "green");
                else
                    bt.Style.Add("background-color", "red");
                bt.Style.Add("color", "cyan");
                bt.Style.Add("font-size", "20");
                bt.Text = (++y).ToString();
                bt.Width = 35;
                bt.Height = 35;
                tc.Controls.Add(bt);
            }
        }
    }
    void SaveResult(int tq,int tc,int p)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "insert into ResultInfo values('"+Session["userid"]+"','"+Session["paper"]+"',"+tq+","+tc+","+(tq-tc)+","+p+",'"+DateTime.Now.ToShortDateString()+"','"+DateTime.Now.ToShortTimeString()+"')";
        SqlCommand cmd = new SqlCommand(qr,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        DeleteRecord();
    }
    void DeleteRecord()
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "delete from TestRequest where test_code='"+Session["code"]+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}