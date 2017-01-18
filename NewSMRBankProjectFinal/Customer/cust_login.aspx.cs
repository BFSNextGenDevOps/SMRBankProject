using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NewSMRBankProjectFinal
{
    public partial class cust_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cust_Id"] != null)
            {
                Response.Redirect("~/Customer/Default.aspx");
            }
        }

        protected void ButtonCustLoginBtn_Click(object sender, EventArgs e)
        {
            int CustID = Convert.ToInt32(TextBoxCustId.Text);
            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxPass.Text, "md5");

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM NetBanking WHERE NBKU_id='" + CustID + "'");
                SqlComm.CommandText = query;
                int result = (int)SqlComm.ExecuteScalar();

                if (result == 1)
                {
                    query = string.Format("SELECT NBK_pass FROM NetBanking WHERE NBKU_id='" + CustID + "'");
                    SqlComm.CommandText = query;
                    string dbPass = (string)SqlComm.ExecuteScalar();

                    if (dbPass == pass)
                    {
                        string NowDate = DateTime.Now.ToString();
                        string UpDateLogDate = string.Format("UPDATE NetBanking SET NBK_last_logDate='" + NowDate + "'");
                        SqlComm.CommandText = UpDateLogDate;
                        SqlComm.ExecuteNonQuery();

                        Session["Cust_Id"] = CustID;
                        Response.Redirect("~/Customer/Default.aspx");
                    }
                    else
                    {
                        LabelErrors.Text = "Wrong password.";
                    }
                }
                else if (result == 0)
                {
                    LabelErrors.Text = "Customer ID does not exists.";
                }
            }
        }
    }
}