<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomeLoan.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.HomeLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="LoanHolder">
        <h1>Home Loan</h1>
        <p>The house of your dreams can now be yours with an SMR Home Loan. The range of Housing Finance products includes Home Loans, Home Improvement/Renovation Loans and Home Extension Loans.</p>
    </div>
    <div class="LoanHolder">
        <h2>Features and Benefits of Home Loan</h2>
        <ol>
            <li>High eligibility for businessmen</li>
            <li>Doorstep service</li>
            <li>Attractive interest rates</li>
            <li>Convenient loan disbursement process</li>
            <li>Simplified documentation</li>
            <li>Insurance options to cover your home loans at attractive premium</li>
            <li>Quicker turnaround time</li>
        </ol>
    </div>
    <div class="LoanHolder">
        <h2>Eligibility for :</h2>
        <ul>
            <li><h3>Salaried individual</h3>
                <ol>
                    <li>Monthly or annual income</li>
                    <li>Source of income</li>
                    <li>Savings and credit history</li>
                    <li>Work experience</li>
                    <li>Age</li>
                    <li>Qualifications</li>
                    <li>Number of dependents</li>
                    <li>Probability of the individual continuing in the same occupation</li>
                </ol>
            </li>
            <li><h3>Self employed</h3>
                <ol>
                    <li>An audited balance sheet</li>
                    <li> Profit and Loss Account of last three years</li>
                </ol>
            </li>
        </ul>
    </div>
    <div class="LoanHolder">
        <h2>Documents</h2>
        <ul>
            <li>Income proof and banking details</li>
            <li>Age proof and address proof</li>
            <li>Identity proof</li>
            <li>Proof of educational qualifications</li>
        </ul>
        <div style="margin-left: 4%;"><asp:Button ID="ButtonHomeLoanApply" runat="server" 
                Text="Apply" onclick="ButtonHomeLoanApply_Click" /></div>
    </div>
</asp:Content>


