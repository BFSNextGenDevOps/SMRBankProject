<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Current_accounts.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Current Accounts</h1>

    <div class="AccountHolder">
        <h2 class="SHeadingColor1">ULTIMA Current Account</h2>
        <div class="AccountRows">
            <ul>
                <li>The ultimate current account for businesses whose needs go beyond even the most feature-rich current account.</li>
                <li>A Current Account which is just right for Manufacturers/Large Distributors/Stockists/Multi Specialty Hospitals and Dealers along with Business Banking / Inventory Funding Customers.</li>
                <li>Unlimited free local & anywhere cheque collections & payments facility.</li>
                <li>Free RTGS/NEFT collections and payments and free DD/PO for unlimited value.</li>
            </ul>
            <span><a id="A1" href="~/Products/Accounts/account_form.aspx?ac_type=Current Account&sub_ac_type=ULTIMA Current Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor2">Supreme Current Account</h2>
        <div class="AccountRows">
            <ul>
                <li>For large traders operating across the country, this current account can help reduce transaction costs. Plus free access to one of the most advanced and secure NetBanking and MobileBanking services.</li>
                <li>Avail higher cash deposit limits at all branches across India.</li>
                <li>Free NEFT/RTGS collections & payments.</li>
            </ul>
            <span><a id="A2" href="~/Products/Accounts/account_form.aspx?ac_type=Current Account&sub_ac_type=Supreme Current Account" runat="server">Apply Now</a></span>
        </div>
    </div>
</asp:Content>

