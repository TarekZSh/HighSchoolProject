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

public partial class PagesForPerson_wfOrderTrip : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IDPerson"] == null)
        {
            Response.Redirect("../wfStop.aspx");
        }
        lblMessage.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            lblMessage.Text = "There are no trips for order";
        }
    }

    protected void ibtOrder_Click(object sender, EventArgs e)
    {
        OrderTripDetails ordDetails = new OrderTripDetails();
        OrderTrip ord = new OrderTrip();
        bool chkNew;
        ordDetails.IDPerson = int.Parse(Session["IDPerson"].ToString());
        
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            chkNew = ((CheckBox)GridView1.Rows[i].Cells[10].Controls[1]).Checked;
            if (chkNew)
            {
                ordDetails.IDTrip = int.Parse(((Label)GridView1.Rows[i].Cells[0].Controls[1]).Text);
                try
                {
                    if (!ord.ExistOrder(ordDetails) && chkNew)
                    {
                        ord.AddOrder(ordDetails);
                        lblMessage.Text = "The Trip Ordered Successfully";
                    }

                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }
            }
        }
        Response.Redirect(@"../PagesForPerson/wfOrderTrip.aspx");
    }
}
