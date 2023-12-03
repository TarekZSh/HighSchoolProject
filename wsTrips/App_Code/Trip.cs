using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Trip
/// </summary>
public class Trip
{
    private string _TripID;
    private string _TripName;
    private string _TripPlace;
    private string _TripDate;


    //Properties

    public string TripID
    {
        get { return _TripID; }
        set { _TripID = value; }
    }
    public string TripName
    {
        get { return _TripName; }
        set { _TripName = value; }
    }
    public string TripPlace
    {
        get { return _TripPlace; }
        set { _TripPlace = value; }
    }

    public string TripDate
    {
        get { return _TripDate; }
        set { _TripDate = value; }
    }
    public Trip()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}