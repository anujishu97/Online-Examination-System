using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.SmsAPI;

public partial class testuser_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SMS.APIType = SMSGateway.Site2SMS;

        SMS.MashapeKey = "OPi6ytAjogmshJnwtFzf7b8nhXpdp1S1GaIjsnOfCj4XgOFu2f";
        //SMS.Username = .Text.Trim();
        //SMS.Password = txtPassword.Text.Trim();
        if (TextBox1.Text.Trim().IndexOf(",") == -1)
        {
            //Single SMS
            SMS.SendSms(TextBox1.Text.Trim(), "Welcome");
        }
    }
}