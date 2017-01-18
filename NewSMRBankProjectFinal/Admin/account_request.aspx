<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="account_request.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin_account_request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="DataHolder">
        <div class="Head"><h3>Account Requests</h3></div>
        <div class="DataTable">
            <table>
                <thead>
                    <tr>
                        <th width="5%">Form No.</th>
                        <th width="10%">Account type</th>
                        <th width="15%">Sub a/c name</th>
                        <th width="15%">Customer name</th>
                        <th width="4%">Gender</th>
                        <th width="10%">Mobile No.</th>
                        <th width="8%">Status</th>
                        <th width="8%">Request date</th>
                        <th width="8%">Details</th>
                    </tr>
                </thead>
                <tbody>
                    <% ArrayList ReqList =NewSMRBankProjectFinal.CustReq.GetReqs();
                       foreach (NewSMRBankProjectFinal.CustReq reqs in ReqList)
                       {
                           string cust_name = reqs.fname+" "+reqs.mname+" "+reqs.lname;
                           
                           DateTime DT = Convert.ToDateTime(reqs.req_date);
                           string reqDate = DT.ToString("dd/MM/yyyy");

                           string say = "";
                           if (reqs.status == "0")
                           {
                               say = "<font color='red'>Not active</font>";
                           }
                           else
                           {
                               say = "<font color='green'>Active</font>";
                           }
                    %>
                    <tr>
                        <td><% Response.Write(reqs.req_no); %></td>
                        <td><% Response.Write(reqs.account_type); %></td>
                        <td><% Response.Write(reqs.sub_account); %></td>
                        <td><% Response.Write(cust_name); %></td>
                        <td><% Response.Write(reqs.gender); %></td>
                        <td><% Response.Write(reqs.mob_no); %></td>
                        <td><% Response.Write(say); %></td>
                        <td><% Response.Write(reqDate); %></td>
                        <td><a href="approve_cust.aspx?cust_reqId=<% Response.Write(reqs.req_no); %>">View</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
