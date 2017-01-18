using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSMRBankProjectFinal.Admin
{
    public partial class CodeGenerator : System.Web.UI.Page
    {

        public string GenerateCode()
        {
            // How many characters the string will contain.
            string CodeLength = "10";

            // Ultimately hold the finised randomly generated password
            string NewCode = "";

            // Which characters are allowed in this new code
            string AllowedChars = "1,2,3,4,5,6,7,8,9,0";
            //AllowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            //AllowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";

            // Then working with an array

            char[] sep = { ',' };
            string[] arr = AllowedChars.Split(sep);

            string CodeString = "";
            string temp = "";

            // Utilize the "random" class
            Random rand = new Random();

            // Loop throuth the generation process
            for (int i = 0; i < Convert.ToInt32(CodeLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                CodeString += temp;
                NewCode = CodeString;
            }

            return NewCode;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = GenerateCode();
        }
    }
}