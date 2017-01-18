using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Loans
{
    public partial class GoldLoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonAplyGoldLoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products/Loans/Demo.aspx");
        }
    }
}