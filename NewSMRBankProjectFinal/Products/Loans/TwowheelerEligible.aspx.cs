using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace NewSMRBankProjectFinal.Products.Loans
{
    public partial class TwowheelerEligible : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = DateTime.Now.Year;
            for (i = i - 60; i <= DateTime.Now.Year + 1; i++)
                DropDownList10.Items.Add(Convert.ToString(i));


            DropDownList3.Attributes.Add("onchange", "CalcTotalAmt();");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedValue == "Retired" || DropDownList3.SelectedValue == "Homemaker" || Convert.ToInt32(TextBox5.Text) < 10000)
            {
                Response.Redirect("notEligible.aspx");
            }

            else
            {
                double saltxt = Convert.ToDouble(TextBox5.Text);

                double r3 = saltxt;
                double r2 = r3 * 1.5;

                // string txtSal = TextBox5.Text;
                Session["amt"] = r2;
                Response.Redirect("Twowheeler_reg.aspx");
            }



        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}