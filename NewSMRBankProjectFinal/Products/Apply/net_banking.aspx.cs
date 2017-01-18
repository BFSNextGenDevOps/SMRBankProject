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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel2.Visible = false;
            }

        }
        protected void ButtonAplyNBK_Click(object sender, EventArgs e)
        {
            int CustId = Convert.ToInt32(TextBoxCustId.Text);

            Customers CheckCustId = new Customers();
            bool result = CheckCustId.CountCust(CustId);
            bool result2 = CheckCustId.CheckCustNBK(CustId);
            bool result3 = CheckCustId.ChckNonActvCust(CustId);

            if (result != false)
            {
                if (result2 != true)
                {
                    if (result3 != true)
                    {
                        Panel1.Visible = false;
                        Panel3.Visible = false;
                        Panel2.Visible = true;

                        Connections con = new Connections();
                        string strConnString = con.GetConnString();
                        using (SqlConnection SqlCon = new SqlConnection(strConnString))
                        {
                            SqlCommand SqlComm = new SqlCommand("", SqlCon);
                            SqlCon.Open();

                            string ReqDate = DateTime.Now.ToString();

                            string query = string.Format("INSERT INTO NetBanking(NBKU_id, NBK_reqDate, NBK_status) VALUES('" + CustId + "', '" + ReqDate + "', '0')");
                            SqlComm.CommandText = query;
                            SqlComm.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        LabelError.Text = "<font color='red'>Your status is Deactive for it.</font>";
                    }
                }
                else
                {
                    LabelError.Text = "<font color='red'>You already apply for it.</font>";
                }
            }
            else
            {
                LabelError.Text = "<font color='red'>You entered wrong customer ID.</font>";
            }
        }
    }
}