<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="SettingHolder">
        <div class="ChangePassForm">
            <div class="FormHead">Change Password</div>
            <div class="FormRow">
                <div class="FormLabel">Current Password</div>
                <div class="FormInput"><asp:TextBox ID="TextBoxCurrentPass" runat="server" ControlToValidate="TextBoxCurrentPass"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxNewPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="FormRow">
                <div class="FormLabel">New Password</div>
                <div class="FormInput"><asp:TextBox ID="TextBoxNewPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBoxNewPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="FormRow">
                <div class="FormLabel">Confirm Password</div>
                <div class="FormInput"><asp:TextBox ID="TextBoxConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBoxConfirmPass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="FormButton"><asp:Button ID="ButtonChangePass" runat="server" OnClick="ButtonChangePass_Click" Text="Save" />
                <asp:Label ID="LabelErrors" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
