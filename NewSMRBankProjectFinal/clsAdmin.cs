using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NewSMRBankProjectFinal
{
    public class clsAdmin
    {
        private int Id;
        //Id setter getter method
        //second line commented
        public int ID
        {
            get { return Id; }
            set { Id = value; }
        }
        public string FirstName;
        public string LastName;
        public string Gender;
        public string Email;
        public string Password;
        public int Type;
        public DateTime LastLogDate;
        public DateTime Date;

        public clsAdmin(int id, string fname, string lname, string gender, string email, string password, int type, DateTime last_log_date, DateTime date)
        {
            Id = id;
            FirstName = fname;
            LastName = lname;
            Gender = gender;
            Email = email;
            Password = password;
            Type = type;
            LastLogDate = last_log_date;
            Date = date;
        }

        public clsAdmin(string fname, string lname, string gender, string email, string password, int type, DateTime last_log_date, DateTime date)
        {
            FirstName = fname;
            LastName = lname;
            Gender = gender;
            Email = email;
            Password = password;
            Type = type;
            LastLogDate = last_log_date;
            Date = date;
        }
    }
}