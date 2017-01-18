<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="approve_cust.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.approve_cust" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">
        <%
            string CustReqId = Request.QueryString["cust_reqId"];
            NewSMRBankProjectFinal.CustReq CustReqDataById = NewSMRBankProjectFinal.CustReq.GetCustReqAllDataById(Convert.ToInt32(CustReqId));
        %>
        <div class="CustomerInfo">
            <p><% Response.Write(CustReqDataById.fname_2 + " " + CustReqDataById.lname_2); %> havn't Customer number &nbsp; 
                <asp:Button ID="ButtonAltCustNo" runat="server" Text="Allote Customer No." OnClick="ButtonAltCustNo_Click" /></p>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <%
            string CustReqId = Request.QueryString["cust_reqId"];
            NewSMRBankProjectFinal.CustReq CustReqDataById = NewSMRBankProjectFinal.CustReq.GetCustReqAllDataById(Convert.ToInt32(CustReqId));
        %>
        <div class="CustomerInfo">
            <p><% Response.Write(CustReqDataById.fname_2 + " " + CustReqDataById.lname_2); %> havn't Account number</p>
            <table cellpadding="8">
                <tbody>
                    <tr>
                        <td style="color: #222;">Enter Balance :</td>
                        <td><asp:TextBox ID="TextBoxBlnc" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxBlnc"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]*$" ErrorMessage="Number only" ForeColor="#FF3300" ControlToValidate="TextBoxBlnc"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:Button ID="ButtonAltAcntNo" runat="server" Text="Allote Account No." OnClick="ButtonAltAcntNo_Click"/>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <%
            string CustReqId = Request.QueryString["cust_reqId"];
            NewSMRBankProjectFinal.CustReq CustReqDataById = NewSMRBankProjectFinal.CustReq.GetCustReqAllDataById(Convert.ToInt32(CustReqId));

            DateTime DT = Convert.ToDateTime(CustReqDataById.birthdate_2);
            string BDate = DT.ToString("dd/MM/yyyy");

            DateTime ReqDT = Convert.ToDateTime(CustReqDataById.req_date_2);
            string ReqDate = ReqDT.ToString("dd/MM/yyyy");

            string Status = "";
            if (CustReqDataById.status_2 == "0")
            {
                Status = "<font color='red'>Not Active</font>";
            }
            else if (CustReqDataById.status_2 == "1")
            {
                Status = "<font color='green'>Active</font>";
            }
            
        %>
        <div class="CustomerDetail">
            <div class="DetailHolder">
                <h4>General Info.</h4>
                <table>
                    <thead>
                        <tr>
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
                            <td><% Response.Write(CustReqDataById.fname_2); %></td>
                            <td><% Response.Write(CustReqDataById.mname_2); %></td>
                            <td><% Response.Write(CustReqDataById.lname_2); %></td>
                            <td><% Response.Write(BDate); %></td>
                            <td><% Response.Write(CustReqDataById.maritalStatus_2); %></td>
                            <td><% Response.Write(CustReqDataById.gender_2); %></td>
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
                            <td><% Response.Write(CustReqDataById.city_2); %></td>
                            <td><% Response.Write(CustReqDataById.state_2); %></td>
                            <td><% Response.Write(CustReqDataById.address_2); %></td>
                            <td><% Response.Write(CustReqDataById.pin_2); %></td>
                            <td><% Response.Write(CustReqDataById.mob_no_2); %></td>
                            <td><% Response.Write(CustReqDataById.phone_no_2); %></td>
                            <td><% Response.Write(CustReqDataById.email_2); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="DetailHolder">
                <h4>Request Info</h4>
                <table style="width: 65%; margin: 0 0 0 5px;">
                    <thead>
                        <tr>
                            <th width="5%">Request No.</th>
                            <th width="5%">Request date</th>
                            <th width="10%">Aadhar No</th>
                            <th width="10%">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% Response.Write(CustReqDataById.req_no_2); %></td>
                            <td><% Response.Write(ReqDate); %></td>
                            <td><% Response.Write(CustReqDataById.aadhaar_no_2); %></td>
                            <td><% Response.Write(Status); %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
