<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4Forms.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AdminFormContent">
        <h1>Admin Login</h1>
        <div class="AdminFormHolder">
            <table cellpadding="5">
                <tr>
                    <td class="Lable" style="height: 40px">Email ID :</td>
                    <td class="Input" style="height: 40px"><asp:TextBox CssClass="InputText" ID="TextBoxEmailID" runat="server"></asp:TextBox></td>
                    <td style="height: 40px"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please Enter Your EmailID" ControlToValidate="TextBoxEmailID" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Not Vailid EmailID" ControlToValidate="TextBoxEmailID" 
                            ForeColor="#FF3300" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="Lable">Password :</td>
                    <td class="Input"><asp:TextBox CssClass="InputText" ID="TextBoxPass" runat="server" 
                            TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Please Enter Your Password" ControlToValidate="TextBoxPass" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="ButtonAdminLogin" runat="server" Text="Login" OnClick="ButtonAdminLogin_Click"/>&nbsp;
                        <asp:Label ID="LabelError" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="#">Forgot your password?</a></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
