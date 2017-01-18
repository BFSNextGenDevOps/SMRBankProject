using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal
{
    public partial class CustLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Cust_Id"] != null) Session.Remove("Cust_Id");
                Session.Abandon();

                Response.Redirect("~/Customer/cust_login.aspx");
            }

        }
    }
}