<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStateCity.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.AddStateCity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add State and City - SMR Bank</title>
    <style type="text/css">
        .style1
        {
            width: 55%;
        }
        .style2
        {
            width: 91px;
        }
        .style3
        {
            width: 91px;
            text-align: right;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        Add State<br />
        <table class="style1">
            <tr>
                <td class="style3">
                    State Name :&nbsp;
                </td>
                <td class="style4">
                    <asp:TextBox ID="StateName" runat="server" style="margin-left: 0px" 
                        Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="StateName" ErrorMessage="Not empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server"
                        Text="Add State" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        
    </div>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="#009933" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMRBankDBConnectionString %>" 
        SelectCommand="SELECT * FROM [BranchStates]"></asp:SqlDataSource>
    </form>
</body>
</html>
