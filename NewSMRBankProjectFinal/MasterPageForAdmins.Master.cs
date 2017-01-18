using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal
{
    public partial class MasterPageForAdmins : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToInt32(Session["type"]) != 1)
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
        }
    }
}