// Path --> Response.Write(HttpContext.Current.Request.Url.AbsolutePath.ToString());
// /SMRBank/Admin/settings.aspx

// URL --> HttpContext.Current.Request.Url.AbsoluteUri;
// http://localhost:64319/SMRBank/Admin/settings.aspx

// Host --> HttpContext.Current.Request.Url.Host;
// localhost

// Current Page --> Request.Path.Substring(Request.Path.LastIndexOf("/"))
// /settings.aspx


//string url = HttpContext.Current.Request.Url.AbsoluteUri;
//string fileName = System.IO.Path.GetFileName(url);
//Response.Write(fileName);

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["type"]) != 1)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        protected void ButtonChangePass_Click(object sender, EventArgs e)
        {
            if (TextBoxNewPass.Text.Length < 6)
            {
                LabelErrors.Text = "Your password must be at least 6 characters.";
            }
            else if (TextBoxNewPass.Text != TextBoxConfirmPass.Text)
            {
                LabelErrors.Text = "Your new password did not match.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                SqlConnection SqlCon = new SqlConnection(strConnString);
                SqlCommand SqlComm = new SqlCommand("", SqlCon);

                SqlCon.Open();
                string query = string.Format("SELECT password FROM admin WHERE id = '{0}'", Session["id"]);
                SqlComm.CommandText = query;
                string CheckPass = (string)SqlComm.ExecuteScalar();
                string CurrentPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxCurrentPass.Text, "md5");
                if (CheckPass != CurrentPass)
                {
                    LabelErrors.Text = "Your current passowrd was incorrect.";
                }
                else
                {
                    string NewPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxNewPass.Text, "md5");
                    int admin_id = Convert.ToInt32(Session["id"]);

                    query = string.Format("UPDATE admin SET password='" + NewPass + "' WHERE id ='" + admin_id + "'");
                    SqlComm.CommandText = query;
                    //SqlComm.ExecuteScalar();
                    SqlComm.ExecuteNonQuery();
                    LabelErrors.ForeColor = System.Drawing.Color.Green;
                    LabelErrors.Text = "Your passwrod successfully changed.";
                }

                SqlCon.Close();
            }
        }
    }
}