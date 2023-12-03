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

public partial class PagesForPerson_wfSelfUpdate : System.Web.UI.Page
{
    string strUserNameNew, strPasswordNew;


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
                    lblMessage.Text = "UserName and Password already exist";
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
    protected bool CheckAge(int intAge, string strBirthday)
    {
        DateTime dtb = DateTime.Parse(strBirthday);
        DateTime dtnow = DateTime.Now;
        DateTime dth = new DateTime(dtb.Year + intAge, dtb.Month, dtb.Day);
        return dth.CompareTo(dtnow) == -1 || dth.CompareTo(dtnow) == 0;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDPerson"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string strBirthday = ((TextBox)DetailsView1.Rows[4].Cells[1].Controls[1]).Text;
        args.IsValid = CheckAge(18, strBirthday);
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        strUserNameNew = ((TextBox)DetailsView1.Rows[8].Cells[1].Controls[1]).Text;
        strPasswordNew = ((TextBox)DetailsView1.Rows[9].Cells[1].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
        ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        strUserNameNew = ((TextBox)DetailsView1.Rows[8].Cells[1].Controls[1]).Text;
        strPasswordNew = ((TextBox)DetailsView1.Rows[9].Cells[1].Controls[1]).Text;
        args.IsValid = CheckUserNamePassword(strUserNameNew, strPasswordNew,
        ViewState["UserNameOld"].ToString(), ViewState["PasswordOld"].ToString());
    }

    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        if (e.NewMode == DetailsViewMode.Edit)
        {
            ViewState["UserNameOld"] = ((Label)DetailsView1.Rows[8].Cells[1].Controls[1]).Text;
            ViewState["PasswordOld"] = ((Label)DetailsView1.Rows[9].Cells[1].Controls[1]).Text;
        }
    }
}
