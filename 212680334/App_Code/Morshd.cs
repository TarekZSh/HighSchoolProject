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

//**************Class  MorshdDetails - begin ***************
public class MorshdDetails
{
    //Encapsulation
    private int _IDMorshd;
    private string _Name;
    private DateTime _Birthday;
    private string _Picture;
    private string _UserName;
    private string _Password;

    //Properties
    public int IDMorshd
    {
        get { return _IDMorshd; }
        set { _IDMorshd = value; }
    }
    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }
    public DateTime Birthday
    {
        get { return _Birthday; }
        set { _Birthday = value; }
    }
    public string Picture
    {
        get { return _Picture; }
        set { _Picture = value; }
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
    public MorshdDetails()
    {
        Birthday = new DateTime();
    }
}
//**************Class  MorshdDetails - end ***************

//**************Class  Morshd - begin ********************
public class Morshd
{
    //Encapsulation
    ArrayList prmList;
    OleDbParameter prm;
    string strSQLName;

    //Constructor
    public Morshd()
    {
    }
    //Methods

    //___________________AddMorshd_______________________

    public void AddMorshd(MorshdDetails mrdDetails)
    {
        strSQLName = "spAddMorshd";
        prmList = new ArrayList();

        prm = new OleDbParameter("@Name", OleDbType.VarChar);
        prm.Value = mrdDetails.Name;
        prmList.Add(prm);

        prm = new OleDbParameter("@DateTime", OleDbType.DBDate);
        prm.Value = mrdDetails.Birthday;
        prmList.Add(prm);

        prm = new OleDbParameter("@Picture", OleDbType.VarChar);
        prm.Value = mrdDetails.Picture;
        prmList.Add(prm);

        prm = new OleDbParameter("@UserName", OleDbType.VarChar);
        prm.Value = mrdDetails.UserName;
        prmList.Add(prm);

        prm = new OleDbParameter("@Password", OleDbType.VarChar);
        prm.Value = mrdDetails.Password;
        prmList.Add(prm);

        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
    }
    //___________________ExistMorshd_________________________________

    public Boolean ExistMorshd(MorshdDetails mrdDetails)
    {
        strSQLName = "spExistMorshd";
        prmList = new ArrayList();

        prm = new OleDbParameter("@Name", OleDbType.VarChar);
        prm.Value = mrdDetails.Name;
        prmList.Add(prm);

        prm = new OleDbParameter("@DateTime", OleDbType.DBDate);
        prm.Value = mrdDetails.Birthday;
        prmList.Add(prm);

        int intCount = (int)DoQueries.ExecuteSPScalar(strSQLName, prmList);
        return intCount > 0;
    }
}
//**************Class  Morshd - end **********************