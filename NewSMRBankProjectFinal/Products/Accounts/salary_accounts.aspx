<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="salary_accounts.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Salary Accounts</h1>

    <div class="AccountHolder">
        <h2 class="SHeadingColor1">Premium Salary Account</h2>
        <div class="AccountRows">
            <ul>
                <li>A customised salary account for select corporates, backed by priority service. Special offers and benefits such as a free zero balance account for you and your family. This account comes with free Personal Accidental Death Cover of Rs 5 lac.</li>
            </ul>
            <span><a id="A1" href="~/Products/Accounts/account_form.aspx?ac_type=Salary Account&sub_ac_type=Premium Salary Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor2">Classic Salary Account</h2>
        <div class="AccountRows">
            <ul>
                <li>This salary account offers you a complete range of services to meet your banking requirements. It comes with an International Debit Card and access to one of the most advanced and secure NetBanking and MobileBanking services - all free of charge.</li>
            </ul>
            <span><a id="A2" href="~/Products/Accounts/account_form.aspx?ac_type=Salary Account&sub_ac_type=Classic Salary Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor3">Regular Salary Account</h2>
        <div class="AccountRows">
            <ul>
                <li>A comprehensive salary account tailored for you, with special offers including free Personal Accidental Death Cover of Rs. 1 lac.</li>
            </ul>
            <span><a id="A3" href="~/Products/Accounts/account_form.aspx?ac_type=Salary Account&sub_ac_type=Regular Salary Account" runat="server">Apply Now</a></span>
        </div>
    </div>
</asp:Content>

