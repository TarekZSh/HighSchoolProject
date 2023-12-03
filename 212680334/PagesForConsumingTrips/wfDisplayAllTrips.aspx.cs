using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesForConsumingTrips_wfDisplayAllTrips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btDisplay_Click(object sender, EventArgs e)
    {
        wsTrip.TripService t = new wsTrip.TripService();
        GridView1.DataSource = t.GetAllTrips();
        GridView1.DataBind();
    }
}