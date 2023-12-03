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

public partial class PagesForVisitor_wfLogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    protected void CheckPerson()//קוד 1
    {
        string strSQL = "Select * From tblPerson";
        try
        {
            DataTable dt = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dt.Rows)
            {
                if (r["UserName"].ToString() == Login1.UserName &&
                   r["Password"].ToString() == Login1.Password)
                {
                    FormsAuthentication.RedirectFromLoginPage("", false);
                    Session["Hello"] = "mr. " + r["FirstName"].ToString() + " " +
                        r["LastName"].ToString();  //Session.SessionID.ToString();
                    Session["IDPerson"] = r["IDPerson"].ToString();
                    Response.Redirect(@"../PagesForPerson/wfGreetingPerson.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    
    protected void CheckAdmins()//קוד 2
    {
        string strSQL = "Select * From tblAdmins Where UserName='" + Login1.UserName +
            "' and [Password]='" + Login1.Password + "'";
        try
        {
            DataTable dt = DoQueries.ExecuteDataTable(strSQL);
            if (dt.Rows.Count != 0)
            {
                FormsAuthentication.RedirectFromLoginPage("", false);
                Session["Hello"] = "mr. " + dt.Rows[0]["Name"].ToString();

                Session["IDAdmin"] = dt.Rows[0]["IDAdmin"].ToString();
                Response.Redirect("../PagesForAdmin/wfGreetingAdmin.aspx");

            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void CheckMorshd()
    {
        string strSQL = "Select * From tblMorshd";
        try
        {
            DataTable dt = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dt.Rows)
            {
                if (r["UserName"].ToString() == Login1.UserName &&
                   r["Password"].ToString() == Login1.Password)
                {
                    FormsAuthentication.RedirectFromLoginPage("", false);
                    Session["Hello"] = "mr. " + r["Name"].ToString();

                    Session["IDMorshd"] = r["IDMorshd"].ToString();
                    Response.Redirect("../PagesForMorshd/wfGreetingMorshd.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Session.RemoveAll();

        CheckAdmins();
        CheckMorshd();
        CheckPerson();
        
    }
}
