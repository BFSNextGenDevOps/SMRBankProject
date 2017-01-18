<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TwowheelerLoan.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.TwowheelerLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="LoanHolder">
        <h1>Two Wheeler Loan</h1>
       
    </div>
    <div class="LoanHolder" style="border-bottom: 1px dotted #ddd; padding-bottom: 5px;">
        <asp:Menu ID="Menu1" CssClass="PersonalLoanMenu" runat="server" 
            Orientation="Horizontal" onmenuitemclick="Menu1_MenuItemClick" >
            <Items>
                <asp:MenuItem Text="Details of Two Wheeler Loan" Value="0" >
                </asp:MenuItem>
                <asp:MenuItem Text=" Documents" Value="1"></asp:MenuItem>
                <asp:MenuItem Text=" Eligibility Calculator" Value="2" NavigateUrl="TwowheelerEligible.aspx">
                </asp:MenuItem>
                <asp:MenuItem Text=" Apply Now" Value="3" NavigateUrl="~/Products/Loans/Demo.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    <asp:MultiView ID="MultiViewTwoWheelerLoan" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="LoanHolder">
                <h2>Features and Benefits of Two Wheeler Loan</h2>
                <ul>
                    <li>2% lower rate and 50% lower Processing Fees for A/c holders</li>
                    <li>Get flexible repayment options, ranging from 12 to 48 months available even at the point of purchase.</li>
                    <li>Two Wheeler loan eligibility in 1 minute available online and across all branches</li>
                    <li><b>Walk in Loan :</b> Walk in to the branch with your documents and get Two Wheeler Loan in a day! </li>
                    <li>Convenience of contacting us through SMS, Web chat, Click2Talk, Phone Banking and across all branches</li>
                    <li>Transparency</li>
                </ul>
            </div>
            
            <div class="LoanHolder">
                <h2>Two Wheeler loan from SMR Bank :</h2>
                <p>Quick Two Wheeler loans-Experience express loan processing, easy documentation, quick disbursal and doorstep service</p>
                <p>Competitive pricing -Benefit from competitive loan rates and convenient repayment options</p>
                <p>Transparency - Zero hidden charges, reasonable processing fees and utmost clarity on the loan process with up-to-date information about the loan application at each stage</p>
            </div>
            <div class="LoanHolder">
                <h2>Two Wheeler Loan Eligibility and Documentation</h2>
                <p>Learn more about the eligibility criteria and the documents required for availing a SMR Bank Two Wheeler loan.</p>
                <p>The documentation for a SMR Bank personal loan varies from individual to individual. The requirements are based on your profession, income and loan requirement.</p>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="LoanHolder">
                <h2>Documents to be submitted :</h2>
                <ol>
                    <li><h3>Proof of identity :</h3>
                        <ul>
                            <li>Copy of passport/voter ID card/driving license</li>
                        </ul>
                    </li>
                    <li><h3>Proof of address :</h3>
                        <ul>
                            <li>Copy of ration card/telephone or electricity bill/rental agreement/passport</li>
                        </ul>
                    </li>
                </ol>
            </div>
            <div class="LoanHolder">
                <h2>Last 3 months bank statement/6 months bank passbook</h2>
                <h2>Latest salary slip/current dated salary certificate with the latest Form 16</h2>
            </div>
            <div class="LoanHolder">
                <h2>How can I repay my Two Wheeler Loan?</h2>
                <p>You pay the loan in equal monthly installments (EMIs). The loan will be paid through post-dated cheques. You can also pay through ECS or a standing instruction to debit your SMR Bank account with the EMI amount.</p>
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <div class="LoanHolder">
                <h2>Eligibility</h2>
                <ul>
                    <li><h3>You should :</h3>
                        <ol>
                            <li>Be a salaried or self-employed individual.</li>
                            <li>Be between the age of 21 years (at the time of application) and <= 65 years (at the end of the loan tenor).</li>
                            <li>Have had a job for at least 2 years, and a minimum of 1 year with your current employer</li>
                            <li>Be earning at least Rs. 12,000/- per month net salary for SMR Bank salary a/c</li>
                            <li>Be earning at least Rs. 15,000/- per month net salary for other Bank salary a/c</li>
                        </ol>
                    </li>
                </ul>
                <div style="margin: 5% 4%;"><asp:Button ID="Button1" runat="server" 
                        Text="Check Eligibility" onclick="Button1_Click" /></div>
            </div>
        </asp:View>

        <asp:View ID="View4" runat="server">
        </asp:View>
    </asp:MultiView>
</asp:Content>
