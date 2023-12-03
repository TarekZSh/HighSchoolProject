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

public partial class PagesForAdmin_wfAddMorshd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        if (!Page.IsPostBack)
        {
        }
        lblMessage.Text = "";
        lblMUpload.Text = "";
        lblMUserNamePassword.Text = "";
        imgPic.ImageUrl = @"../Images/Morshd1.jpg";
    }
    protected void ForRowInserting()
    {
        MorshdDetails mrdDetails = new MorshdDetails();
        Morshd mrd = new Morshd();

        mrdDetails.Name = tbName.Text;
        mrdDetails.UserName = tbUserName.Text;
        mrdDetails.Password = tbPassword.Text;

        //--DropDownList
        
        //--Upload
        string fn = "Morshd1.jpg", saveLocation;
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
        mrdDetails.Picture = fn;

        //--Add
        try
        {
            if (!mrd.ExistMorshd(mrdDetails))
            {
                mrd.AddMorshd(mrdDetails);
                lblMessage.Text = "The Guider Added Successfully";
            }
            else
                lblMessage.Text = "The Guider already exist";
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
        lblMUpload.Text = "";
        lblMUserNamePassword.Text = "";
        imgPic.ImageUrl = @"../Images/Morshd1.jpg";

        tbName.Text = "";
        tbUserName.Text = "";
        tbPassword.Text = "";

    }

    protected void tbName_TextChanged(object sender, EventArgs e)
    {

    }
}
