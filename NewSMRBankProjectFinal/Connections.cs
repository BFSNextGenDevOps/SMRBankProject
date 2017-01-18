using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;


namespace NewSMRBankProjectFinal
{
    public class Connections
    {
        private static SqlConnection con;
    private static SqlCommand com;
    public static string connectionString = ConfigurationManager.ConnectionStrings["SMRBankDBConnectionString"].ToString();

    static Connections()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SMRBankDBConnectionString"].ToString();
        con = new SqlConnection(connectionString);
        com = new SqlCommand("", con);
    }

    public string GetConnString()
    {
        return connectionString;
    }

   

    public static clsAdmin LoginAdmin(string Aemail, string Apassword)
    {
        // Check if user exists
        string query = string.Format("SELECT COUNT(*) FROM admin WHERE email = '{0}'", Aemail);
        com.CommandText = query;

        try
        {
            con.Open();
            int accountOfAdmin = (int)com.ExecuteScalar();
            
            if (accountOfAdmin == 1)
            {
                // User exists, check if the password match
                query = string.Format("SELECT password FROM admin WHERE email = '{0}'", Aemail);
                com.CommandText = query;
                string dbPass = (string)com.ExecuteScalar();

                if (dbPass == Apassword)
                {
                    // Password match
                    // Retrieve further admin data from the database
                    query = string.Format("SELECT * FROM admin WHERE email = '{0}'", Aemail);
                    com.CommandText = query;

                    SqlDataReader reader = com.ExecuteReader();
                    clsAdmin admin = null;

                    while (reader.Read())
                    {
                        int id = reader.GetInt32(0);
                        string fname = reader.GetString(1);
                        string lname = reader.GetString(2);
                        string gender = reader.GetString(3);
                        string email = reader.GetString(4);
                        string Apass = reader.GetString(5);
                        int type = reader.GetInt32(6);
                        DateTime ldate = reader.GetDateTime(7);
                        DateTime date = reader.GetDateTime(8);

                        admin = new clsAdmin(id, fname, lname, gender, email, Apass, type, ldate, date);
                    }
                    return admin;
                }
                else
                {
                    // Password not match
                    return null;
                }

            }
            else
            {
                // Admin not exists
                return null;
            }
        }
        finally
        {
            con.Close();
        }
    }


    public static bool LoginAdminCheck(string Aemail, string Apassword)
    {
        
        bool result = true;
        // Check if user exists
        string query = string.Format("SELECT COUNT(*) FROM Admin WHERE email = '{0}'", Aemail);
        com.CommandText = query;

        try
        {
            con.Open();
            int accountOfAdmin = (int)com.ExecuteScalar();

            if (accountOfAdmin == 1)
            {
                // User exists, check if the password match
                query = string.Format("SELECT password FROM Admin WHERE email = '{0}'", Aemail);
                com.CommandText = query;
                string dbPass = (string)com.ExecuteScalar();

                if (dbPass == Apassword)
                {
                    result = true;
                    return result;
                }
                else
                {
                    // Password not match
                    result = false;
                    return result;
                }

            }
            else
            {
                // Admin not exists
                result = false;
                return result;
            }
        }
        finally
        {
            con.Close();
        }
    }
   

    public static clsAdmin GetData(int admin_id)
    {
        string query = string.Format("SELECT COUNT(*) FROM Admin WHERE id = '{0}'", admin_id);
        com.CommandText = query;

        try
        {
            con.Open();
            int checkAccount = (int)com.ExecuteScalar();

            if (checkAccount == 1)
            {
                query = String.Format("SELECT * FROM Admin WHERE id = '{0}'", admin_id);
                com.CommandText = query;

                SqlDataReader reader = com.ExecuteReader();
                clsAdmin data = null;

                while (reader.Read())
                {
                    int id = reader.GetInt32(0);
                    string fname = reader.GetString(1);
                    string lname = reader.GetString(2);
                    string gender = reader.GetString(3);
                    string email = reader.GetString(4);
                    string Apass = reader.GetString(5);
                    int type = reader.GetInt32(6);
                    DateTime ldate = reader.GetDateTime(7);
                    DateTime date = reader.GetDateTime(8);

                    data = new clsAdmin(id, fname, lname, gender, email, Apass, type, ldate, date);
                }
                return data;
            }
            else
            {
                return null;
            }
        }
        finally { con.Close(); }
    }
    }
}