using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesForVisitor_wfSignOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Hello"] == null)
        {
            lblHello.Text = "You arn't logged in";
        }
        else
        {
            lblHello.Text = "Thank you " + Session["Hello"].ToString();
            Session.Abandon();
        }
    }
}