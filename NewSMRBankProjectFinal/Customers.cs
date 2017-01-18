using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace NewSMRBankProjectFinal
{
    public class Customers
    {

        public int CustId;
        public int account_no;
        public string account_type;
        public string fname;
        public string mname;
        public string lname;
        public string gender;
        public string mob_no;
        public string branch_name;
        public string approved;

        public int Req_No;
        public int Cust_Id;
        public int Acc_No;
        public string Acc_type;
        public string SubAcc_type;
        public decimal Blnc;
        public string Title;
        public string Fname;
        public string Mname;
        public string Lname;
        public string Adrs;
        public string Pin;
        public string StateName;
        public string CityName;
        public string BrnchName;
        public string Gender;
        public string Mstatus;
        public DateTime BirthDate;
        public string EmailId;
        public string Phn_No;
        public string Mob_No;
        public string Aadhaar_No;
        public DateTime Req_Date;
        public DateTime Aprv_Date;
        public string AccStatus;
        public string NBK_Status;

        public Customers(int CustId, int account_no, string account_type, string fname, string mname, string lname, string gender, string mob_no, string branch_name, string approved)
        {
            // TODO: Complete member initialization
            this.CustId = CustId;
            this.account_no = account_no;
            this.account_type = account_type;
            this.fname = fname;
            this.mname = mname;
            this.lname = lname;
            this.gender = gender;
            this.mob_no = mob_no;
            this.branch_name = branch_name;
            this.approved = approved;
        }

        public Customers()
        {
            // TODO: Complete member initialization
        }

        public Customers(int Req_No, int Cust_Id, int Acc_No, string Acc_type, string SubAcc_type, decimal Blnc, string Title, string Fname, string Mname, string Lname, string Adrs, string Pin, string StateName, string CityName, string BrnchName, string Gender, string Mstatus, DateTime BirthDate, string EmailId, string Phn_No, string Mob_No, string Aadhaar_No, DateTime Req_Date, DateTime Aprv_Date, string AccStatus, string NBK_Status)
        {
            // TODO: Complete member initialization
            this.Req_No = Req_No;
            this.Cust_Id = Cust_Id;
            this.Acc_No = Acc_No;
            this.Acc_type = Acc_type;
            this.SubAcc_type = SubAcc_type;
            this.Blnc = Blnc;
            this.Title = Title;
            this.Fname = Fname;
            this.Mname = Mname;
            this.Lname = Lname;
            this.Adrs = Adrs;
            this.Pin = Pin;
            this.StateName = StateName;
            this.CityName = CityName;
            this.BrnchName = BrnchName;
            this.Gender = Gender;
            this.Mstatus = Mstatus;
            this.BirthDate = BirthDate;
            this.EmailId = EmailId;
            this.Phn_No = Phn_No;
            this.Mob_No = Mob_No;
            this.Aadhaar_No = Aadhaar_No;
            this.Req_Date = Req_Date;
            this.Aprv_Date = Aprv_Date;
            this.AccStatus = AccStatus;
            this.NBK_Status = NBK_Status;
        }
        public bool CountCust(int CustId)
        {
            bool value;

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM cust_details JOIN accounts AS acnt ON acnt.account_holder=uid WHERE approved=1 AND uid='" + CustId + "'");
                SqlComm.CommandText = query;
                int result = (int)SqlComm.ExecuteScalar();

                if (result != 1)
                {
                    value = false;
                }
                else
                {
                    value = true;
                }
            }
            return value;
        }

        public bool CheckCustNBK(int CustId)
        {
            bool result;

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM NetBanking WHERE NBK_status=1 AND NBKU_id='" + CustId + "'");
                SqlComm.CommandText = query;
                int chckID = (int)SqlComm.ExecuteScalar();

                if (chckID != 1)
                {
                    result = false;
                }
                else
                {
                    result = true;
                }
            }
            return result;
        }

        public bool ChckNonActvCust(int CustId)
        {
            bool result;

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT COUNT(*) FROM NetBanking WHERE NBKU_id='" + CustId + "'");
                SqlComm.CommandText = query;
                int chckID = (int)SqlComm.ExecuteScalar();

                if (chckID != 1)
                {
                    result = false;
                }
                else
                {
                    result = true;
                }
            }
            return result;
        }

        public static ArrayList Get_OlCust()
        {
            ArrayList OlCustList = new ArrayList();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT uid, acc.account_no, acreq.account_type, fname, mname, lname, gender, mob_no, branch_name, approved FROM cust_details AS cust JOIN account_req AS acreq ON acreq.req_no=cust.req_no JOIN accounts AS acc ON acc.account_holder=uid JOIN branch_details AS brnch ON brnch.branch_code=branch WHERE approved=1 ORDER BY uid DESC");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();

                while (reader.Read())
                {
                    int CustId = reader.GetInt32(0);
                    int account_no = reader.GetInt32(1);
                    string account_type = reader.GetString(2);
                    string fname = reader.GetString(3);
                    string mname = reader.GetString(4);
                    string lname = reader.GetString(5);
                    string gender = reader.GetString(6);
                    string mob_no = reader.GetString(7);
                    string branch_name = reader.GetString(8);
                    string approved = reader.GetString(9);

                    Customers Custs = new Customers(CustId, account_no, account_type, fname, mname, lname, gender, mob_no, branch_name, approved);
                    OlCustList.Add(Custs);
                }
                return OlCustList;
            }
        }

        public static Customers GetAll_CustDataById(int CustId)
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT cust.req_no, uid, acc.account_no, acreq.account_type, sub_account, account_blnc, title, fname, mname, lname, address, pin, StateName, CityName, branch_name, gender, maritalStatus, birthdate, email, phone_no, mob_no, aadhaar_no, req_date, date_approved, approved, net_banking FROM cust_details AS cust JOIN account_req AS acreq ON acreq.req_no=cust.req_no JOIN accounts AS acc ON acc.account_holder=uid JOIN BranchStates ON StateID=state JOIN BranchCities ON CityID=city JOIN branch_details AS brnch ON brnch.branch_code=branch WHERE approved=1 AND uid='" + CustId + "'");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();
                Customers CustDataById = null;

                while (reader.Read())
                {
                    int Req_No = reader.GetInt32(0);
                    int Cust_Id = reader.GetInt32(1);
                    int Acc_No = reader.GetInt32(2);
                    string Acc_type = reader.GetString(3);
                    string SubAcc_type = reader.GetString(4);
                    decimal Blnc = reader.GetDecimal(5);
                    string Title = reader.GetString(6);
                    string Fname = reader.GetString(7);
                    string Mname = reader.GetString(8);
                    string Lname = reader.GetString(9);
                    string Adrs = reader.GetString(10);
                    string Pin = reader.GetString(11);
                    string StateName = reader.GetString(12);
                    string CityName = reader.GetString(13);
                    string BrnchName = reader.GetString(14);
                    string Gender = reader.GetString(15);
                    string Mstatus = reader.GetString(16);
                    DateTime BirthDate = reader.GetDateTime(17);
                    string EmailId = reader.GetString(18);
                    string Phn_No = reader.GetString(19);
                    string Mob_No = reader.GetString(20);
                    string Aadhaar_No = reader.GetString(21);
                    DateTime Req_Date = reader.GetDateTime(22);
                    DateTime Aprv_Date = reader.GetDateTime(23);
                    string AccStatus = reader.GetString(24);
                    string NBK_Status = reader.GetString(25);

                    CustDataById = new Customers(Req_No, Cust_Id, Acc_No, Acc_type, SubAcc_type, Blnc, Title, Fname, Mname, Lname, Adrs, Pin, StateName, CityName, BrnchName, Gender, Mstatus, BirthDate, EmailId, Phn_No, Mob_No, Aadhaar_No, Req_Date, Aprv_Date, AccStatus, NBK_Status);
                }
                return CustDataById;
            }
        }
    }
}