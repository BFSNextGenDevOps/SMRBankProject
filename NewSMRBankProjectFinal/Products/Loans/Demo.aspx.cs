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
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = DateTime.Now.Year;
            for (i = i - 60; i <= DateTime.Now.Year + 1; i++)
                DropDownList10.Items.Add(Convert.ToString(i));

            // Label2.Text = (Session["value"]).ToString();
            Label2.Text = Request.QueryString["value"];
            Label2.Visible = true;

        }
        public string generateUniqNuo()
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                string uid = string.Empty;
                int i = 0;

            zzz: { }
                {
                    i = i + 1;
                    if (Label2.Text == "Two Wheeler Loan")
                    {
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
                        uid = "TW" + uid;
                    }
                    else if (Label2.Text == "Gold Loan")
                    {
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
                        uid = "G" + uid;
                    }
                    else if (Label2.Text == "Health Raksha")
                    {
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
                        uid = "HR" + uid;
                    }
                    else if (Label2.Text == "Auto Loan")
                    {
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
                        uid = "A" + uid;
                    }
                    else if (Label2.Text == "Personal Loan")
                    {
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
                        uid = "PL" + uid;
                    }
                    else if (Label2.Text == "Home Loan")
                    {
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
                        uid = "H" + uid;
                    }
                    else if (Label2.Text == "Life Insurance")
                    {
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
                        uid = "LI" + uid;
                    }

                    else if (Label2.Text == "Card")
                    {
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
                        uid = "C" + uid;
                    }
                    ulong check;
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(Product_id) FROM Product WHERE Product_id= '" + uid + "'", SqlCon))
                    {
                        SqlCon.Close();
                        SqlCon.Open();

                        check = Convert.ToUInt64(cmd.ExecuteScalar());

                        if (check > 0)
                        {
                            goto zzz;
                        } return uid;
                    }
                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            String strGender;
            //    Dim id1 As Integer = 0

            if (Female.Checked == true)
            {

                strGender = "F";
            }
            else { strGender = "M"; }

            String strSalAcc;
            //    Dim id1 As Integer = 0

            if (RadioButton3.Checked == true)
            {

                strSalAcc = "SMR";
            }
            else { strSalAcc = "Other"; }

            string dob = (DropDownList8.SelectedItem.ToString() + DropDownList1.SelectedItem.ToString() + DropDownList10.SelectedItem.ToString());

            string tid = generateUniqNuo();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                string query = "insert into Product (Product_id,fname,lname,gender,dob,age,address,pincode,city,state,res_no,mob_num,email,res_type,yrs_in_res,yrs_in_city,comp_name,typeofcomp,monthlynetsal,sal_acc_in) values('" + tid + "', '" + TextBox11.Text + "','" + TextBox12.Text + "','" + strGender + "','" + dob + "'," + TextBox13.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ",'" + DropDownList3.SelectedItem + "','" + State.SelectedItem + "'," + TextBox8.Text + "," + TextBox14.Text + ",'" + TextBox15.Text + "','" + DropDownList2.SelectedItem + "','" + DropDownList5.SelectedItem + "','" + DropDownList6.SelectedItem + "','" + DropDownList4.SelectedItem + "','" + DropDownList14.SelectedItem + "'," + TextBox16.Text + ",'" + strSalAcc + "')";
                SqlCommand cmd = new SqlCommand(query, SqlCon);
                SqlCon.Open();
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('" + TextBox11.Text + " " + TextBox12.Text + " Your Unique ID generated is " + tid + "' );</script>");

            }
        }
    }
}