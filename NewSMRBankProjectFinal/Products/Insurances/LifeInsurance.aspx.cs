using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Insurances
{
    public partial class LifeInsurance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonAplLifeIns_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products/Loans/Demo.aspx");
        }
    }
}