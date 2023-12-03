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

public partial class PagesForAdmin_wfUpdDelMorshd : System.Web.UI.Page
{
    string strUserNameNew, strPasswordNew;
    int editInd;

    protected bool CheckUserNamePassword(string strUserNameNew, string strPasswordNew,
        string strUserNameOld, string strPasswordOld)
    {
        string strSQL = "Select * From spAllUserNamesAndPasswords Where" +
                        " UserName<>'" + strUserNameOld +
                        "' or Password<>'" + strPasswordOld + "'";
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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            lblMessage.Text = "There are no Guides";
        }
    }
    protected bool CheckTime(string strTime)
    {
        bool chk = true;
        try
        {
            TimeSpan.Parse(strTime);
        }
        catch
        {
            chk = false;
        }
        return chk;
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        editInd = GridView1.EditIndex;
        string strBirthTime = ((TextBox)GridView1.Rows[editInd].Cells[3].Controls[1]).Text;
        args.IsValid = CheckTime(strBirthTime);
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        editInd = GridView1.EditIndex;
        strUserNameNew = ((TextBox)GridView1.Rows[editInd].Cells[5].Controls[1]).Text;
        strPasswordNew = ((TextBox)GridView1.Rows[editInd].Cells[6].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
        ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        editInd = GridView1.EditIndex;
        strUserNameNew = ((TextBox)GridView1.Rows[editInd].Cells[5].Controls[1]).Text;
        strPasswordNew = ((TextBox)GridView1.Rows[editInd].Cells[6].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
        ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        ViewState["UserNameOld"] = ((Label)GridView1.Rows[e.NewEditIndex].Cells[5].Controls[1]).Text;
        ViewState["PasswordOld"] = ((Label)GridView1.Rows[e.NewEditIndex].Cells[6].Controls[1]).Text;
    }

}
