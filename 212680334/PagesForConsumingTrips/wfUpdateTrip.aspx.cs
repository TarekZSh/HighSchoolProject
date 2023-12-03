using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesForConsumingTrips_wfUpdateTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btUpdateTrip_Click(object sender, EventArgs e)
    {
        wsTrip.TripService t = new wsTrip.TripService();
        wsTrip.Trip c = new wsTrip.Trip();


        c.TripID = tbID.Text;
        c.TripName = tbName.Text;
        c.TripPlace = tbPlace.Text;
        c.TripDate = tbDate.Text;

        if (t.ExistTrip(c.TripID))
        {
            t.UpdateTripDetails(c);
            Response.Redirect("../PagesForConsumingTrips/wfGoodJob.aspx");

        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "The Trip does not exist";
        }
    }
}