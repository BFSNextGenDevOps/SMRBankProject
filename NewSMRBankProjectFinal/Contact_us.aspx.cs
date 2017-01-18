using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
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
            if (!IsPostBack)
            {
                States();
                Panel1.Visible = false;
            }
        }
        protected void DropDownListState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListState.SelectedIndex == 0)
            {
                DropDownListCity.SelectedIndex = 0;
                DropDownListBranch.SelectedIndex = 0;
                DropDownListCity.Enabled = false;
                DropDownListBranch.Enabled = false;
                Panel1.Visible = false;
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
                Panel1.Visible = false;
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
                Panel1.Visible = false;
            }
        }
        protected void ButtonDisplay_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
    }
}