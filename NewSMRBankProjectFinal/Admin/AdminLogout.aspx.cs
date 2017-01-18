using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null) Session.Remove("id");
            if (Session["type"] != null) Session.Remove("type");
            Session.Abandon();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId") { Expires = DateTime.Now.AddDays(-1d) });

            Response.Redirect("~/Admin/AdminLogin.aspx");
        }
    }
}