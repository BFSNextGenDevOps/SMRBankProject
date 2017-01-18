<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DefaultCust.aspx.cs" Inherits="NewSMRBankProjectFinal.DefaultCust" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%
        int CustId = Convert.ToInt32(Session["Cust_Id"]);
        NewSMRBankProjectFinal.Customers CustDataById = NewSMRBankProjectFinal.Customers.GetAll_CustDataById(CustId);
    %>
    <h1>Account Statement</h1>
    <div class="CustDataHolder">
        <h3>Closing Balance : INR <% Response.Write(CustDataById.Blnc); %></h3>
        <table>
            <thead>
                <tr>
                    <th width="4%">Date</th>
                    <th width="15%">Narration</th>
                    <th width="10%">Cheque/Ref. No.</th>
                    <th width="7%">Withdrawal</th>
                    <th width="7%">Deposit</th>
                    <th width="9%">Closing Balance</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList TransList = NewSMRBankProjectFinal.Transactions.GetAllTransByCustId(CustId);
                    foreach (NewSMRBankProjectFinal.Transactions Trans in TransList)
                    {
                        DateTime TrnsDT = Convert.ToDateTime(Trans.TrnsDate);
                        string TrnsDate = TrnsDT.ToString("dd/MM/yyyy");
                        
                        //decimal Deposit;
                        //if (Trans.DpoAmt == Convert.ToDecimal(null))
                        //{
                        //    Deposit = Convert.ToDecimal(null);
                        //}
                        //else
                        //{
                        //    Deposit = Trans.DpoAmt;
                        //}
                %>
                <tr>
                    <td><% Response.Write(TrnsDate); %></td>
                    <td><% Response.Write(Trans.Narrtn); %></td>
                    <td><% Response.Write(Trans.ChqRefNo); %></td>
                    <td><% Response.Write(Trans.WithdAmt); %></td>
                    <td><% Response.Write(Trans.DpoAmt); %></td>
                    <td><% Response.Write(Trans.ClsAmt); %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</asp:Content>
