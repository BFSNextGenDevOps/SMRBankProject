using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace NewSMRBankProjectFinal.Admin
{
    public partial class Admin_Admin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["type"]) != 1)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            else
            {
                clsAdmin Admindata = Connections.GetData((int)Session["id"]);
                LabelWelcome.Text = Admindata.FirstName + " " + Admindata.LastName;
            }

            //string pass = "sahil032";
            //Label1.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "MD5");
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null) Session.Remove("id");
            if (Session["type"] != null) Session.Remove("type");
            Session.Abandon();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId") { Expires = DateTime.Now.AddDays(-1d) });

            Response.Redirect("~/Admin/AdminLogin.aspx");
        }
    }
}