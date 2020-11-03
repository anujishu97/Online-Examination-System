using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_ChangeProfilePic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        if(!Page.IsPostBack)
            Image1.ImageUrl = "profilepic/" + Session["pic"];   
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string filename = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/testuser/profilepic/" + filename));
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "update Registration set profilepics='" + filename + "' where userid='" + Session["userid"] + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["pic"] = filename;
        Image1.ImageUrl = "profilepic/" + filename;   
    }
}