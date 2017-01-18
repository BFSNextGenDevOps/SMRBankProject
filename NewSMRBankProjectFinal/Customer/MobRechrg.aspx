<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MobRechrg.aspx.cs" Inherits="NewSMRBankProjectFinal.MobRechrg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Mobile Recharge</h1>
    <div class="CustMobRchrg">
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
                    <td>Mobile No. :</td>
                    <td><asp:TextBox ID="TextBoxMobNo" MaxLength="10" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBoxMobNo" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxMobNo"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile Network Company :</td>
                    <td><asp:DropDownList ID="DropDownListSectComp" CssClass="DrpDwnList" runat="server">
                            <asp:ListItem Value="">Select-</asp:ListItem>
                            <asp:ListItem>Airtel</asp:ListItem>
                            <asp:ListItem>Vodafone</asp:ListItem>
                            <asp:ListItem>Tata Docomo</asp:ListItem>
                            <asp:ListItem>Reliance</asp:ListItem>
                            <asp:ListItem>Aircel</asp:ListItem>
                            <asp:ListItem>Loop</asp:ListItem>
                            <asp:ListItem>BSNL</asp:ListItem>
                            <asp:ListItem>MTNL</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="DropDownListSectComp" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Recharge Amount :</td>
                    <td><asp:TextBox ID="TextBoxRchAmt" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBoxRchAmt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]*$" ErrorMessage="Number only" ForeColor="#FF3300" ControlToValidate="TextBoxRchAmt"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="ButtonRchrg" runat="server" Text="Recharge" OnClick="ButtonRchrg_Click"/>
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
