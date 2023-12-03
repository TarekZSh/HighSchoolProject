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
using System.IO;

public partial class PagesForMorshd_wfSelfUpdate : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    //TimeSpan bt = new TimeSpan();- בטבלה תאריך/שעה
    DateTime bt = new DateTime();
    string strSQL;
    protected void FillDataTableAndFields()
    {
        strSQL = "Select * From tblMorshd Where IDMorshd=" +
                        Session["IDMorshd"].ToString();
        try
        {
            dt = DoQueries.ExecuteDataTable(strSQL);
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            return;
        }
        tbName.Text = dt.Rows[0]["Name"].ToString();
        bt = DateTime.Parse(dt.Rows[0]["Birthday"].ToString());
        imgPic.ImageUrl = @"../Images/" + dt.Rows[0]["Picture"].ToString();
        tbUserName.Text = dt.Rows[0]["UserName"].ToString();
        tbPassword.Text = dt.Rows[0]["Password"].ToString();
        ViewState["dt"] = dt;
        ViewState["strSQL"] = strSQL;
    }
    protected void ForRowUpdating()
    {
        dt = (DataTable)ViewState["dt"];
        dt.Rows[0]["Name"] = tbName.Text;
        dt.Rows[0]["UserName"] = tbUserName.Text;
        dt.Rows[0]["Password"] = tbPassword.Text;
        dt.Rows[0]["BirthTime"] = tbBirthday.Text;


        //--Upload
        string fn = dt.Rows[0]["Picture"].ToString(), saveLocation;
        if (fuPic.PostedFile.ContentLength != 0 &&
            fuPic.PostedFile != null)
        {
            try
            {
                fn = Path.GetFileName(fuPic.PostedFile.FileName);
                saveLocation = Server.MapPath(@"../Images/") + fn;
                fuPic.PostedFile.SaveAs(saveLocation);
                lblMUpload.Text = "The File has been uploaded";
                imgPic.ImageUrl = @"../Images/" + fn;
            }
            catch (Exception ex)
            {
                lblMUpload.Text = "Error : " + ex.Message;
            }
        }
        dt.Rows[0]["Picture"] = fn;

        //--Update
        try
        {
            strSQL = ViewState["strSQL"].ToString();
            DoQueries.UpdateTableInDataBase(strSQL, dt);
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    protected bool CheckUserNamePassword()
    {
        dt = (DataTable)ViewState["dt"];
        string strUserNameNew = tbUserName.Text, strPasswordNew = tbPassword.Text;
        string strUserNameOld = dt.Rows[0]["UserName"].ToString(),
               strPasswordOld = dt.Rows[0]["Password"].ToString();
        string strSQL = "Select * From spAllUserNamesAndPasswords Where" +
                        " UserName<>'" + strUserNameOld +
                        "' or Password<>'" + strPasswordOld + "'";
        try
        {
            DataTable dtUP = DoQueries.ExecuteDataTable(strSQL);
            foreach (DataRow r in dtUP.Rows)
            {
                if (r["UserName"].ToString() == strUserNameNew &&
                r["Password"].ToString() == strPasswordNew)
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
        lblMessage.Text = "";
        return true;
    }

    private bool Check()
    {
        bool chk = true;

        chk = chk && CheckUserNamePassword();
        return chk;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDMorshd"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        if (!Page.IsPostBack)
        {
            
            FillDataTableAndFields();
        }
        lblMessage.Text = "";
        lblMUpload.Text = "";
        lblMUserNamePassword.Text = "";

    }

    protected void ibtClear_Click(object sender, ImageClickEventArgs e)
    {
        lblMessage.Text = "";
        lblMUpload.Text = "";
        lblMUserNamePassword.Text = "";
        FillDataTableAndFields();
    }
    protected void ibtUpdate_Click(object sender, ImageClickEventArgs e)
    {
        if (Check()) ForRowUpdating();
        FillDataTableAndFields();
    }
}
