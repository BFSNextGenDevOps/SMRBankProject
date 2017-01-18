using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Cards
{
    public partial class Savingsacc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }

            int i = DateTime.Now.Year;
            for (i = i - 60; i <= DateTime.Now.Year + 1; i++)
                DropDownList10.Items.Add(Convert.ToString(i));

            //  Label7.Text = Session["value"].ToString();

        }
    }
}