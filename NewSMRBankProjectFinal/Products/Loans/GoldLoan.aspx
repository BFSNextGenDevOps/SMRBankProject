<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GoldLoan.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.GoldLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="LoanHolder">
    <h1>Gold Loan</h1>
    <p>The SMR Bank Gold loan portfolio is best. It is humbling to know that many people avail our trusted services on a daily basis.</p>
    <p> With SMR Bank Ltd. gold loan services, it takes no more than a few minutes for your gold to generate cash. The simple procedure that we follow allows:</p>
    <ul>
        <li>Quick Loan disbursal</li>
        <li>Loan limit stretches from Rs. 1500 to Rs. 2 Lacs</li>
        <li>Pre-payment option-without any penalty</li>
        <li>Minimal documentation</li>
        <li>In-house gold evaluation</li>
        <li>Improves customer service in a shorter response time</li>
        <li>Strong rooms for providing safe custody for gold ornaments</li>
    </ul>
    <p style="color: #e84c3d; font-size: 1.2em;">Please Note : For loans outstanding for more than 12 months, a penal interest @ 2%p.a. will also be charged</p>
    </div>
    <div class="LoanHolder">
    <h2>Gold Loan Schemes</h2>
    <table>
        <thead>
            <tr>
                <th>Scheme</th>
                <th>Slab Period/s</th>
                <th>Rate of Interest</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Best value Loan(MBL)*only for southern region</td>
                <td>upto 1/above 1 upto 3/above 3 upto 6/above 6 upto 12/above 12 months</td>
                <td>2% / 16% / 20% / 24% / 26%</td>
            </tr>
            <tr>
                <td>TrueValue Loan</td>
                <td>3/6/12 months</td>
                <td>15% / 18% / 21% p.a.</td>
            </tr>
            <tr>
                <td>TrueValue Loan</td>
                <td>3/6/12 months</td>
                <td>15% / 18% / 21% p.a.</td>
            </tr>
            <tr>
                <td>Xpress Loan</td>
                <td>3/6/12 months</td>
                <td>20% / 21% / 24% p.a.</td>
            </tr>
            <tr>
                <td>Super Loan</td>
                <td>3/6/12 months</td>
                <td>22% / 23% / 24% p.a.</td>
            </tr>
            <tr>
                <td>Gold Loan Installment Scheme</td>
                <td>6/9/12 months</td>
                <td>14% / 14.5% / 15% p.a.</td>
            </tr>
            <tr>
                <td>Gold Loan Installment Scheme</td>
                <td>18/21/24/15 months *</td>
                <td>16.75% * / 17% / 17.25% / 17.5% p.a.</td>
            </tr>
            <tr>
                <td>Gold Loan Overdraft</td>
                <td>n/a</td>
                <td>20% p.a.</td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="LoanHolder">
    <h2>What is a Gold Loan?</h2>
    <p>A gold loan is a loan which is secured against gold ornaments. A borrower pledges their gold ornaments with the lender in exchange for funds. Therefore, it is a loan which is granted against a certain physical security of gold. Gold loans have successfully enabled thousands of people to mobilize their personal assets, which would've otherwise simply been kept away in a locker.</p>
    </div>
    <div class="LoanHolder">
    <h2>What are the benefits of talking a Gold Loan from SMR Bank Ltd.?</h2>
    <ul>
        <li>Customer oriented Services</li>
        <li>Quick Loan disbursal</li>
        <li>Loan limit stretches from Rs. 1500 to Rs. 2 Lacs</li>
        <li>Pre-payment option-without any penalty</li>
        <li>Minimal documentation</li>
        <li>In-house gold evaluation</li>
        <li>Improves customer service in a shorter response time</li>
        <li>Strong rooms for providing safe custody for gold ornaments</li>
    </ul>
    </div>
    <div class="LoanHolder">
    <h2>Required Age for Gold Loan is more than 18.</h2>
    </div>
    <div class="LoanHolder">
    <h2>What is the minimum/maximum tenure of the gold loan?</h2>
    <p>The minimum tenure for our gold loan is 1 day and maximum tenure for our gold loan is 15 months, each loan has a different tenure.</p>
    </div>
    <div class="LoanHolder">
        <p><asp:Button ID="ButtonAplyGoldLoan" runat="server" Text="Apply Now" 
                onclick="ButtonAplyGoldLoan_Click" /></p>
    </div>
</asp:Content>


