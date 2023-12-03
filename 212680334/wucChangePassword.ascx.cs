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
using System.Data.OleDb;

public partial class wucChangePassword : System.Web.UI.UserControl
{
    string strSQL;
    DataTable dt;
    protected bool CheckUserNamePassword()
    {
        if (Session["IDAdmin"] != null)
        {
            strSQL = "Select UserName,[Password] From tblAdmins Where IDAdmin=" +
                    Session["IDAdmin"].ToString();
        }
        else if (Session["IDMorshd"] != null)
        {
            strSQL = "Select UserName,[Password] From tblMorshd Where IDMorshd=" +
                    Session["IDMorshd"].ToString();
        }
        else if (Session["IDPerson"] != null)
        {
            strSQL = "Select UserName,[Password] From tblPerson Where IDPerson=" +
                    Session["IDPerson"].ToString();
        }

        try
        {
            dt = DoQueries.ExecuteDataTable(strSQL);
            Session["UserName"] = dt.Rows[0]["UserName"];
            Session["Password"] = dt.Rows[0]["Password"];
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            return false;
        }

        if (tbPassword.Text != Session["Password"].ToString())
        {
            lblPassword.Text = "The old password don't correct";
            return false;
        }
        if (tbPassword.Text == tbNewPassword.Text)
        {
            lblNewPassword.Text = "Error : old password = new password";
            return false;
        }
        if (tbNewPassword.Text != tbConfirmNewPassword.Text)
        {
            lblConfirmNewPassword.Text = "Error : new password != confirm password";
            return false;
        }
        strSQL = "Select * From spAllUserNamesAndPasswords " +
        " Where UserName<>'" + Session["UserName"].ToString() +
        "' or Password<>'" + Session["Password"].ToString() + "'";
        try
        {
            dt = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dt.Rows)
            {
                if (r["UserName"].ToString() == Session["UserName"].ToString() &&
                r["Password"].ToString() == tbNewPassword.Text)
                {
                    lblMessage.Text = "UserName and/or Password already exist";
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null && Session["IDMorshd"] == null &&
            Session["IDPerson"] == null)
        {
            Response.Redirect(@"../wfStop.aspx");
        }
        lblMessage.Text = "";
        lblPassword.Text = "";
        lblNewPassword.Text = "";
        lblConfirmNewPassword.Text = "";
    }

    protected void ibtCheck_Click(object sender, ImageClickEventArgs e)
    {
        if (CheckUserNamePassword())
        {
            if (Session["IDAdmin"] != null)
            {
                strSQL = "UPDATE tblAdmins SET [Password]='" + tbNewPassword.Text +
                       "' Where IDAdmin=" + Session["IDAdmin"].ToString();
            }
            else if (Session["IDTeacher"] != null)
            {
                strSQL = "UPDATE tblMorshd SET [Password]='" + tbNewPassword.Text +
                       "' Where IDMorshd=" + Session["IDMorshd"].ToString();
            }
            else if (Session["IDPerson"] != null)
            {
                strSQL = "UPDATE tblPerson SET [Password]='" + tbNewPassword.Text +
                       "' Where IDPerson=" + Session["IDPerson"].ToString();
            }
            try
            {
                DoQueries.ExecuteNonQuery(strSQL);
                lblMessage.Text = "Your password has been changed successfully";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}
