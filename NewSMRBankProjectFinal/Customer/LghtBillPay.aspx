<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LghtBillPay.aspx.cs" Inherits="NewSMRBankProjectFinal.LghtBillPay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Light Bill Payment</h1>
    <div class="CustBillPay">
        <asp:Panel ID="Panel1" runat="server">
        <%
            int CustId = Convert.ToInt32(Session["Cust_Id"]);
            NewSMRBankProjectFinal.Customers CustDataById = NewSMRBankProjectFinal.Customers.GetAll_CustDataById(CustId);
        %>
        <h3 style="color: #23a7d8;">Closing Banalce : INR <% Response.Write(CustDataById.Blnc); %></h3>
        <table cellpadding="8">
            <tbody>
                <tr>
                    <td>Customer ID :</td>
                    <td><asp:TextBox ID="TextBoxCustID" MaxLength="8" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxCustID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxCustID"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Bill No. :</td>
                    <td><asp:TextBox ID="TextBoxBillNo" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBoxBillNo" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxBillNo"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Bill Amount :</td>
                    <td><asp:TextBox ID="TextBoxBillAmt" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBoxBillAmt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxBillAmt"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="ButtonBillPay" runat="server" Text="Bill Pay" OnClick="ButtonBillPay_Click"/>
                        <asp:Label ID="LabelMsg" runat="server" ForeColor="#FF3300" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <h2 style="color: Green;">Your Transaction is successful.</h2>
        </asp:Panel>
    </div>
</asp:Content>
