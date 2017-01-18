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
    public class Transactions
    {
        public int TransID;
        public int CustID;
        public string Narrtn;
        public string ChqRefNo;
        public string WithdAmt;
        public string DpoAmt;
        public decimal ClsAmt;
        public DateTime TrnsDate;

        public Transactions()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public Transactions(int TransID, int CustID, string Narrtn, string ChqRefNo, string WithdAmt, string DpoAmt, decimal ClsAmt, DateTime TrnsDate)
        {
            // TODO: Complete member initialization
            this.TransID = TransID;
            this.CustID = CustID;
            this.Narrtn = Narrtn;
            this.ChqRefNo = ChqRefNo;
            this.WithdAmt = WithdAmt;
            this.DpoAmt = DpoAmt;
            this.ClsAmt = ClsAmt;
            this.TrnsDate = TrnsDate;
        }

        public static ArrayList GetAllTransByCustId(int CustId)
        {
            ArrayList TransList = new ArrayList();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT * FROM AccountStatements WHERE Cust_ID='" + CustId + "' ORDER BY St_ID DESC");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();
                Transactions trns = null;

                while (reader.Read())
                {
                    int TransID = Convert.ToInt32(reader["St_ID"]);
                    int CustID = Convert.ToInt32(reader["St_ID"]);
                    string Narrtn = reader["Nartion"].ToString();
                    string ChqRefNo = reader["ChqRef_No"].ToString();
                    string WithdAmt = reader.IsDBNull(4) ? null : reader["Withdrawal"].ToString();
                    string DpoAmt = reader.IsDBNull(5) ? null : reader["Deposit"].ToString();
                    decimal ClsAmt = Convert.ToDecimal(reader["ClsBlnc"]);
                    DateTime TrnsDate = Convert.ToDateTime(reader["StDate"]);

                    trns = new Transactions(TransID, CustID, Narrtn, ChqRefNo, WithdAmt, DpoAmt, ClsAmt, TrnsDate);
                    TransList.Add(trns);
                }
            }
            return TransList;
        }
    }
}