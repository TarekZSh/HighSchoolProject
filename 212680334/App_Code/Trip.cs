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

//**************Class  TripDetails - begin ***************
public class TripDetails
{
    //Encapsulation
    private int _IDTrip;
    private int _TripTypeCode;
    private string _TripName;
    private int _TripPrice;
    private DateTime _TripDate;
    private string _TripPlace;
    private int _MaxPlaces;
    private string _TripPictures;
    private int _TripRating;
    private int _IDMorshd;

    //Properties
    public int IDTrip
    {
        get { return _IDTrip; }
        set { _IDTrip = value; }
    }
    public int TripTypeCode
    {
        get { return _TripTypeCode; }
        set { _TripTypeCode = value; }
    }
    public string TripName
    {
        get { return _TripName; }
        set { _TripName = value; }
    }
    public int TripPrice
    {
        get { return _TripPrice; }
        set { _TripPrice = value; }
    }
    public DateTime TripDate
    {
        get { return _TripDate; }
        set { _TripDate = value; }
    }
    public string TripPlace
    {
        get { return _TripPlace; }
        set { _TripPlace = value; }
    }
    public int MaxPlaces
    {
        get { return _MaxPlaces; }
        set { _MaxPlaces = value; }
    }
    public string TripPictures
    {
        get { return _TripPictures; }
        set { _TripPictures = value; }
    }
    public int TripRating
    {
        get { return _TripRating; }
        set { _TripRating = value; }
    }
    public int IDMorshd
    {
        get { return _IDMorshd; }
        set { _IDMorshd = value; }
    }

    //Constructor
    public TripDetails()
    {
        TripDate = new DateTime();
    }
}
//**************Class  TripDetails - end ***************
//**************Class  Trip - begin ********************
public class Trip
{
    //Encapsulation
    ArrayList prmList;
    OleDbParameter prm;
    string strSQLName;

    //Constructor
    public Trip()
    {
    }

    //Methods

    //___________________AddTrip_______________________

    public void AddTrip(TripDetails trpDetails)
    {
        strSQLName = "spAddTrip";
        prmList = new ArrayList();

        prm = new OleDbParameter("@TripTypeCode", OleDbType.Integer);
        prm.Value = trpDetails.TripTypeCode;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripName", OleDbType.VarChar);
        prm.Value = trpDetails.TripName;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripPrice", OleDbType.Integer);
        prm.Value = trpDetails.TripPrice;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripDate", OleDbType.DBDate);
        prm.Value = trpDetails.TripDate;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripPlace", OleDbType.VarChar);
        prm.Value = trpDetails.TripPlace;
        prmList.Add(prm);

        prm = new OleDbParameter("@MaxPlaces", OleDbType.Integer);
        prm.Value = trpDetails.MaxPlaces;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripPictures", OleDbType.VarChar);
        prm.Value = trpDetails.TripPictures;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripRating", OleDbType.Integer);
        prm.Value = trpDetails.TripRating;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDMorshd", OleDbType.Integer);
        prm.Value = trpDetails.IDMorshd;
        prmList.Add(prm);


        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
    }
    //___________________ExistTrip_________________________________

    public Boolean ExistTrip(TripDetails trpDetails)
    {
        strSQLName = "spExistTrip";
        prmList = new ArrayList();

        prm = new OleDbParameter("@TripName", OleDbType.VarChar);
        prm.Value = trpDetails.TripName;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripDate", OleDbType.DBDate);
        prm.Value = trpDetails.TripDate;
        prmList.Add(prm);

        prm = new OleDbParameter("@TripPlace", OleDbType.VarChar);
        prm.Value = trpDetails.TripPlace;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDMorshd", OleDbType.Integer);
        prm.Value = trpDetails.IDMorshd;
        prmList.Add(prm);

        int intCount = (int)DoQueries.ExecuteSPScalar(strSQLName, prmList);
        return intCount > 0;
    }
}
//**************Class  Trip - end ********************