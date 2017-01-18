<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="net_banking.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Apply for Net Banking</h1>
    <asp:Panel ID="Panel3" runat="server">
    <div class="NBKHolder">
        <ul class="ListWthCheck">
            <li><i class="Check"></i>Manage your account conveniently through the Internet.</li>
            <li><i class="Check"></i>Up-to-the-second details of your account.</li>
            <li><i class="Check"></i>Access anytime, from anywhere.</li>
            <li><i class="Check"></i>No queues to stand in, or turns to wait for.</li>
        </ul>
    </div><br />
    </asp:Panel>
    <div class="NBKHolder">
        <asp:Panel ID="Panel1" runat="server">
        <table cellpadding="8">
            <tbody>
                <tr>
                    <td><b>Your Customer ID :</b></td>
                    <td><asp:TextBox ID="TextBoxCustId" MaxLength="8" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxCustId" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxCustId"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="ButtonAplyNBK" runat="server" Text="Apply" onclick="ButtonAplyNBK_Click" />
                        <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <p style="color: green; font-size: 14px;">Thank you for your interest in SMR Bank Net Banking service. We will get in touch with you shortly.<br />
            Your Net Banking Password we'll send on your Email ID OR we can call you.<br /><br />
            Thank you,<br />
            Team SMR Bank.
            </p>
        </asp:Panel>
        <br />
    </div>
</asp:Content>


