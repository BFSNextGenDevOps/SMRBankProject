using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("~/Admin/Default.aspx");
            }
        }

        protected void ButtonAdminLogin_Click(object sender, EventArgs e)
        {

            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxPass.Text, "md5");

            clsAdmin admin = Connections.LoginAdmin(TextBoxEmailID.Text, pass);

            if (admin != null)
            {
                // Store login variables in session
                Session["id"] = admin.ID;
                Session["type"] = admin.Type;

                Response.Redirect("~/Admin/Default.aspx");
            }
            else
            {
                LabelError.Text = "Login failed.";
            }
        }

        public bool loginCheck(string strUsernameTest,string strPasswordTest)
        {
            bool result = true;
            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(strPasswordTest, "md5");
            result = Connections.LoginAdminCheck(strUsernameTest, pass);
       
            
            return result;
        }
       

    }
}