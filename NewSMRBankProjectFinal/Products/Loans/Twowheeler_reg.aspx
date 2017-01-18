<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Twowheeler_reg.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.Twowheeler_reg" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td bgcolor="#0066CC"> <img id="Img1" alt="SMR Bank" src="~/images/SMR-logo4.png" border="0" runat="server"  /></td></tr>
   <tr>
   <td>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
             <table>
    <tr>
    <td>
    <asp:Panel ID="Panel1" runat="server" BackColor="#333399" 
        style="text-align: left" Width="351px">
   
            <span class="style2"><strong>Maximum Eligibility Calculator</strong></span><b/><br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="Loan Amount"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Amount" runat="server" ForeColor="White" 
                style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Tenure"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="months" runat="server" ForeColor="White"></asp:Label>
           
           
            <br />
            <b/>
           
     </asp:Panel>
     </td> 
     </tr>
     </table>
            
   <table>
     <tr>
    <td> <asp:Label ID="Label15" runat="server" Text="Loan Amount"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox10" runat="server" 
            ></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label1" runat="server" 
            Text="* Amount is beyond your Maximum Eligibility" Visible="False" 
            ForeColor="#DD0000"></asp:Label>
    </td>
    <td>
        <asp:Label ID="Label16" runat="server" Text="Tenure"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem>1 Year</asp:ListItem>
            <asp:ListItem>1 Year 6 months</asp:ListItem>
            <asp:ListItem>2 Years</asp:ListItem>
            <asp:ListItem>2 Year 6 months</asp:ListItem>
            <asp:ListItem>3 Years</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button2" runat="server" Text="Calculate EMI" 
            onclick="Button2_Click" />
    </td></tr>
    <tr>
    <td>
        <asp:Label ID="Label17" runat="server" 
            Text="Your Equated Monthly Installment(EMI):" Visible="False"></asp:Label>
    </td>
    <td>
        <asp:Label ID="Label18" runat="server" ForeColor="#DD0000"></asp:Label>
    </td></tr>
    <tr>
    <td>
        <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" />
    </td>
    <td>
        <asp:Button ID="Button4" runat="server" Text="Apply Now" 
            onclick="Button4_Click" />
    </td></tr>
    </table>
     </asp:View>
            <a href="Twowheeler_reg.aspx">Twowheeler_reg.aspx</a>

          

        </asp:MultiView>
        </td></tr>
        <tr>
        <td bgcolor="#0066CC">
        </td></tr>
   </table>

    </div>
    </form>
</body>
</html>
