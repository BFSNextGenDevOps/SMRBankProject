using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NewSMRBankProjectFinal.Products.Loans
{
    public partial class Twowheeler_reg : System.Web.UI.Page
    {
        int period = 0;
        //double monthlyemi1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                Amount.Text = (Session["amt"]).ToString();

                //Processing Fees
                months.Text = "36";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //double saltxt =Convert.ToDouble(Session["sal"]);
            //double t = Convert.ToDouble(months.Text);
            //double r3 = saltxt;
            //double r2 = r3 * 1.5;
            // double emi = 0;
            //Amount.Text = ( Session["amt"]).ToString();

            ////Processing Fees
            //months.Text = "36";
            //  Amount.Text = "100000";
            // double r1 = 11;
            //   double p = saltxt;
            //if (t == 36)
            //{ e1 = 3516; }

            // for 11%

            //emi = ((r2 * r1 / 100) + r2) / period;




            //double q1 = p * 0.02;
            //double q2 = p * 0.025;
            //if ((RadioButton1.Checked == true))
            //{
            //    PF.Text = q1.ToString();
            //}
            //if ((RadioButton2.Checked == true))
            //{
            //    PF.Text = q2.ToString();
            //}
            // EMI.Text = emi.ToString();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if ((Convert.ToDouble(TextBox10.Text) > Convert.ToDouble(Amount.Text)))
            {
                Label1.Visible = true;
                Label18.Visible = false;
                Label17.Visible = false;
            }
            else
            {
                Label1.Visible = false;

                double loan_amount = Convert.ToDouble(TextBox10.Text);
                string tenure = DropDownList8.SelectedItem.ToString();

                double interest_rate = 11;
                double emi = 0;


                if (tenure == "1 Year")
                {
                    period = 12;
                }
                else if (tenure == "1 Year 6 months")
                {
                    period = 18;
                }
                else if (tenure == "2 Years")
                {
                    period = 24;
                }
                else if (tenure == "2 Year 6 months")
                {
                    period = 30;
                }
                else if (tenure == "3 Years")
                {
                    period = 36;
                }

                emi = ((loan_amount * interest_rate / 100) + loan_amount) / period;

                Label18.Text = emi.ToString();

                Label18.Visible = true;
                Label17.Visible = true;
            }
        }

        public string generateUniqNuo()
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            //  string con_string = "Data Source=SWATI-PC;Initial Catalog=BILL;Integrated Security=True";
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                string uid = string.Empty;
                int i = 0;

            zzz: { }
                {
                    i = i + 1;

                    if (i < 10)
                    {
                        uid = "0000" + Convert.ToString(i);
                    }
                    else if (i < 100)
                    {
                        uid = "000" + Convert.ToString(i);
                    }
                    else if (i < 1000)
                    {
                        uid = "00" + Convert.ToString(i);
                    }
                    else if (i < 10000)
                    {
                        uid = "0" + Convert.ToString(i);
                    }
                    uid = "T" + uid;

                    ulong check;
                    using (SqlCommand cmd = new SqlCommand("select count(twowheeler_id) from Twowheeler_registration where twowheeler_id= '" + uid + "' ", SqlCon))
                    {
                        //con.Close();
                        //con.Open();

                        check = Convert.ToUInt64(cmd.ExecuteScalar());

                        if (check > 0)
                        {
                            goto zzz;
                        } return uid;
                    }

                }
            }
        }


        //protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        //{
        //    Response.Write("<h2>  Your Details are as follows  </h2>");
        //    Response.Write("<hr><h3> Personal Details</h3>");
        //    Response.Write("<b> Name:</b>" + TextBox11.Text + " " + TextBox12.Text);
        //    if (Male.Checked == true)
        //        Response.Write("<br><b>Gender : </b> Male");
        //    else
        //        Response.Write("<br><b>Gender : </b> Female");
        //    Response.Write("<br><b> Age :</b>" + TextBox13.Text);
        //    //**********Contact Details    
        //    Response.Write("<hr><h3> Contact Details </h3>");
        //    Response.Write("<b> Mobile Number :</b>" + TextBox14.Text);
        //    Response.Write("<br><b> E-Mail Address :</b>" + TextBox15.Text);
        //    Response.Write("<br><b> Location :</b>" + DropDownList9.SelectedItem);


        //    //Resi Details
        //    Response.Write("<br><hr><h3> Residance Stability </h3>");
        //    Response.Write("<b>  Residence Type  :</b>" + DropDownList2.SelectedItem);
        //    Response.Write("<br><b> Total yrs on Current Address :</b>" + DropDownList5.SelectedItem);
        //    Response.Write("<br><b> Total yrs in Current City :</b>" + DropDownList6.SelectedItem);

        //    //****************Company Details
        //    Response.Write("<hr><h3> Company Details </h3>");
        //    Response.Write("<b> Company Name :</b>" + DropDownList4.SelectedItem);
        //    Response.Write("<br><b> Type of Company :</b>" + DropDownList14.SelectedItem);
        //    Response.Write("<br><b> Monthly Net Salary :</b>" + TextBox16.Text);
        //    if (RadioButton3.Checked == true)
        //        Response.Write("<br><b>Salary A/C in : </b> SMR Bank");
        //    elsehttp://localhost:50173/SMRBank/Products/Loans/Twowheeler_reg.aspx
        //        Response.Write("<br><b>Salary A/C in : </b> Other Bank");


        //Response.Write("<hr>");




        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Demo.aspx?value=Two Wheeler Loan");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TwowheelerEligible.aspx");
        }
    }
}