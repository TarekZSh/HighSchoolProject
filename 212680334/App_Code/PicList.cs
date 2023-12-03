using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Web.Services;

/// <summary>
/// Summary description for PicList
/// </summary>
public class PicList
{
    //Constructor
    public PicList()
    {
    }
    //Methods

    public DataTable FillFiles()
    {
        WebService ws = new WebService();
        DataTable dt = new DataTable();
        DataColumn column;
        DataRow row;

        column = new DataColumn();
        column.DataType = System.Type.GetType("System.String");
        column.ColumnName = "PicName";
        column.ReadOnly = true;
        column.Unique = false;

        dt.Columns.Add(column);

        foreach (string fl in Directory.GetFiles(ws.Server.MapPath(@"..\Images")))
        {
            row = dt.NewRow();
            row["PicName"] = Path.GetFileName(fl);
            dt.Rows.Add(row);
        }
        return dt;
    }
}
