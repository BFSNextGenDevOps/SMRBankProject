<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.Admin_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Hello Admin</h1>
    <p><asp:Label ID="LabelWelcome" runat="server"></asp:Label>
    <asp:Button ID="ButtonLogout" runat="server" Text="Logout" OnClick="ButtonLogout_Click"/></p>
</asp:Content>
