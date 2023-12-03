using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Collections;
using System.Collections.Generic;
using System.Web.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]

public class TripService : System.Web.Services.WebService
{
    public TripService() {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool ExistTrip(string ID)
    {
        string str = string.Format("SELECT * FROM Trip WHERE TripID='{0}'", ID);

        DataSet ds = DoQueries.ExecuteDataSet(str);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        return true;

    }


    [WebMethod]
    public void UpdateTripDetails(Trip t)
    {
        string str = string.Format("UPDATE Trip SET TripName='{0}',TripPlace='{1}',TripDate='{2}' WHERE TripID='{3}'", t.TripName, t.TripPlace, t.TripDate, t.TripID);

        if (ExistTrip(t.TripID) == true)
        {

            try
            {
                DoQueries.ExecuteNonQuery(str);

            }
            catch (Exception)
            {
                throw;
            }
        }

    }


    //********************************************8

    [WebMethod]

    public void DeleteTripDetails(string ID)
    {

        if (ExistTrip(ID) == true)
        {

            try
            {
                string str = string.Format("DELETE  FROM Trip WHERE TripID='{0}'", ID);
                DoQueries.ExecuteNonQuery(str);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }

    //********************************
    [WebMethod]
    public void AddNewTrip(string ID, string Name, string Place, string Date)
    {


        if (ExistTrip(ID) == false)
        {

            try
            {
                string str = string.Format("INSERT INTO Trip(TripID,TripName,TripPlace,TripDate)VALUES('{0}','{1}','{2}','{3}')", ID, Name, Place, Date);
                DoQueries.ExecuteNonQuery(str);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }

    //***************************************************


    [WebMethod]
    public DataSet GetAllTrips()
    {
        string str = string.Format("SELECT * FROM Trip");

        return DoQueries.ExecuteDataSet(str);
    }

    //*****************************

    [WebMethod]
    public Trip GetTripById(string ID)
    {

        Trip e = new Trip();


        if (ExistTrip(ID))
        {

            string strDetails = string.Format("SELECT  * FROM Trip WHERE TripID='{0}'", ID);
            DataSet ds = DoQueries.ExecuteDataSet(strDetails);

            e.TripID = ds.Tables[0].Rows[0]["TripID"].ToString();
            e.TripName = ds.Tables[0].Rows[0]["TripName"].ToString();
            e.TripPlace = ds.Tables[0].Rows[0]["TripPlace"].ToString();
            e.TripDate = ds.Tables[0].Rows[0]["TripDate"].ToString();

        }
        return e;
    }


    //****************************


}
