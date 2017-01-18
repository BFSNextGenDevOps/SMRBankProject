<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Savings_account.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>SMR Bank Savings Accounts for everyone</h1>
    <p>SMR Bank has the right Savings Account for everyone! Choose from a wide array of savings accounts to find one that matches your needs.</p>
    <p>Your bank account is always at your fingertips with MobileBanking and NetBanking. With over 11,000 ATMs, accessing cash has never been easier. And of course, you can always talk to a Phone Banker if you prefer.</p>
    <p>What's more, avail of great SmartBuy offers on your Debit Card. Get started by browsing through the comprehensive range of savings accounts – from a regular savings account to a premium option that provides substantial savings.</p>

    <div class="AccountHolder">
        <h2 class="SHeadingColor1">Women's Savings Account</h2>
        <div class="AccountRows">
            <ul>
                <li>Every woman is special and deserves to be celebrated.</li>
                <li>Our Women's Savings Account provides a complete banking solution, catering to her financial, investment and lifestyle needs.</li>
            </ul>
            <span><a href="#">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor2">Kids Advantage Account</h2>
        <div class="AccountRows">
            <ul>
                <li>Teach your child the value of money.</li>
                <li>This is a great way to accumulate savings for your child and provide them the head-start they need to succeed.</li>
                <li>It’s an Account that grows with your child and teaches them to manage money.</li>
            </ul>
            <span><a id="A1" href="~/Products/Accounts/account_form.aspx?ac_type=Savings Account&sub_ac_type=Kids Advantage Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor3">Senior Citizens Account</h2>
        <div class="AccountRows">
            <ul>
                <li>Your priorities are ours too.</li>
                <li>Take advantage of this one account that includes everything from health, investment to everyday banking solutions.</li>
            </ul>
            <span><a id="A2" href="~/Products/Accounts/account_form.aspx?ac_type=Savings Account&sub_ac_type=Senior Citizens Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor4">SavingsMax Account</h2>
        <div class="AccountRows">
            <ul>
                <li>Max savings with SavingsMax! A premium savings account that helps you save money. Open one and save up to Rs 4270*.</li>
                <li>Is your money lying idle in multiple bank accounts? Make it work harder.</li>
            </ul>
            <span><a id="A3" href="~/Products/Accounts/account_form.aspx?ac_type=Savings Account&sub_ac_type=SavingsMax Account" runat="server">Apply Now</a></span>
        </div>
    </div>

    <div class="AccountHolder">
        <h2 class="SHeadingColor5">Regular Savings Account</h2>
        <div class="AccountRows">
            <ul>
                <li>Designed for all your day to day banking needs.</li>
                <li>Stay connected to your Bank at all times through free NetBanking, MobileBanking and PhoneBanking.</li>
            </ul>
            <span><a id="A4" href="~/Products/Accounts/account_form.aspx?ac_type=Savings Account&sub_ac_type=Regular Savings Account" runat="server">Apply Now</a></span>
        </div>
    </div>
</asp:Content>
