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

public partial class PagesForVisitor_wfRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
        lblMBirthday.Text = "";
        lblMUserNamePassword.Text = "";
    }
    protected void ForRowInserting()
    {
        PersonDetails prsDetails = new PersonDetails();
        Person prs = new Person();

        prsDetails.TZ = tbTZ.Text;
        prsDetails.FirstName = tbFirstName.Text;
        prsDetails.LastName = tbLastName.Text;
        prsDetails.Birthday = DateTime.Parse(tbBirthday.Text);
        prsDetails.Address = tbAddress.Text;
        prsDetails.Phone = tbPhone.Text;
        prsDetails.Email = tbEmail.Text;
        prsDetails.UserName = tbUserName.Text;
        prsDetails.Password = tbPassword.Text;

        try
        {
            if (!prs.ExistPerson(prsDetails))
            {
                prs.AddPerson(prsDetails);
                lblMessage.Text = "The Person added successfully";
            }
            else
                lblMessage.Text = "The Person already exist";
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
    protected bool CheckAge(int intAge, string strBirthday)
    {
        DateTime dtb = DateTime.Parse(strBirthday);
        DateTime dtnow = DateTime.Now;
        DateTime dth = new DateTime(dtb.Year + intAge, dtb.Month, dtb.Day);
        return dth.CompareTo(dtnow) == -1 || dth.CompareTo(dtnow) == 0;
    }
    private bool Check()
    {
        bool chk = true;

        //Code for specific check
        if (!CheckAge(18, tbBirthday.Text))
        {
            lblMBirthday.Text = "You are too young";
            chk = false;
        }

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
        lblMBirthday.Text = "";
        lblMUserNamePassword.Text = "";

        //Emptying Textbox Controls (1)
        //tbTZ.Text = "";
        //tbFirstName.Text = "";
        //tbLastName.Text = "";
        //tbBirthday.Text = "";
        //tbAddress.Text = "";
        //tbPhone.Text = "";
        //tbEmail.Text = "";
        //tbUserName.Text = "";
        //tbPassword.Text = "";

        //Emptying Textbox Controls (2)
        foreach (Control c in this.Form.Controls)
        {
            if (c is ContentPlaceHolder)
            {
                foreach (Control cc in c.Controls)
                {
                    if (cc is TextBox)
                    {
                        ((TextBox)cc).Text = "";
                    }
                }
            }
        }
    }


}