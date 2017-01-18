<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="netbnkng_req.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.netbnkng_req" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="DataHolder">
        <div class="Head"><h3>Net Banking Requests</h3></div>
        <div class="DataTable">
            <asp:Panel ID="Panel2" runat="server">
                <%
                    NewSMRBankProjectFinal.Customers chckCustNBK = new NewSMRBankProjectFinal.Customers();
                    bool result = chckCustNBK.CheckCustNBK(Convert.ToInt32(Request.QueryString["CustId"]));
                    if (result != true)
                    {
                %>
                <p><asp:Button ID="ButtonAltNBK" runat="server" Text="Approve" OnClick="ButtonAltNBK_Click"/></p>
                <% }else{ %>
                <p><asp:Button ID="ButtonDsAprv" runat="server" Text="Disapprove" OnClick="ButtonDsAprv_Click"/></p>
                <% } %>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
            <table>
                <thead>
                    <tr>
                        <th width="5%">Req. No.</th>
                        <th width="8%">Customer No.</th>
                        <th width="10%">Req. Date</th>
                        <th width="10%">Status</th>
                        <th width="8%">More Details</th>
                        <th width="8%">Take</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList NBKReqSlist = NewSMRBankProjectFinal.NetBanking.Get_NBKReqs();
                        foreach (NewSMRBankProjectFinal.NetBanking reqs in NBKReqSlist)
                        {
                            DateTime ReqDT = Convert.ToDateTime(reqs.NBK_reqDate);
                            string reqDate = ReqDT.ToString("dd/MM/yyyy");

                            string status = "";
                            if (reqs.NBK_status == "0")
                            {
                                status = "<font color='red'>Not active</font>";
                            }
                            else
                            {
                                status = "<font color='green'>Active</font>";
                            }
                    %>
                    <tr>
                        <td><% Response.Write(reqs.NBK_id); %></td>
                        <td><% Response.Write(reqs.NBKU_id); %></td>
                        <td><% Response.Write(reqDate); %></td>
                        <td><% Response.Write(status); %></td>
                        <td><a href="customers.aspx?CustId=<% Response.Write(reqs.NBKU_id); %>">View</a></td>
                        <td><a href="netbnkng_req.aspx?CustId=<% Response.Write(reqs.NBKU_id); %>">Action</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
