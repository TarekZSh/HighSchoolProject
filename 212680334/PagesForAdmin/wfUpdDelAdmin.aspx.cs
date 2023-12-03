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

public partial class PagesForAdmin_wfUpdDelAdmin : System.Web.UI.Page
{
    int editInd;
    string strUserNameNew,
    strPasswordNew;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            lblMessage.Text = "There are not administrators";
        }
    }
    protected bool CheckUserNamePassword(string strUserNameNew, string strPasswordNew,
                                         string strUserNameOld, string strPasswordOld)
    {
        //UserName + Password unique
        string strSQL = "Select * From spAllUserNamesAndPasswords Where " +
            "UserName<>'" + strUserNameOld +
            "' or Password<>'" + strPasswordOld + "'";

        //UserName unique and Password unique
        //string strSQL = "Select * From spAllUserNamesAndPasswords Where " +
        //    "UserName<>'" + strUserNameOld +
        //    "' and Password<>'" + strPasswordOld + "'";
        try
        {
            DataTable dt = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dt.Rows)
            {
                if (r["UserName"].ToString() == strUserNameNew &&
                    r["Password"].ToString() == strPasswordNew)
                {
                    return false;
                }
                //if (r["UserName"].ToString()==strUserNameNew ||
                //    r["Password"].ToString()==strPasswordNew)
                //{
                //    return false;
                //}
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            return false;
        }
        lblMessage.Text = "";
        return true;
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        editInd = GridView1.EditIndex;
        strUserNameNew = ((TextBox)GridView1.Rows[editInd].Cells[4].Controls[1]).Text;
        strPasswordNew = ((TextBox)GridView1.Rows[editInd].Cells[5].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
            ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        editInd = GridView1.EditIndex;
        strUserNameNew = ((TextBox)GridView1.Rows[editInd].Cells[4].Controls[1]).Text;
        strPasswordNew = ((TextBox)GridView1.Rows[editInd].Cells[5].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
            ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        ViewState["UserNameOld"] =
           ((Label)GridView1.Rows[e.NewEditIndex].Cells[4].Controls[1]).Text;
        ViewState["PasswordOld"] =
           ((Label)GridView1.Rows[e.NewEditIndex].Cells[5].Controls[1]).Text;
    }
}
