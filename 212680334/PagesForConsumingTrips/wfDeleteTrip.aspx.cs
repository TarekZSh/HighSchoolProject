using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesForConsumingTrips_wfDeleteTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btDeleteTrip_Click(object sender, EventArgs e)
    {
        wsTrip.TripService t = new wsTrip.TripService();


        if (t.ExistTrip(tbID.Text))
        {
            t.DeleteTripDetails(tbID.Text);
            Response.Redirect("../PagesForConsumingTrips/wfGoodJob.aspx");

        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "The Trip does not exist";
        }

    }
}