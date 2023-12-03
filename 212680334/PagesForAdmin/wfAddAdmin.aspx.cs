
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

public partial class PagesForAdmin_wfAddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
        lblMUserNamePassword.Text = "";
    }
    protected void ForRowInserting()
    {
        AdminDetails admDetails = new AdminDetails();
        Admin adm = new Admin();

        admDetails.Name = tbName.Text;
        admDetails.Email = tbEmail.Text;
        admDetails.UserName = tbUserName.Text;
        admDetails.Password = tbPassword.Text;

        //--Add
        try
        {
            if (!adm.ExistAdmin(admDetails))
            {
                adm.AddAdmin(admDetails);
                lblMessage.Text = "The Admin Added Successfully";
            }
            else
                lblMessage.Text = "The Admin already exist";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected bool CheckUserNamePassword()
    {
        string strSQL = "Select * From spAllUserNamesAndPasswords";
        try
        {
            DataTable dt = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dt.Rows)
            {
                if (r["UserName"].ToString() == tbUserName.Text &&
                r["Password"].ToString() == tbPassword.Text)
                {
                    lblMUserNamePassword.Text = "UserName and/or Password already exist";
                    return false;
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            return false;
        }
        return true;
    }
    private bool Check()
    {
        bool chk = true;

        chk = chk && CheckUserNamePassword();
        return chk;
    }
    
    protected void ibtAdd_Click(object sender, ImageClickEventArgs e)
    {
        if (Check()) ForRowInserting();
    }
    protected void ibtClear_Click(object sender, ImageClickEventArgs e)
    {
        lblMessage.Text = "";
        lblMUserNamePassword.Text = "";

        tbName.Text = "";
        tbEmail.Text = "";
        tbUserName.Text = "";
        tbPassword.Text = "";
    }
}
