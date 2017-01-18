using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace NewSMRBankProjectFinal
{
    public partial class CustChngPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Cust_Id"] == null)
                {
                    Response.Redirect("~/Customer/cust_login.aspx");
                }
            }
        }

        protected void ButtonChangePass_Click(object sender, EventArgs e)
        {
            int CustID = Convert.ToInt32(Session["Cust_Id"]);

            if (TextBoxNewPass.Text.Length < 6)
            {
                LabelMsg.Text = "Your password must be at least 6 characters.";
            }
            else if (TextBoxNewPass.Text != TextBoxConfirmPass.Text)
            {
                LabelMsg.Text = "Your new password did not match.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string query = string.Format("SELECT NBK_pass FROM NetBanking WHERE NBKU_id='" + CustID + "'");
                    SqlComm.CommandText = query;
                    string DBPass = (string)SqlComm.ExecuteScalar();

                    string CurntPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxCurrentPass.Text, "md5");

                    if (DBPass != CurntPass)
                    {
                        LabelMsg.Text = "Your current passowrd was incorrect.";
                    }
                    else
                    {
                        string NewPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxNewPass.Text, "md5");

                        query = string.Format("UPDATE NetBanking SET NBK_pass='" + NewPass + "' WHERE NBKU_id='" + CustID + "'");
                        SqlComm.CommandText = query;
                        SqlComm.ExecuteNonQuery();

                        LabelMsg.ForeColor = System.Drawing.Color.Green;
                        LabelMsg.Text = "Your passwrod successfully changed.";
                    }
                }
            }
        }
    }
}