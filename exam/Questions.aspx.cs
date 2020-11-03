using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class exam_Questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        if (Session["end"] != null)
        {
            Session["end"] = null;
            Response.Redirect("../testuser/Login.aspx");
            return;
        }
        if (!Page.IsPostBack)
        {
            Session["start"] = "start";
            SqlConnection cn = (SqlConnection)Session["cn"];
            cn.Open();
            string qr = "select * from QuestionBank where paper='" + Session["paper"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(qr, cn);
            DataSet ds = new DataSet("qb");
            da.Fill(ds, "qb");
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.Rows[0];
            int tq = dt.Rows.Count;
            lblTotal.Text = "Total question:" + tq;
            Session["tq"] = tq;
            int [] ma=new int[tq];
            int[] cans = new int[tq];
            for (int i = 0; i < ma.Length; i++)
            {
                ma[i] = -1;
            }
            Session["ma"] = ma;
            Session["dt"] = dt;
            Session["qi"] = 0;
            Session["cans"] = cans;
            Button[] bt = new Button[tq];
            Session["bt"] = bt;
            for (int i = 0; i < tq; i++)
            {
                DataRow dr1 = dt.Rows[i];
                cans[i] = Convert.ToInt32(dr1[7]);
            }
            cn.Close();
            ShowQuestions();
            ShowPreview();
            int m=tq/2;
            Session["m"] = m;
            int s=0;
            if (tq % 2 != 0)
                s=30;
            Session["s"] = s;
            lblTimer.Text = (m < 10 ? "0" + m : m.ToString()) + ":" + (s < 10 ? "0" + s : s.ToString());
        }
    }
    protected void btnFirst_Click(object sender, EventArgs e)
    {
        if ((int)Session["qi"] == 0)
        {
            return;
        }
        Session["qi"] = 0;
        ShowQuestions();
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        if ((int)Session["qi"] ==0)
        {
            return;
        }
        Session["qi"] = (int)Session["qi"]-1;
        ShowQuestions();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        if ((int)Session["qi"] == (int)Session["tq"] - 1)
        {
            return;
        }
        Session["qi"] = (int)Session["qi"] + 1;
        ShowQuestions();
    }
    protected void btgnLast_Click(object sender, EventArgs e)
    {
        if ((int)Session["qi"] == (int)Session["tq"] - 1)
        {
            return;
        }
        Session["qi"] = (int)Session["tq"] - 1;
        ShowQuestions();
    }
    void ShowQuestions()
    {
        rbAnswers.Items.Clear();
        int qi=(int)Session["qi"];
        DataTable dt=(DataTable)Session["dt"];
        DataRow dr = dt.Rows[qi];
        lblQuestion.Text = (qi+1)+")" + dr[2];
        for (int i = 3; i < 7; i++)
        {
            rbAnswers.Items.Add(dr[i].ToString());
        }
        int[] ma = (int[])Session["ma"];
        if (ma[qi] != -1)
            rbAnswers.SelectedIndex = ma[qi];
    }
    void ShowPreview()
    {
        Button[] bt = (Button[])Session["bt"]; 
        int noq = (int)Session["tq"];
        int row = noq / 10;
        if (noq % 10 != 0)
            row++;
        int x=10,y=0;
        for (int r = 1; r <= row; r++)
        {
            if (r == row && noq % 10 != 0)
                x = noq % 10;
            TableRow tr = new TableRow();
            Table1.Rows.Add(tr);
            for (int c = 1; c <= x; c++)
            {
                TableCell tc = new TableCell();
                tr.Cells.Add(tc);
                bt[y] = new Button();
                bt[y].Text = (y+1).ToString();
                bt[y].Style.Add("background-color","red");
                bt[y].Style.Add("color","cyan");
                bt[y].Width = 30;
                tc.Controls.Add(bt[y++]);
            }
        }
        int[] ma = (int[])Session["ma"];
        for (int i = 0; i < ma.Length; i++)
        {
            if (ma[i] != -1)
            {
                Response.Write(i);
                bt[i].Style.Add("background-color", "green");
            }
        }
    }
    protected void rbAnswers_SelectedIndexChanged(object sender, EventArgs e)
    {
        int[] ma = (int[])Session["ma"];
        int qi=(int)Session["qi"];
        ma[qi] = rbAnswers.SelectedIndex;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int m = (int)Session["m"];
        int s = (int)Session["s"];
        lblTimer.Text = (m < 10 ? "0" + m : m.ToString()) + ":" + (s < 10 ? "0" + s : s.ToString());
        if (s == 0)
        {
            if (m == 0 && s == 0)
            {
                TimeOver();
            }
            s = 60;
            m--;
            Session["m"] = m;
        }
        s--;
        Session["s"] = s;
    }
    void TimeOver()
    {
        Timer1.Enabled = false;
        btnFirst.Enabled = false;
        btnNext.Enabled = false;
        btgnLast.Enabled = false;
        btnPrevious.Enabled = false;
        rbAnswers.Enabled = false;
        btnFirst.Style.Add("background-color", "#E0E0E0");
        btnNext.Style.Add("background-color", "#E0E0E0");
        btnPrevious.Style.Add("background-color", "#E0E0E0");
        btgnLast.Style.Add("background-color", "#E0E0E0");
    }
    protected void btnEnd_Click(object sender, EventArgs e)
    {
        Response.Redirect("../exam/Result.aspx");
    }
}