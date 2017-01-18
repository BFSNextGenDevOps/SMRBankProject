using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace NewSMRBankProjectFinal
{
    public class StatesCities
    {
        public DataTable Get_States()
        {
            DataTable dt = new DataTable();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT * FROM BranchStates ORDER BY StateName");
                SqlComm.CommandText = query;
                //SqlDataReader dr = SqlComm.ExecuteReader();
                SqlDataAdapter adpt = new SqlDataAdapter(SqlComm);
                adpt.Fill(dt);
            }
            return dt;
        }

        public DataTable Get_CitiesByStateId(int StateId)
        {
            DataTable DtFrCity = new DataTable();

            Connections con = new Connections();
            string strConnString = con.GetConnString();
            using (SqlConnection SqlCon = new SqlConnection(strConnString))
            {
                SqlCommand SqlComm = new SqlCommand("", SqlCon);
                SqlCon.Open();

                string query = string.Format("SELECT * FROM BranchCities WHERE StateID='{0}'", StateId);
                SqlComm.CommandText = query;
                SqlDataAdapter AdptFrCity = new SqlDataAdapter(SqlComm);
                AdptFrCity.Fill(DtFrCity);
            }
            return DtFrCity;
        }
    }
}