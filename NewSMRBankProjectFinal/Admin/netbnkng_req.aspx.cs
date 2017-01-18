using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class netbnkng_req : System.Web.UI.Page
    {
        protected void CheckNBKreqId()
        {
            int CustId = Convert.ToInt32(Request.QueryString["CustId"]);
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM NetBanking WHERE NBKU_id='" + CustId + "'");
                SqlComm.CommandText = query;
                int result = (int)SqlComm.ExecuteScalar();

                if (result == 1)
                {

                }
                else if (result == 0)
                {
                    Response.Redirect("netbnkng_req.aspx");
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["CustId"] != null)
                {
                    CheckNBKreqId();
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                }
                else
                {
                    Panel2.Visible = false;
                    Panel1.Visible = true;
                }
            }
        }
        protected void ButtonAltNBK_Click(object sender, EventArgs e)
        {
            int CustId = Convert.ToInt32(Request.QueryString["CustId"]);

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                SMRGeneral GetNewCode = new SMRGeneral();
                string CustPass = GetNewCode.GenerateCode();
                string CustHashPass = FormsAuthentication.HashPasswordForStoringInConfigFile(CustPass, "md5");
                string AprvDate = DateTime.Now.ToString();

                string query = string.Format("UPDATE NetBanking SET NBK_pass='" + CustHashPass + "', NBK_approvDate='" + AprvDate + "', NBK_status='1' WHERE NBKU_id='" + CustId + "'");
                SqlComm.CommandText = query;
                SqlComm.ExecuteNonQuery();

                query = string.Format("UPDATE cust_details SET net_banking='1' WHERE uid='" + CustId + "'");
                SqlComm.CommandText = query;
                SqlComm.ExecuteNonQuery();

                //string CustEmailId = "ultimatefighter032@gmail.com";
                //string emailBody = "Hello Ravikumar Chauhan, <br /><br />Thank you for using SMR Net Banking Service.<br />Your Password = '" + CustPass + "' <br /><br />Thank you,<br />Team SMR Bank";
                //string emailSub = "Net Banking Password";

                //SMRGeneral emailToCust = new SMRGeneral();
                //emailToCust.SendEmailToCust(CustEmailId, emailBody, emailSub);

                //Response.Redirect("netbnkng_req.aspx");
                Response.Redirect("netbnkng_req.aspx?p=" + CustPass + "");
            }
        }
        protected void ButtonDsAprv_Click(object sender, EventArgs e)
        {
            int CustId = Convert.ToInt32(Request.QueryString["CustId"]);

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("UPDATE NetBanking SET NBK_status='0' WHERE NBKU_id='" + CustId + "'");
                SqlComm.CommandText = query;
                SqlComm.ExecuteNonQuery();

                query = string.Format("UPDATE cust_details SET net_banking='0' WHERE uid='" + CustId + "'");
                SqlComm.CommandText = query;
                SqlComm.ExecuteNonQuery();

                Response.Redirect("netbnkng_req.aspx");
            }
        }
    }
}

        
 