using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Products.Loans
{
    public partial class Autoloancalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        double e1 = 0;

        double monthlyemi;
        double monthlyemi1;
        protected void Button1_Click(object sender, EventArgs e)
        {

            if ((RadioButton1.Checked == true) && (Convert.ToInt32(TextBox8.Text) < 20000))
            {
                //Label1.Text="Sorry......You are not eligible for loan.Requied salary more than 12k for CSA A/C Holder";
                Response.Write("<script>alert('Sorry......You are not eligible for loan.Requied salary more than 20k for SMR A/C Holder')</script>");
                Amount.Text = "";
                Rate.Text = "";
                PF.Text = "";
                EMI.Text = "";
            }
            if ((RadioButton2.Checked == true) && (Convert.ToInt32(TextBox8.Text) < 20000))
            {
                Response.Write("<script>alert('Sorry......You are not eligible for loan.Requied salary more than 20k for Non-A/C Holder')</script>");
                //Response.Write("Sorry......You are not eligible for loan.Requied salary more than 15k for Non-CSA A/C Holder");
                Amount.Text = "";
                Rate.Text = "";
                PF.Text = "";
                EMI.Text = "";
            }

            //Rate of interest

            if (Convert.ToInt32(TextBox8.Text) > 20000 && (Convert.ToInt32(TextBox8.Text) < 35000))
            {
                Rate.Text = "17.00";
            }
            if ((Convert.ToInt32(TextBox8.Text) >= 35000) && (Convert.ToInt32(TextBox8.Text) < 50000))
            {
                Rate.Text = "16.00";
            }
            if ((Convert.ToInt32(TextBox8.Text) >= 50000) && (Convert.ToInt32(TextBox8.Text) < 75000))
            {
                Rate.Text = "15.00";
            }
            if ((Convert.ToInt32(TextBox8.Text) >= 75000))
            {
                Rate.Text = "14.00";
            }


            double r3 = Convert.ToDouble(TextBox8.Text) - Convert.ToDouble(TextBox9.Text);

            double r2 = r3 * 15;
            Amount.Text = r2.ToString();
            //Processing Fees
            months.Text = "60";
            //  Amount.Text = "100000";
            double a = Convert.ToDouble(Amount.Text);



            //panel

            //if (((RadioButton1.Checked == true) && (Convert.ToInt32(TextBox8.Text) > 12000))||  ((RadioButton2.Checked == true) && (Convert.ToInt32(TextBox8.Text) < 15000)) )
            //{
            //    Panel1.Visible = true;
            //}
            Panel1.Visible = true;
            Panel2.Visible = true;
            double sal = Convert.ToDouble(TextBox8.Text);
            if (((DropDownList4.SelectedValue == "Sales") || (DropDownList4.SelectedValue == "Insurance") || (DropDownList4.SelectedValue == "Broker") || (DropDownList4.SelectedValue == "BPO")) && sal < 20000)
            {
                Response.Write("<script>alert('Sorry......Required salary more than 20000')</script>");
            }

            if (DropDownList7.SelectedIndex > DropDownList8.SelectedIndex)
            {
                Response.Write("<script>alert('Total Experiance can not be less than Current Experiance')</script>");
            }
            if (DropDownList5.SelectedIndex > DropDownList6.SelectedIndex)
            {
                { Response.Write("<script>alert('Total Years in City can not be less than Total yers on Current Address')</script>"); }
            }

            if ((DropDownList2.SelectedValue == "Hostel") || (DropDownList2.SelectedValue == "PG"))
            { Response.Write("<script>alert('Sorry......You are not eligible')</script>"); }


            double r = Convert.ToDouble(Amount.Text);
            double t = Convert.ToDouble(months.Text);
            double r1 = Convert.ToDouble(Rate.Text);


            // for 14%
            if (r1 == 14.00)
            {
                if (t == 12)
                { e1 = 8979; }
                if (t == 24)
                { e1 = 4801; }
                if (t == 36)
                { e1 = 3418; }
                if (t == 48)
                { e1 = 2733; }
                if (t == 60)
                { e1 = 2327; }
                monthlyemi1 = ((r / 100000) * e1);

            }

            // for 15%
            if (r1 == 15.00)
            {
                if (t == 12)
                { e1 = 9026; }
                if (t == 24)
                { e1 = 4849; }
                if (t == 36)
                { e1 = 3467; }
                if (t == 48)
                { e1 = 2683; }
                if (t == 60)
                { e1 = 2389; }
                monthlyemi1 = ((r / 100000) * e1);

            }
            // for 16%
            if (r1 == 16.00)
            {
                if (t == 12)
                { e1 = 9073; }
                if (t == 24)
                { e1 = 4886; }
                if (t == 36)
                { e1 = 3516; }
                if (t == 48)
                { e1 = 2834; }
                if (t == 60)
                { e1 = 2432; }
                monthlyemi1 = ((r / 100000) * e1);

            }
            // for 17%
            if (r1 == 17.00)
            {
                if (t == 12)
                { e1 = 9120; }
                if (t == 24)
                { e1 = 4944; }
                if (t == 36)
                { e1 = 3665; }
                if (t == 48)
                { e1 = 2886; }
                if (t == 60)
                { e1 = 2485; }
                monthlyemi1 = ((r / 100000) * e1);

            }


            double q1 = r * 0.02;
            double q2 = r * 0.025;
            if ((RadioButton1.Checked == true))
            {
                PF.Text = q1.ToString();
            }
            if ((RadioButton2.Checked == true))
            {
                PF.Text = q2.ToString();
            }


            EMI.Text = monthlyemi1.ToString();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            double r = Convert.ToDouble(loanamt.Text);
            double t = Convert.ToDouble(tenor.Text);
            double r1 = Convert.ToDouble(Rate.Text);


            // for 14%
            if (r1 == 14.00)
            {
                if (t == 12)
                { e1 = 8979; }
                if (t == 24)
                { e1 = 4801; }
                if (t == 36)
                { e1 = 3418; }
                if (t == 48)
                { e1 = 2733; }
                if (t == 60)
                { e1 = 2327; }
                monthlyemi = ((r / 100000) * e1);

            }

            // for 15%
            if (r1 == 15.00)
            {
                if (t == 12)
                { e1 = 9026; }
                if (t == 24)
                { e1 = 4849; }
                if (t == 36)
                { e1 = 3467; }
                if (t == 48)
                { e1 = 2683; }
                if (t == 60)
                { e1 = 2389; }
                monthlyemi = ((r / 100000) * e1);

            }
            // for 16%
            if (r1 == 16.00)
            {
                if (t == 12)
                { e1 = 9073; }
                if (t == 24)
                { e1 = 4886; }
                if (t == 36)
                { e1 = 3516; }
                if (t == 48)
                { e1 = 2834; }
                if (t == 60)
                { e1 = 2432; }
                monthlyemi = ((r / 100000) * e1);

            }
            // for 17%
            if (r1 == 17.00)
            {
                if (t == 12)
                { e1 = 9120; }
                if (t == 24)
                { e1 = 4944; }
                if (t == 36)
                { e1 = 3665; }
                if (t == 48)
                { e1 = 2886; }
                if (t == 60)
                { e1 = 2485; }
                monthlyemi = ((r / 100000) * e1);

            }


            double q1 = r * 0.02;
            double q2 = r * 0.025;
            if ((RadioButton1.Checked == true))
            {
                pf1.Text = q1.ToString();
            }
            if ((RadioButton2.Checked == true))
            {
                pf1.Text = q2.ToString();
            }


            emi1.Text = monthlyemi.ToString();
        }



        //protected void Button3_Click(object sender, EventArgs e)
        //{


        //}
 
    }
}