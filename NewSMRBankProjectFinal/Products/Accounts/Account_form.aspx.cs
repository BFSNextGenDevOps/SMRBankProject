using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace NewSMRBankProjectFinal
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void BirthDate()
        {
            ListItem listDay1 = new ListItem("Day", "");
            DropDownListDay.Items.Insert(0, listDay1);
            ListItem listMonth1 = new ListItem("Month", "");
            DropDownListMonth.Items.Insert(0, listMonth1);
            ListItem listYear1 = new ListItem("Year", "");
            DropDownListYear.Items.Insert(0, listYear1);

            for (int d = 31; d >= 1; d--)
            {
                ListItem listDay = new ListItem(d.ToString(), d.ToString());
                DropDownListDay.Items.Insert(1, listDay);
            }
            for (int m = 12; m >= 1; m--)
            {
                ListItem listMonth = new ListItem(m.ToString(), m.ToString());
                DropDownListMonth.Items.Insert(1, listMonth);
            }
            for (int y = 2014; y >= 1900; y--)
            {
                ListItem listYear = new ListItem(y.ToString(), y.ToString());
                DropDownListYear.Items.Insert(1, listYear);
            }
            //RangeValidator1.MaximumValue = DateTime.Now.Date.ToString("MM/dd/yyyy");
            //RangeValidator1.MinimumValue = DateTime.Now.Date.AddYears(-90).ToString("MM/dd/yyyy");
        }
        protected void States()
        {
            StatesCities GetStates = new StatesCities();
            DropDownListState.DataSource = GetStates.Get_States();
            DropDownListState.DataTextField = "StateName";
            DropDownListState.DataValueField = "StateID";
            DropDownListState.DataBind();

            ListItem listatesState = new ListItem("Select State", "");
            DropDownListState.Items.Insert(0, listatesState);

            ListItem listatesCity = new ListItem("Select City", "");
            DropDownListCity.Items.Insert(0, listatesCity);

            ListItem listatesBranch = new ListItem("Select Branch", "");
            DropDownListBranch.Items.Insert(0, listatesBranch);

            DropDownListCity.Enabled = false;
            DropDownListBranch.Enabled = false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string ac_type = Request.QueryString["ac_type"];
            string sub_ac_type = Request.QueryString["sub_ac_type"];

            if (ac_type != "Savings Account" && ac_type != "Salary Account" && ac_type != "Current Account")
            {
                Response.Redirect("~/accounts.aspx");
            }
            else
            {
                if (sub_ac_type != "Kids Advantage Account" && sub_ac_type != "Senior Citizens Account" && sub_ac_type != "Regular Savings Account" && sub_ac_type != "SavingsMax Account" && sub_ac_type != "Premium Salary Account" && sub_ac_type != "Classic Salary Account" && sub_ac_type != "Regular Salary Account" && sub_ac_type != "ULTIMA Current Account" && sub_ac_type != "Supreme Current Account")
                {
                    Response.Redirect("~/accounts.aspx");
                }
            }
            if (!IsPostBack)
            {
                Panel2.Visible = false;
                States();
                BirthDate();
            }

        }
        protected void DropDownListState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListState.SelectedIndex == 0)
            {
                DropDownListCity.SelectedIndex = 0;
                DropDownListCity.Enabled = false;
                DropDownListBranch.Enabled = false;
            }
            else
            {
                DropDownListCity.Enabled = true;

                StatesCities GetCitiesByState = new StatesCities();
                DropDownListCity.DataSource = GetCitiesByState.Get_CitiesByStateId(Convert.ToInt32(DropDownListState.SelectedValue));
                DropDownListCity.DataTextField = "CityName";
                DropDownListCity.DataValueField = "CityID";
                DropDownListCity.DataBind();

                ListItem listatesCity = new ListItem("Select City", "");
                DropDownListCity.Items.Insert(0, listatesCity);
            }
        }
        protected void DropDownListCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListCity.SelectedIndex == 0)
            {
                DropDownListBranch.SelectedIndex = 0;
                DropDownListBranch.Enabled = false;
            }
            else
            {
                DropDownListBranch.Enabled = true;

                Branches Get_BranchesByCityId = new Branches();
                DropDownListBranch.DataSource = Get_BranchesByCityId.GetBranchesByCityId(Convert.ToInt32(DropDownListCity.SelectedValue));
                DropDownListBranch.DataTextField = "branch_name";
                DropDownListBranch.DataValueField = "branch_code";
                DropDownListBranch.DataBind();

                ListItem listatesBranch = new ListItem("Select Branch", "");
                DropDownListBranch.Items.Insert(0, listatesBranch);
            }
        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(aadhaar_no) FROM account_req WHERE aadhaar_no='{0}'", TextBoxAadhaar.Text);
                SqlComm.CommandText = query;
                int result = (int)SqlComm.ExecuteScalar();
                if (result == 1)
                {
                    LabelErrors.Text = "Aadhaar No <b>" + TextBoxAadhaar.Text + "</b> is already in use.";
                }
                else if (result == 0)
                {
                    int StateId = Convert.ToInt32(DropDownListState.SelectedValue);
                    int CityId = Convert.ToInt32(DropDownListCity.SelectedValue);
                    int BranchId = Convert.ToInt32(DropDownListBranch.SelectedValue);
                    int BirthDay = Convert.ToInt32(DropDownListDay.SelectedValue);
                    int BirthMonth = Convert.ToInt32(DropDownListMonth.SelectedValue);
                    int BirthYear = Convert.ToInt32(DropDownListYear.SelectedValue);

                    string acc_type = Request.QueryString["ac_type"];
                    string sub_ac_type = Request.QueryString["sub_ac_type"];
                    string req_date = DateTime.Now.ToString();
                    string status = "0";

                    DateTime DT = new DateTime(BirthYear, BirthMonth, BirthDay);
                    string BirthDate = DT.Date.ToString();

                    //(account_type,sub_account,title,fname,mname,lname,address,pin,state,city,branch,gender,maritalStatus,)
                    query = string.Format("INSERT INTO account_req(account_type,sub_account,title,fname,mname,lname,address,pin,state,city,branch,gender,maritalStatus,birthdate,email,phone_no,mob_no,aadhaar_no,req_date,status) VALUES('" + acc_type + "', '" + sub_ac_type + "', '" + DropDownListTitle.SelectedValue + "', '" + TextBoxFname.Text + "', '" + TextBoxMname.Text + "', '" + TextBoxLname.Text + "', '" + TextBoxAddress.Text + "', '" + TextBoxPin.Text + "', '" + StateId + "', '" + CityId + "', '" + BranchId + "', '" + DropDownListGender.SelectedValue + "', '" + DropDownListMaritalStatus.SelectedValue + "', '" + BirthDate + "', '" + TextBoxEmail.Text + "', '" + TextBoxPhone.Text + "', '" + TextBoxMobile.Text + "', '" + TextBoxAadhaar.Text + "', '" + req_date + "', '" + status + "')");
                    SqlComm.CommandText = query;
                    SqlComm.ExecuteNonQuery();

                    Panel1.Visible = false;
                    Panel2.Visible = true;
                }
            }
        }
    }
}