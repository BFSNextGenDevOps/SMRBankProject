<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustChngPass.aspx.cs" Inherits="NewSMRBankProjectFinal.CustChngPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Change Password</h1>
    <div class="CustChangePass">
        <table cellpadding="8">
            <tbody>
                <tr>
                    <td>Current Password :</td>
                    <td><asp:TextBox ID="TextBoxCurrentPass" CssClass="InputText" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxCurrentPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>New Password :</td>
                    <td><asp:TextBox ID="TextBoxNewPass" CssClass="InputText" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBoxNewPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password :</td>
                    <td><asp:TextBox ID="TextBoxConfirmPass" CssClass="InputText" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBoxConfirmPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="ButtonChangePass" runat="server" Text="Save" OnClick="ButtonChangePass_Click" />
                        <asp:Label ID="LabelMsg" ForeColor="#FF3300" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
