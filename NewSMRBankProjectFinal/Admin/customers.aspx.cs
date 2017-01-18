using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class customers : System.Web.UI.Page
    {

        protected void ChckCustId()
        {
            if (Request.QueryString["CustId"] != null)
            {
                Customers CustId = new Customers();
                bool result = CustId.CountCust(Convert.ToInt32(Request.QueryString["CustId"]));

                if (result != false)
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                }
                else
                {
                    Response.Redirect("customers.aspx");
                }
            }
            else
            {
                Panel2.Visible = false;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChckCustId();
            }

        }
    }
}