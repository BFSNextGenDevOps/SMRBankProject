using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NewSMRBankProjectFinal;
using NewSMRBankProjectFinal.Admin;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace LoginTest.Test
{


    [TestClass]
    public class AdminLoginTest
    {

        [TestMethod]
        public void TestMethod1()
        {

            string strUserName = "admin@mail.com";
            string strPassword = "password";
            bool result = true;
            AdminLogin adminLogin = new AdminLogin();
            result = adminLogin.loginCheck(strUserName, strPassword);
            Assert.IsTrue(result);


        }
        [TestMethod]
        public void TestMethod2()
        {
            string strUN = "admin@mail.com";
            string strPass = "12234";
            bool result = true;
            AdminLogin adminLogin = new AdminLogin();
            result = adminLogin.loginCheck(strUN, strPass);
            Assert.IsTrue(result);

        }

    }
}
