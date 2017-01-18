using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void States()
        {
            StatesCities GetStates = new StatesCities();
            DropDownListSelectState.DataSource = GetStates.Get_States();
            DropDownListSelectState.DataTextField = "StateName";
            DropDownListSelectState.DataValueField = "StateID";
            DropDownListSelectState.DataBind();

            ListItem listates = new ListItem();
            DropDownListSelectState.Items.Insert(0, listates);

            DropDownListSelectCity.Enabled = false;

            DropDownListSlctStatePnl3.DataSource = GetStates.Get_States();
            DropDownListSlctStatePnl3.DataTextField = "StateName";
            DropDownListSlctStatePnl3.DataValueField = "StateID";
            DropDownListSlctStatePnl3.DataBind();
            ListItem listStates = new ListItem();
            DropDownListSlctStatePnl3.Items.Insert(0, listStates);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToInt32(Session["type"]) != 1)
                {
                    Response.Redirect("AdminLogin.aspx");
                }

                States();
            }

            MultiView1.ActiveViewIndex = 0;
        }

        protected void ButtonAddBranch_Click(object sender, EventArgs e)
        {
            if (TextBoxBranchName.Text.Length < 2)
            {
                LabelError1.Text = "Must be at least 2 characters.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string query = string.Format("SELECT COUNT(branch_name) FROM branch_details WHERE branch_name='" + TextBoxBranchName.Text + "'");
                    SqlComm.CommandText = query;
                    int result = (int)SqlComm.ExecuteScalar();
                    if (result == 1)
                    {
                        MultiView1.ActiveViewIndex = 1;
                        LabelError1.Text = "<b>" + TextBoxBranchName.Text + "</b> is already in use.";
                    }
                    else if (result == 0)
                    {
                        int StateId = Convert.ToInt32(DropDownListSelectState.SelectedValue);
                        int CityId = Convert.ToInt32(DropDownListSelectCity.SelectedValue);
                        string CurrentDate = DateTime.Now.ToString();
                        query = string.Format("INSERT INTO branch_details(branch_name,branch_state,branch_city,branch_add,branch_pin,branch_phn,open_date) VALUES('" + TextBoxBranchName.Text + "'," + StateId + ",'" + CityId + "','" + TextBoxAddress.Text + "','" + TextBoxPinCode.Text + "','" + TextBoxPhnNo.Text + "','" + CurrentDate + "')");
                        SqlComm.CommandText = query;
                        SqlComm.ExecuteNonQuery();

                        MultiView1.ActiveViewIndex = 1;
                        LabelError1.ForeColor = System.Drawing.Color.Green;
                        LabelError1.Text = "Your new Branch added successfully.";
                    }
                }
            }
        }

        protected void DropDownListSelectState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListSelectState.SelectedIndex == 0)
            {
                DropDownListSelectCity.SelectedIndex = 0;
                DropDownListSelectCity.Enabled = false;
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                DropDownListSelectCity.Enabled = true;

                StatesCities GetCitiesByState = new StatesCities();
                DropDownListSelectCity.DataSource = GetCitiesByState.Get_CitiesByStateId(Convert.ToInt32(DropDownListSelectState.SelectedValue));
                DropDownListSelectCity.DataTextField = "CityName";
                DropDownListSelectCity.DataValueField = "CityID";
                DropDownListSelectCity.DataBind();

                ListItem listates = new ListItem();
                DropDownListSelectCity.Items.Insert(0, listates);
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiView1.ActiveViewIndex = Convert.ToInt32(e.Item.Value);
        }

        protected void ButtonAddState_Click(object sender, EventArgs e)
        {
            if (TextBoxStateNamePnl3.Text.Length < 2)
            {
                LabelError1.Text = "Must be at least 2 characters.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string query = string.Format("SELECT COUNT(StateName) FROM BranchStates WHERE StateName='" + TextBoxStateNamePnl3.Text + "'");
                    SqlComm.CommandText = query;
                    int result = (int)SqlComm.ExecuteScalar();
                    if (result == 1)
                    {
                        LabelError1.Text = "<b>" + TextBoxStateNamePnl3.Text + "</b> is already in use.";
                    }
                    else if (result == 0)
                    {
                        query = string.Format("INSERT INTO BranchStates(StateName) VALUES('" + TextBoxStateNamePnl3.Text + "')");
                        SqlComm.CommandText = query;
                        SqlComm.ExecuteNonQuery();
                        LabelError1.ForeColor = System.Drawing.Color.Green;
                        LabelError1.Text = "New state added successfully.";
                    }
                }
            }
        }

        protected void ButtonAddCity_Click(object sender, EventArgs e)
        {
            if (TextBoxCityNamePnl3.Text.Length < 2)
            {
                LabelError2.Text = "Must be at least 2 characters.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string query = string.Format("SELECT COUNT(CityName) FROM BranchCities WHERE CityName='" + TextBoxCityNamePnl3.Text + "'");
                    SqlComm.CommandText = query;
                    int result = (int)SqlComm.ExecuteScalar();
                    if (result == 1)
                    {
                        LabelError2.Text = "<b>" + TextBoxCityNamePnl3.Text + "</b> is already in use.";
                    }
                    else if (result == 0)
                    {
                        query = string.Format("INSERT INTO BranchCities(StateID,CityName) VALUES('" + DropDownListSelectState.SelectedValue + "','" + TextBoxCityNamePnl3.Text + "')");
                        SqlComm.CommandText = query;
                        SqlComm.ExecuteNonQuery();
                        LabelError2.ForeColor = System.Drawing.Color.Green;
                        LabelError2.Text = "New city added successfully.";
                    }
                }
            }
        }
    }
}