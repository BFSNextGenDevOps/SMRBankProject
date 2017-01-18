using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NewSMRBankProjectFinal
{
    public partial class MobRechrg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel2.Visible = false;
                if (Session["Cust_Id"] == null)
                {
                    Response.Redirect("~/Customer/cust_login.aspx");
                }
            }
        }

        protected void ButtonRchrg_Click(object sender, EventArgs e)
        {
            int CustId = Convert.ToInt32(Session["Cust_Id"]);
            int CustId2 = Convert.ToInt32(TextBoxCustID.Text);

            Customers CustDataById = Customers.GetAll_CustDataById(CustId);
            decimal CurntBlnc = CustDataById.Blnc;
            decimal RchAmt = Convert.ToDecimal(TextBoxRchAmt.Text);

            if (CustId != CustId2)
            {
                LabelMsg.Text = "You entered wrong customer ID.";
            }
            else if (TextBoxMobNo.Text.Length < 10)
            {
                LabelMsg.Text = "Enter 10 digit mobile No.";
            }
            else if (RchAmt > CurntBlnc)
            {
                LabelMsg.Text = "Ohhh.. low balance.";
            }
            else
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string Nartion = "Rech." + DropDownListSectComp.SelectedValue + "-" + TextBoxMobNo.Text;
                    string NowDate = DateTime.Now.ToString();

                    SMRGeneral GetNewCode = new SMRGeneral();
                    string ChqRefNo = GetNewCode.GenerateCode();

                    decimal NewBlnc = CurntBlnc - RchAmt;

                    string query = string.Format("INSERT INTO AccountStatements(Cust_ID, Nartion, ChqRef_No, Withdrawal, ClsBlnc, StDate) VALUES('" + CustId2 + "', '" + Nartion + "', '" + ChqRefNo + "', '" + RchAmt + "', '" + NewBlnc + "', '" + NowDate + "')");
                    SqlComm.CommandText = query;
                    SqlComm.ExecuteNonQuery();

                    query = string.Format("UPDATE accounts SET account_blnc='" + NewBlnc + "' WHERE account_holder='" + CustId2 + "'");
                    SqlComm.CommandText = query;
                    SqlComm.ExecuteNonQuery();

                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    //LabelMsg.ForeColor = System.Drawing.Color.Green;
                    //LabelMsg.Text = "Your Transaction was successful.";
                }
            }
        }
    }
}