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
    public class Branches
    {
        public int branch_code;
        public string branch_name;
        public string StateName;
        public string CityName;
        public string branch_add;
        public string branch_pin;
        public string branch_phn;
        public DateTime open_date;
        public string close_date;

        public Branches(int branch_code, string branch_name, string StateName, string CityName, string branch_add, string branch_pin, string branch_phn, DateTime open_date)
        {
            // TODO: Complete member initialization
            this.branch_code = branch_code;
            this.branch_name = branch_name;
            this.StateName = StateName;
            this.CityName = CityName;
            this.branch_add = branch_add;
            this.branch_pin = branch_pin;
            this.branch_phn = branch_phn;
            this.open_date = open_date;
        }

        public Branches()
        {
            // TODO: Complete member initialization
        }

        public static ArrayList GetBranches()
        {
            ArrayList BranchList = new ArrayList();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT branch_code, branch_name, StateName, CityName, branch_add, branch_pin, branch_phn, open_date FROM branch_details JOIN BranchStates ON StateID=branch_state JOIN BranchCities ON CityID=branch_city ORDER BY branch_code DESC");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();

                while (reader.Read())
                {
                    int branch_code = reader.GetInt32(0);
                    string branch_name = reader.GetString(1);
                    string StateName = reader.GetString(2);
                    string CityName = reader.GetString(3);
                    string branch_add = reader.GetString(4);
                    string branch_pin = reader.GetString(5);
                    string branch_phn = reader.GetString(6);
                    DateTime open_date = reader.GetDateTime(7);

                    Branches branches = new Branches(branch_code, branch_name, StateName, CityName, branch_add, branch_pin, branch_phn, open_date);
                    BranchList.Add(branches);
                }
                return BranchList;
            }
        }

        public DataTable GetBranchesByCityId(int CityId)
        {
            DataTable DtFrBranch = new DataTable();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT branch_code, branch_name FROM branch_details WHERE branch_city=" + CityId + "");
                SqlComm.CommandText = query;
                SqlDataAdapter AdptFrBranch = new SqlDataAdapter(SqlComm);
                AdptFrBranch.Fill(DtFrBranch);
            }
            return DtFrBranch;
        }

        //public DataTable GetBrnchAllDataById(int BrnchId)
        //{
        //    DataTable DtFrBranchData = new DataTable();

        //    Connection con = new Connection();
        //    string strConnString = con.GetConnString();
        //    using (SqlConnection SqlCon = new SqlConnection(strConnString))
        //    {
        //        SqlCommand SqlComm = new SqlCommand("", SqlCon);
        //        SqlCon.Open();

        //        string query = string.Format("SELECT branch_code, branch_name, StateName, CityName, branch_add, branch_pin, branch_phn, open_date FROM branch_details WHERE branch_code='{0}'", BrnchId);
        //        SqlComm.CommandText = query;
        //        SqlDataAdapter AdptFrBranchData = new SqlDataAdapter(SqlComm);
        //        AdptFrBranchData.Fill(DtFrBranchData);

        //    }
        //    return DtFrBranchData;
        //}

        public static Branches GetBrnchAllDataById(int BrnchId)
        {
            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT branch_code, branch_name, StateName, CityName, branch_add, branch_pin, branch_phn, open_date FROM branch_details JOIN BranchStates ON StateID=branch_state JOIN BranchCities ON CityID=branch_city WHERE branch_code=" + BrnchId + "");
                SqlComm.CommandText = query;
                SqlDataReader reader = SqlComm.ExecuteReader();
                Branches BanchDataById = null;

                while (reader.Read())
                {
                    int branch_code = reader.GetInt32(0);
                    string branch_name = reader.GetString(1);
                    string StateName = reader.GetString(2);
                    string CityName = reader.GetString(3);
                    string branch_add = reader.GetString(4);
                    string branch_pin = reader.GetString(5);
                    string branch_phn = reader.GetString(6);
                    DateTime open_date = reader.GetDateTime(7);

                    BanchDataById = new Branches(branch_code, branch_name, StateName, CityName, branch_add, branch_pin, branch_phn, open_date);

                }
                return BanchDataById;
            }
        }
    }
}