using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace NewSMRBankProjectFinal
{
    public class SMRGeneral
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
        public void SendEmailToCust(string CustEmailId, string emailBody, string emailSub)
        {
            //SmtpClient smtpClient = new SmtpClient("mx.000webhost.com", 25);

            MailMessage mailMessage = new MailMessage();

            mailMessage.IsBodyHtml = true;
            mailMessage.From = new MailAddress("gmail@gmail.com", "SMR Bank");
            mailMessage.To.Add(new MailAddress(CustEmailId));
            //mailMessage.CC.Add(new MailAddress("gmail@gmail.com"));
            mailMessage.Subject = emailSub;

            mailMessage.Body = emailBody;
            mailMessage.Priority = MailPriority.Normal;

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}