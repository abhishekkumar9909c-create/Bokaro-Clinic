using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class ConnectionString
{
	
    public static SqlConnection getConnection()
    {
        SqlConnection c = new SqlConnection("Data Source=LAPTOP-MVUJTHHU\\SQLEXPRESS;Initial Catalog=BokaroClinicDB; User Id=sa; Password=Abc123");
        return c;
    }
}