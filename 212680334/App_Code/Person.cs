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

/// <summary>
/// Summary description for Person
/// </summary>
public class PersonDetails
{
    //Encapsulation
    private int _IDPerson;
    private string _TZ;
    private string _FirstName;
    private string _LastName;
    private DateTime _Birthday;
    private string _Address;
    private string _Phone;
    private string _Email;
    private string _UserName;
    private string _Password;

    //Properties
    public int IDPerson
    {
        get { return _IDPerson; }
        set { _IDPerson = value; }
    }
    public string TZ
    {
        get { return _TZ; }
        set { _TZ = value; }
    }
    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }
    public string LastName
    {
        get { return _LastName; }
        set { _LastName = value; }
    }
    public DateTime Birthday
    {
        get { return _Birthday; }
        set { _Birthday = value; }
    }
    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }
    public string Phone
    {
        get { return _Phone; }
        set { _Phone = value; }
    }
    public string Email
    {
        get { return _Email; }
        set { _Email = value; }
    }
    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }

    //Constructor
    public PersonDetails()
    {
        _Birthday = new DateTime();
    }
}
//**************Class  PersonDetails - end ***************

//**************Class  Person - begin ********************
public class Person
{
    //Encapsulation
    ArrayList prmList;
    OleDbParameter prm;
    string strSQLName;

    //Constructor
    public Person()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //Methods

    //___________________AddPerson_______________________

    public void AddPerson(PersonDetails prsDetails)
    {
        strSQLName = "spAddPerson";
        prmList = new ArrayList();

        prm = new OleDbParameter("@TZ", OleDbType.VarChar);
        prm.Value = prsDetails.TZ;
        prmList.Add(prm);

        prm = new OleDbParameter("@FirstName", OleDbType.VarChar);
        prm.Value = prsDetails.FirstName;
        prmList.Add(prm);

        prm = new OleDbParameter("@LastName", OleDbType.VarChar);
        prm.Value = prsDetails.LastName;
        prmList.Add(prm);

        prm = new OleDbParameter("@Birthday", OleDbType.DBDate);
        prm.Value = prsDetails.Birthday;
        prmList.Add(prm);

        prm = new OleDbParameter("@Address", OleDbType.VarChar);
        prm.Value = prsDetails.Address;
        prmList.Add(prm);

        prm = new OleDbParameter("@Phone", OleDbType.VarChar);
        prm.Value = prsDetails.Phone;
        prmList.Add(prm);

        prm = new OleDbParameter("@Email", OleDbType.VarChar);
        prm.Value = prsDetails.Email;
        prmList.Add(prm);

        prm = new OleDbParameter("@UserName", OleDbType.VarChar);
        prm.Value = prsDetails.UserName;
        prmList.Add(prm);

        prm = new OleDbParameter("@Password", OleDbType.VarChar);
        prm.Value = prsDetails.Password;
        prmList.Add(prm);

        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
    }
    //___________________ExistPerson_________________________________

    public Boolean ExistPerson(PersonDetails prsDetails)
    {
        strSQLName = "spExistPerson";
        prmList = new ArrayList();

        prm = new OleDbParameter("@TZ", OleDbType.VarChar);
        prm.Value = prsDetails.TZ;
        prmList.Add(prm);

        int intCount = (int)DoQueries.ExecuteSPScalar(strSQLName, prmList);
        return intCount > 0;
    }
}
//**************Class  Person - end **********************
