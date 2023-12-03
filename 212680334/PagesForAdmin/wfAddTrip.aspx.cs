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

public partial class PagesForAdmin_wfAddTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDAdmin"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
        lblMTripDate.Text = "";
        imgPicture.ImageUrl = @"../Images/Morshd1.jpg"; ;

    }
    protected void ForRowInserting()
    {
        TripDetails trpDetails = new TripDetails();
        Trip trp = new Trip();

        trpDetails.TripTypeCode = int.Parse(ddlTripType.SelectedValue);  
        trpDetails.TripName = tbTripName.Text;
        trpDetails.TripPrice = int.Parse(tbTripPrice.Text);
        trpDetails.TripDate = DateTime.Parse(tbTripDate.Text);
        trpDetails.TripPlace = tbTripPlace.Text;
        trpDetails.TripRating = int.Parse(tbTripRating.Text);
        //--DropDownList
        trpDetails.IDMorshd = int.Parse(ddlMorshd.SelectedValue);
        string fn = "Morshd1.jpg", saveLocation;
        if (fuPicture.PostedFile.ContentLength != 0 &&
            fuPicture.PostedFile != null)
        {
            try
            {
                fn = Path.GetFileName(fuPicture.PostedFile.FileName);
                saveLocation = Server.MapPath(@"../Images/") + fn;
                fuPicture.PostedFile.SaveAs(saveLocation);
                lblMUpload.Text = "The File has been uploaded";
                imgPicture.ImageUrl = @"../Images/" + fn;
            }
            catch (Exception ex)
            {
                lblMUpload.Text = "Error : " + ex.Message;
            }
        }
        trpDetails.TripPictures = fn;

        //--Add
        try
        {
            if (!trp.ExistTrip(trpDetails))
            {
                trp.AddTrip(trpDetails);
                lblMessage.Text = "the Trip Added Successfully";
            }
            else
                lblMessage.Text = "the Trip already exist";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    private bool Check()
    {
        bool chk = true;
        //if (rblMeetingDay.SelectedIndex == -1)
        //{
        //    lblMMeetingDay.Text = "You must choose the meeting day";
        //    chk = false;
        //}
        return chk;
    }
    protected void ibtAdd_Click(object sender, ImageClickEventArgs e)
    {
        if (Check()) ForRowInserting();
    }
    protected void ibtClear_Click(object sender, ImageClickEventArgs e)
    {
        lblMessage.Text = "";
        lblMTripDate.Text = "";

        ddlTripType.SelectedIndex = -1;
        tbTripName.Text = "";
        tbTripPrice.Text = "";
        tbTripDate.Text = "";
        tbTripPlace.Text = "";
        tbTripRating.Text = "";
        imgPicture.ImageUrl = @"../Images/Morshd1.jpg";
        ddlMorshd.SelectedIndex = -1;
    }
}