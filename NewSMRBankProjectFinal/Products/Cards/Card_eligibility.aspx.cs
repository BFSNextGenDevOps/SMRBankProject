using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Cards
{
    public partial class Card_eligibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList3.Attributes.Add("onchange", "CalcTotalAmt();");
            DropDownList5.Attributes.Add("onchange", "CalcTotalAmt1();");
            RadioButton3.Attributes.Add("onchange", "CalcTotalAmt2();");
            LinkButton1.Attributes.Add("OnClick", "CalcTotalAmt3();");
            LinkButton2.Attributes.Add("OnClick", "CalcTotalAmt3();");
        
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.Attributes.Add("onchange", "CalcTotalAmt3();");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton2.Attributes.Add("onchange", "CalcTotalAmt3();");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedValue == "Student" || DropDownList3.SelectedValue == "Retired" || DropDownList3.SelectedValue == "Homemaker")
            {
                Response.Redirect("notEligible.aspx");
            }
            else
            {
                Response.Redirect("SavingsAcc.aspx");
            }
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

        }
        protected void LinkButton2_Click1(object sender, EventArgs e)
        {

        }
    }
   


    
   
}