using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace NewSMRBankProjectFinal
{
    public class NetBanking
    {
        public int NBK_id;
        public int NBKU_id;
        public DateTime NBK_reqDate;
        public string NBK_status;

        public NetBanking(int NBK_id, int NBKU_id, DateTime NBK_reqDate, string NBK_status)
        {
            // TODO: Complete member initialization
            this.NBK_id = NBK_id;
            this.NBKU_id = NBKU_id;
            this.NBK_reqDate = NBK_reqDate;
            this.NBK_status = NBK_status;
        }
        public static ArrayList Get_NBKReqs()
        {
            ArrayList NBKReqsList = new ArrayList();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT * FROM NetBanking ORDER BY NBK_id DESC");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();

                while (reader.Read())
                {
                    int NBK_id = reader.GetInt32(0);
                    int NBKU_id = reader.GetInt32(1);
                    //string NBK_pass = reader.GetString(2);
                    //DateTime NBK_last_logDate = reader.GetDateTime(3);
                    DateTime NBK_reqDate = reader.GetDateTime(4);
                    //DateTime NBK_approvDate = reader.GetDateTime(5);
                    string NBK_status = reader.GetString(6);

                    NetBanking NBKReqs = new NetBanking(NBK_id, NBKU_id, NBK_reqDate, NBK_status);
                    NBKReqsList.Add(NBKReqs);
                }
                return NBKReqsList;
            }
        }
    }
}