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

//**************Class  AdminDetails - begin ***************
public class AdminDetails
{
    //Encapsulation
    private int _IDAdmin;
    private string _Name;
    private string _Email;
    private string _UserName;
    private string _Password;

    //Properties
    public int IDAdmin
    {
        get { return _IDAdmin; }
        set { _IDAdmin = value; }
    }
    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
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
    public AdminDetails()
    {
    }
}
//**************Class  AdminDetails - end   ***************
//**************Class  Admin - begin **********************
public class Admin
{
    //Encapsulation
    ArrayList prmList;
    OleDbParameter prm;
    string strSQLName;

    //Constructor
    public Admin()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //Methods

    //___________________AddAdmin_______________________

    public void AddAdmin(AdminDetails admDetails)
    {
        strSQLName = "spAddAdmin";
        prmList = new ArrayList();

        prm = new OleDbParameter("@Name", OleDbType.VarChar);
        prm.Value = admDetails.Name;
        prmList.Add(prm);

        prm = new OleDbParameter("@Email", OleDbType.VarChar);
        prm.Value = admDetails.Email;
        prmList.Add(prm);

        prm = new OleDbParameter("@UserName", OleDbType.VarChar);
        prm.Value = admDetails.UserName;
        prmList.Add(prm);

        prm = new OleDbParameter("@Password", OleDbType.VarChar);
        prm.Value = admDetails.Password;
        prmList.Add(prm);

        DoQueries.ExecuteSPNonQuery(strSQLName, prmList);
    }
    //___________________ExistAdmin_________________________________

    public Boolean ExistAdmin(AdminDetails admDetails)
    {
        strSQLName = "spExistAdmin";
        prmList = new ArrayList();

        prm = new OleDbParameter("@Name", OleDbType.VarChar);
        prm.Value = admDetails.Name;
        prmList.Add(prm);

        int intCount = (int)DoQueries.ExecuteSPScalar(strSQLName, prmList);
        return intCount > 0;
    }
}
//**************Class  Admin - end   **********************