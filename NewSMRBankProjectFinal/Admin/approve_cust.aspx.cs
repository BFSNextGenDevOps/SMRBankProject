using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace NewSMRBankProjectFinal.Admin
{
    public partial class approve_cust : System.Web.UI.Page
    {

        protected void CheckCustData()
        {
            string CustReqId = Request.QueryString["cust_reqId"];

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM cust_details WHERE req_no = '{0}'", Convert.ToInt32(CustReqId));
                SqlComm.CommandText = query;
                int result = (int)SqlComm.ExecuteScalar();

                if (result == 1)
                {
                    query = string.Format("SELECT uid FROM cust_details WHERE req_no='{0}'", Convert.ToInt32(CustReqId));
                    SqlComm.CommandText = query;
                    int CustId = (int)SqlComm.ExecuteScalar();

                    string Acntquery = string.Format("SELECT COUNT(*) FROM accounts WHERE account_holder='{0}'", CustId);
                    SqlComm.CommandText = Acntquery;
                    int Acntresult = (int)SqlComm.ExecuteScalar();

                    if (Acntresult == 0)
                    {
                        Panel3.Visible = true;
                    }
                }
                else if (result == 0)
                {
                    Panel1.Visible = true;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                Panel3.Visible = false;
                CheckCustData();
            }
        }

        protected void ButtonAltCustNo_Click(object sender, EventArgs e)
        {
            int CustReqId = Convert.ToInt32(Request.QueryString["cust_reqId"]);

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("INSERT INTO cust_details(req_no, net_banking) VALUES('" + CustReqId + "', '0')");
                SqlComm.CommandText = query;
                SqlComm.ExecuteNonQuery();

                Response.Redirect("approve_cust.aspx?cust_reqId=" + CustReqId + "");
            }
        }

        protected void ButtonAltAcntNo_Click(object sender, EventArgs e)
        {
            int CustReqId = Convert.ToInt32(Request.QueryString["cust_reqId"]);

            if (TextBoxBlnc.Text != null)
            {
                Connections con = new Connections();
                string strConnString = con.GetConnString();
                using (SqlConnection SqlCon = new SqlConnection(strConnString))
                {
                    SqlCommand SqlComm = new SqlCommand("", SqlCon);
                    SqlCon.Open();

                    string query = string.Format("SELECT uid, branch, account_type FROM account_req AS acc JOIN cust_details AS cust ON cust.req_no=acc.req_no WHERE acc.req_no='{0}'", CustReqId);
                    SqlComm.CommandText = query;
                    SqlDataReader reader = SqlComm.ExecuteReader();
                    reader.Read();
                    int CustId = reader.GetInt32(0);
                    int BrnchId = reader.GetInt32(1);
                    string acctype = reader.GetString(2);
                    reader.Close();

                    string aprv_date = DateTime.Now.ToString();
                    decimal amnt = Convert.ToDecimal(TextBoxBlnc.Text);

                    query = string.Format("INSERT INTO accounts(account_holder, branch_code, account_type, date_approved, approved, account_blnc) VALUES('" + CustId + "', '" + BrnchId + "', '" + acctype + "', '" + aprv_date + "', '1', '" + amnt + "')");
                    SqlComm.CommandText = query;
                    SqlComm.ExecuteNonQuery();

                    string SetStatus = string.Format("UPDATE account_req SET status='1' WHERE req_no='" + CustReqId + "'");
                    SqlComm.CommandText = SetStatus;
                    SqlComm.ExecuteNonQuery();

                    SMRGeneral GetNewCode = new SMRGeneral();
                    string ChqRefNo = GetNewCode.GenerateCode();
                    string Nartion = "Cash";
                    string NowDate = DateTime.Now.ToString();

                    string queryFrTrns = string.Format("INSERT INTO AccountStatements(Cust_ID, Nartion, ChqRef_No, Deposit, ClsBlnc, StDate) VALUES('" + CustId + "', '" + Nartion + "', '" + ChqRefNo + "', '" + amnt + "', '" + amnt + "', '" + NowDate + "')");
                    SqlComm.CommandText = queryFrTrns;
                    SqlComm.ExecuteNonQuery();

                    Response.Redirect("approve_cust.aspx?cust_reqId=" + CustReqId + "");
                }
            }
        }
    }
}