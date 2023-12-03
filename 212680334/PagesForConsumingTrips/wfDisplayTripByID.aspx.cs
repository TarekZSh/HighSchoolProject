using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesForConsumingTrips_wfDisplayTripByID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void btTrip_Click(object sender, EventArgs e)
    {
        wsTrip.TripService t = new wsTrip.TripService();
        wsTrip.Trip c = new wsTrip.Trip();



        if (t.ExistTrip(tbID.Text))
        {
            c = t.GetTripById(tbID.Text);
            lblName.Text = c.TripName;
            lblPlace.Text = c.TripPlace;
            lblDate.Text = c.TripDate;
            lblMessage.Visible = false;

        }
        else
        {
            lblName.Text = "";
            lblPlace.Text = "";
            lblDate.Text = "";
            lblMessage.Visible = true;
            lblMessage.Text = "The Trip does not exist";
        }
    }
}