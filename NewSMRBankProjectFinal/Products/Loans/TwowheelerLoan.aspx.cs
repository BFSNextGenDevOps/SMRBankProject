using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Loans
{
    public partial class TwowheelerLoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiViewTwoWheelerLoan.ActiveViewIndex = 0;
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiViewTwoWheelerLoan.ActiveViewIndex = Convert.ToInt32(e.Item.Value);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Twowheelereligible.aspx");
        }
    }
}