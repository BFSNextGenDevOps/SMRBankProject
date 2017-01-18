<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">
    <div class="DataHolder">
        <div class="Head"><h3>Customers</h3></div>
        <div class="DataTable">
            <table>
                <thead>
                    <tr>
                        <th width="4%">Customer No.</th>
                        <th width="4%">Account No.</th>
                        <th width="8%">Account Type</th>
                        <th width="10%">Customer Name</th>
                        <th width="2%">Gender</th>
                        <th width="8%">Mobile No.</th>
                        <th width="8%">Branch</th>
                        <th width="5%">Status</th>
                        <th width="5%">More Details</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList CustList = NewSMRBankProjectFinal.Customers.Get_OlCust();
                        foreach (NewSMRBankProjectFinal.Customers Cust in CustList)
                        {
                            string CustFullName = Cust.fname + " " + Cust.mname + " " + Cust.lname;

                            string CustStatus = "";
                            if (Cust.approved == "0")
                            {
                                CustStatus = "<font color='red'>Not active</font>";
                            }
                            else
                            {
                                CustStatus = "<font color='green'>Active</font>";
                            }
                    %>
                    <tr>
                        <td><% Response.Write(Cust.CustId); %></td>
                        <td><% Response.Write(Cust.account_no); %></td>
                        <td><% Response.Write(Cust.account_type); %></td>
                        <td><% Response.Write(CustFullName); %></td>
                        <td><% Response.Write(Cust.gender); %></td>
                        <td><% Response.Write(Cust.mob_no); %></td>
                        <td><% Response.Write(Cust.branch_name); %></td>
                        <td><% Response.Write(CustStatus); %></td>
                        <td><a href="customers.aspx?CustId=<% Response.Write(Cust.CustId); %>">View</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <%
            int CustId = Convert.ToInt32(Request.QueryString["CustId"]);
            NewSMRBankProjectFinal.Customers CustDataById = NewSMRBankProjectFinal.Customers.GetAll_CustDataById(CustId);

            //string CustFullName = CustDataById.Title + "" + CustDataById.Fname + " " + CustDataById.Mname + " " + CustDataById.Lname;

            DateTime AprvDT = Convert.ToDateTime(CustDataById.Aprv_Date);
            string AprvDate = AprvDT.ToString("dd/MM/yyyy");

            DateTime ReqDT = Convert.ToDateTime(CustDataById.Req_Date);
            string ReqDate = ReqDT.ToString("dd/MM/yyyy");

            DateTime BDT = Convert.ToDateTime(CustDataById.BirthDate);
            string BDate = BDT.ToString("dd/MM/yyyy");

            string Acc_Status = "";
            string NBK_Status = "";
            if (CustDataById.AccStatus == "1")
            {
                Acc_Status = "<font color='green'>Active</font>";
            }
            else
            {
                Acc_Status = "<font color='red'>Not Active</font>";
            }
            if (CustDataById.NBK_Status == "1")
            {
                NBK_Status = "<font color='green'>Active</font>";
            }
            else
            {
                NBK_Status = "<font color='red'>Not Active</font>";
            }
            
        %>
        <div class="CustomerDetail">
            <div class="DetailHolder">
                <h4>General Info.</h4>
                <table>
                    <thead>
                        <tr>
                            <th width="2%">Title</th>
                            <th width="10%">First name</th>
                            <th width="10%">Middle name</th>
                            <th width="10%">Last name</th>
                            <th width="10%">Date of Birth</th>
                            <th width="10%">Marital status</th>
                            <th width="5%">Gender</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% Response.Write(CustDataById.Title); %></td>
                            <td><% Response.Write(CustDataById.Fname); %></td>
                            <td><% Response.Write(CustDataById.Mname); %></td>
                            <td><% Response.Write(CustDataById.Lname); %></td>
                            <td><% Response.Write(BDate); %></td>
                            <td><% Response.Write(CustDataById.Mstatus); %></td>
                            <td><% Response.Write(CustDataById.Gender); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="DetailHolder">
                <h4>Account Info.</h4>
                <table>
                    <thead>
                        <tr>
                            <th width="5%">Customer No.</th>
                            <th width="5%">Account No.</th>
                            <th width="10%">Account Type</th>
                            <th width="10%">Sub A/c Type</th>
                            <th width="8%">Approved On</th>
                            <th width="8%">Balance</th>
                            <th width="6%">Status</th>
                            <th width="6%">Net Banking</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% Response.Write(CustDataById.Cust_Id); %></td>
                            <td><% Response.Write(CustDataById.Acc_No); %></td>
                            <td><% Response.Write(CustDataById.Acc_type); %></td>
                            <td><% Response.Write(CustDataById.SubAcc_type); %></td>
                            <td><% Response.Write(AprvDate); %></td>
                            <td><% Response.Write(CustDataById.Blnc); %></td>
                            <td><% Response.Write(Acc_Status); %></td>
                            <td><% Response.Write(NBK_Status); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="DetailHolder">
                <h4>Contact Info.</h4>
                <table>
                    <thead>
                        <tr>
                            <th width="5%">City</th>
                            <th width="8%">State</th>
                            <th width="12%">Address</th>
                            <th width="5%">Pin/Zip</th>
                            <th width="8%">Mobile No.</th>
                            <th width="8%">Phone No.</th>
                            <th width="10%">Email ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% Response.Write(CustDataById.CityName); %></td>
                            <td><% Response.Write(CustDataById.StateName); %></td>
                            <td><% Response.Write(CustDataById.Adrs); %></td>
                            <td><% Response.Write(CustDataById.Pin); %></td>
                            <td><% Response.Write(CustDataById.Mob_No); %></td>
                            <td><% Response.Write(CustDataById.Phn_No); %></td>
                            <td><% Response.Write(CustDataById.EmailId); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="DetailHolder">
                <h4>Request Info.</h4>
                <table style="width: 45%; margin: 0 0 0 5px;">
                    <thead>
                        <tr>
                            <th width="5%">Request No.</th>
                            <th width="5%">Request date</th>
                            <th width="10%">Aadhar No</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% Response.Write(CustDataById.Req_No); %></td>
                            <td><% Response.Write(ReqDate); %></td>
                            <td><% Response.Write(CustDataById.Aadhaar_No); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
