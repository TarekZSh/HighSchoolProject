using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class PagesForMorshd_wfGreetingMorshd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        int hh = DateTime.Now.Hour;
        if (Session["IDMorshd"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        else
        {
            if (hh >= 6 && hh < 12)
                str = "Good Morning, ";
            else if (hh >= 12 && hh < 18)
                str = "Good Afternoon, ";
            else if (hh >= 18 && hh <= 23)
                str = "Good Evening, ";
            else
                str = "Good Night, ";

            lblHello.Text = str + " " + Session["Hello"].ToString();
        }
        if (!Page.IsPostBack)
        {
            wucChangePassword.Visible = false;
            btChangePassword.Text = "Change Pasword";
        }
    }
    protected void btChangePassword_Click(object sender, EventArgs e)
    {
        if (wucChangePassword.Visible)
        {
            wucChangePassword.Visible = false;
            btChangePassword.Text = "Change Pasword";
        }
        else
        {
            wucChangePassword.Visible = true;
            btChangePassword.Text = "Close Change Pasword";
        }
    }
}
