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
    public class CustReq
    {
        public int req_no;
        public string account_type;
        public string sub_account;
        public string title;
        public string fname;
        public string mname;
        public string lname;
        public string address;
        public string pin;
        public int state;
        public int city;
        public int branch;
        public string gender;
        public string maritalStatus;
        public DateTime birthdate;
        public string email;
        public string phone_no;
        public string mob_no;
        public string aadhaar_no;
        public DateTime req_date;
        public string status;

        public int req_no_2;
        public string account_type_2;
        public string sub_account_2;
        public string title_2;
        public string fname_2;
        public string mname_2;
        public string lname_2;
        public string address_2;
        public string pin_2;
        public string state_2;
        public string city_2;
        public string branch_2;
        public string gender_2;
        public string maritalStatus_2;
        public DateTime birthdate_2;
        public string email_2;
        public string phone_no_2;
        public string mob_no_2;
        public string aadhaar_no_2;
        public DateTime req_date_2;
        public string status_2;

        public CustReq(int req_no, string account_type, string sub_account, string title, string fname, string mname, string lname, string address, string pin, int state, int city, int branch, string gender, string maritalStatus, DateTime birthdate, string email, string phone_no, string mob_no, string aadhaar_no, DateTime req_date, string status)
        {
            // TODO: Complete member initialization
            this.req_no = req_no;
            this.account_type = account_type;
            this.sub_account = sub_account;
            this.title = title;
            this.fname = fname;
            this.mname = mname;
            this.lname = lname;
            this.address = address;
            this.pin = pin;
            this.state = state;
            this.city = city;
            this.branch = branch;
            this.gender = gender;
            this.maritalStatus = maritalStatus;
            this.birthdate = birthdate;
            this.email = email;
            this.phone_no = phone_no;
            this.mob_no = mob_no;
            this.aadhaar_no = aadhaar_no;
            this.req_date = req_date;
            this.status = status;
        }

        public CustReq(int req_no_2, string account_type_2, string sub_account_2, string title_2, string fname_2, string mname_2, string lname_2, string address_2, string pin_2, string state_2, string city_2, string branch_2, string gender_2, string maritalStatus_2, DateTime birthdate_2, string email_2, string phone_no_2, string mob_no_2, string aadhaar_no_2, DateTime req_date_2, string status_2)
        {
            // TODO: Complete member initialization
            this.req_no_2 = req_no_2;
            this.account_type_2 = account_type_2;
            this.sub_account_2 = sub_account_2;
            this.title_2 = title_2;
            this.fname_2 = fname_2;
            this.mname_2 = mname_2;
            this.lname_2 = lname_2;
            this.address_2 = address_2;
            this.pin_2 = pin_2;
            this.state_2 = state_2;
            this.city_2 = city_2;
            this.branch_2 = branch_2;
            this.gender_2 = gender_2;
            this.maritalStatus_2 = maritalStatus_2;
            this.birthdate_2 = birthdate_2;
            this.email_2 = email_2;
            this.phone_no_2 = phone_no_2;
            this.mob_no_2 = mob_no_2;
            this.aadhaar_no_2 = aadhaar_no_2;
            this.req_date_2 = req_date_2;
            this.status_2 = status_2;
        }
        public static ArrayList GetReqs()
        {
            ArrayList ReqList = new ArrayList();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT * FROM account_req ORDER BY req_no DESC");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();

                while (reader.Read())
                {
                    int req_no = reader.GetInt32(0);
                    string account_type = reader.GetString(1);
                    string sub_account = reader.GetString(2);
                    string title = reader.GetString(3);
                    string fname = reader.GetString(4);
                    string mname = reader.GetString(5);
                    string lname = reader.GetString(6);
                    string address = reader.GetString(7);
                    string pin = reader.GetString(8);
                    int state = reader.GetInt32(9);
                    int city = reader.GetInt32(10);
                    int branch = reader.GetInt32(11);
                    string gender = reader.GetString(12);
                    string maritalStatus = reader.GetString(13);
                    DateTime birthdate = reader.GetDateTime(14);
                    string email = reader.GetString(15);
                    string phone_no = reader.GetString(16);
                    string mob_no = reader.GetString(17);
                    string aadhaar_no = reader.GetString(18);
                    DateTime req_date = reader.GetDateTime(19);
                    string status = reader.GetString(20);

                    CustReq custReq = new CustReq(req_no, account_type, sub_account, title, fname, mname, lname, address, pin, state, city, branch, gender, maritalStatus, birthdate, email, phone_no, mob_no, aadhaar_no, req_date, status);
                    ReqList.Add(custReq);
                }
                return ReqList;
            }
        }

        public static CustReq GetCustReqAllDataById(int CustReqId)
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT req_no, account_type, sub_account, title, fname, mname, lname, address, pin, StateName, CityName, branch_name, gender, maritalStatus, birthdate, email, phone_no, mob_no, aadhaar_no, req_date, status FROM account_req JOIN BranchStates ON StateID=state JOIN BranchCities ON CityID=city JOIN branch_details ON branch_code=branch WHERE req_no='{0}'", CustReqId);
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();
                CustReq ReqDataById = null;

                while (reader.Read())
                {
                    int req_no = reader.GetInt32(0);
                    string account_type = reader.GetString(1);
                    string sub_account = reader.GetString(2);
                    string title = reader.GetString(3);
                    string fname = reader.GetString(4);
                    string mname = reader.GetString(5);
                    string lname = reader.GetString(6);
                    string address = reader.GetString(7);
                    string pin = reader.GetString(8);
                    string state = reader.GetString(9);
                    string city = reader.GetString(10);
                    string branch = reader.GetString(11);
                    string gender = reader.GetString(12);
                    string maritalStatus = reader.GetString(13);
                    DateTime birthdate = reader.GetDateTime(14);
                    string email = reader.GetString(15);
                    string phone_no = reader.GetString(16);
                    string mob_no = reader.GetString(17);
                    string aadhaar_no = reader.GetString(18);
                    DateTime req_date = reader.GetDateTime(19);
                    string status = reader.GetString(20);

                    ReqDataById = new CustReq(req_no, account_type, sub_account, title, fname, mname, lname, address, pin, state, city, branch, gender, maritalStatus, birthdate, email, phone_no, mob_no, aadhaar_no, req_date, status);

                }
                return ReqDataById;
            }
        }
    }
}