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

//**************Class  OrderTripDetails - begin ***************
public class OrderTripDetails
{
    //Encapsulation
    private int _IDOrderTrip;
    private int _IDPerson;
    private int _IDTrip;
    private int _OrderQuantity;
    
    //Properties
    public int IDOrderTrip
    {
        get { return _IDOrderTrip; }
        set { _IDOrderTrip = value; }
    }
    public int IDPerson
    {
        get { return _IDPerson; }
        set { _IDPerson = value; }
    }
    public int IDTrip
    {
        get { return _IDTrip; }
        set { _IDTrip = value; }
    }
    public int OrderQuantity
    {
        get { return _OrderQuantity; }
        set { _OrderQuantity = value; }
    }

    //Constructor
    public OrderTripDetails()
    {
        
    }
}
//**************Class  OrderTripDetails - end *****************
//**************Class  OrderTrip - begin **********************
public class OrderTrip
{
    //Encapsulation
    ArrayList prmList;
    OleDbParameter prm;
    string strSQLName;

    //Constructor
    public OrderTrip()
    {
    }
    //Methods

    //___________________AddOrderTrip_______________________

    public void AddOrder(OrderTripDetails ordDetails)
    {
        strSQLName = "spAddOrder";
        prmList = new ArrayList();

        prm = new OleDbParameter("@IDTrip", OleDbType.Integer);
        prm.Value = ordDetails.IDTrip;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDPerson", OleDbType.Integer);
        prm.Value = ordDetails.IDPerson;
        prmList.Add(prm);

        prm = new OleDbParameter("@OrderQuantity", OleDbType.Integer);
        prm.Value = ordDetails.OrderQuantity;
        prmList.Add(prm);

        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
    }
    //___________________ExistOrderTrip_________________________________

    public Boolean ExistOrder(OrderTripDetails ordDetails)
    {
        strSQLName = "spExistOrder";
        prmList = new ArrayList();

        prm = new OleDbParameter("@IDTrip", OleDbType.Integer);
        prm.Value = ordDetails.IDTrip;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDPerson", OleDbType.Integer);
        prm.Value = ordDetails.IDPerson;
        prmList.Add(prm);

        int intCount = (int)DoQueries.ExecuteSPScalar(strSQLName, prmList);
        return intCount > 0;
    }
    /*___________________UpdOrderTrip_______________________

    public void UpdEnrollment(OrderTripDetails enrDetails)
    {
        strSQLName = "spUpdEnrollment";
        prmList = new ArrayList();

        prm = new OleDbParameter("@Grade", OleDbType.Integer);
        prm.Value = enrDetails.Grade;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDCourse", OleDbType.Integer);
        prm.Value = enrDetails.IDCourse;
        prmList.Add(prm);

        prm = new OleDbParameter("@IDStudent", OleDbType.Integer);
        prm.Value = enrDetails.IDStudent;
        prmList.Add(prm);

        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
        
    }
    */
}
//**************Class  OrderTrip - end ************************