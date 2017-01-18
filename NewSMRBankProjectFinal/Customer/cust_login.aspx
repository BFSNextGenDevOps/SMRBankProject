<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4Forms.Master" AutoEventWireup="true" CodeBehind="cust_login.aspx.cs" Inherits="NewSMRBankProjectFinal.cust_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="CustomerFormContent">
        <h1>Customer Login</h1>
        <div class="CustomerFormHolder">
            <table cellpadding="5" width="100%">
                <tbody>
                    <tr>
                        <td class="Lable">Customer ID :</td>
                        <td class="Input"><asp:TextBox CssClass="InputText" MaxLength="8" ID="TextBoxCustId" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxCustId"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]*$" ErrorMessage="Number only" ForeColor="#FF3300" ControlToValidate="TextBoxCustId"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Lable">Password :</td>
                        <td class="Input"><asp:TextBox CssClass="InputText" ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxPass"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Button ID="ButtonCustLoginBtn" runat="server" Text="Login" OnClick="ButtonCustLoginBtn_Click"/>
                            <asp:Label ID="LabelErrors" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><a href="#">Forgot your password?</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
