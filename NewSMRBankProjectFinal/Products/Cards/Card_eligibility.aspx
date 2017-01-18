<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card_eligibility.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Cards.Card_eligibility" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 205px;
        }
        .style4
        {
            height: 23px;
            width: 243px;
        }
        .style5
        {
            width: 243px;
            height: 24px;
        }
        .style7
        {
        }
        .style8
        {
            height: 24px;
            width: 398px;
        }
        .style9
        {
            height: 23px;
            width: 398px;
        }
        .style10
        {
            width: 243px;
        }
        .style11
        {
            width: 398px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td align="right" bgcolor="#B5D5DF" class="style10">
                    <asp:Label  ID="Label1" runat="server" Text="Where do you live currently?" Font-Names="Arial"
                        Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2" bgcolor="#B5D5DF">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Banglore</asp:ListItem>
                        <asp:ListItem>Faridabad</asp:ListItem>
                        <asp:ListItem>Gaziabad</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Thane</asp:ListItem>
                        <asp:ListItem>Navi Mumbai</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Secunderabad</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Noida</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" bgcolor="#EFEFEF" class="style10">
                    <asp:Label ID="Label2" runat="server" Text="Residence type" Font-Names="Arial" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2" bgcolor="#EFEFEF">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Owned by -Self/Spouse</asp:ListItem>
                        <asp:ListItem>Owned by -Parent/sibling</asp:ListItem>
                        <asp:ListItem>Rented - With Family</asp:ListItem>
                        <asp:ListItem>Rented -With Friends</asp:ListItem>
                        <asp:ListItem>Rented -Staying Alone</asp:ListItem>
                        <asp:ListItem>Hostel</asp:ListItem>
                        <asp:ListItem>Paying guest</asp:ListItem>
                        <asp:ListItem>Company Provided</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td bgcolor="#B5D5DF" class="style10" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Date of Birth" Font-Names="Arial" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2" bgcolor="#B5D5DF">
                    <asp:TextBox ID="TextBox1" runat="server" Width="33px" ForeColor="#CCCCCC">DD</asp:TextBox>
                    /<asp:TextBox ID="TextBox2" runat="server" Width="33px" ForeColor="#CCCCCC">MM</asp:TextBox>
                    /<asp:TextBox ID="TextBox3" runat="server" Width="63px" ForeColor="#CCCCCC">YYYY</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#EFEFEF" class="style10" align="right">
                    <asp:Label ID="Label4" runat="server" Text="Gender" Font-Names="Arial" Font-Size="Small"></asp:Label>
                </td>
                <td bgcolor="#EFEFEF" class="style7" colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Names="Arial" Font-Size="Small"
                        Text="Male" GroupName="rb1" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Arial" Font-Size="Small"
                        Text="Female" GroupName="rb1" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#B5D5DF" class="style10" align="right">
                    <asp:Label ID="Label5" runat="server" Text="Type of employment" Font-Names="Arial"
                        Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2" bgcolor="#B5D5DF">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Salaried</asp:ListItem>
                        <asp:ListItem>Self Employed Business</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Retired</asp:ListItem>
                        <asp:ListItem>Homemaker</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr id="trpopup" style="display: none;">
                <td colspan="3">
                    <table>
                        <tr>
                            <td bgcolor="#B5D5DF" class="style3" align="right" >
                                <asp:Label ID="Label9" runat="server" Text="Company" Font-Names="Arial" Font-Size="Small"></asp:Label>
                            </td>
                            <td  bgcolor="#B5D5DF">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#B5D5DF" class="style3" align="right" >
                                <asp:Label ID="Label10" runat="server" Text="Monthly take-home salary" Font-Names="Arial"
                                    Font-Size="Small"></asp:Label>
                            </td>
                            <td  bgcolor="#B5D5DF">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                       
                    </table>
                </td>
            </tr>
             <tr id="trpop" style="display:none;">
             <td colspan="2">
                      <table >
                       <tr>
                        <td align="right" class="style10">
                            <asp:Label ID="Label11" runat="server" Text="Gross Annual Income (as per IRT)" 
                                Font-Names="Arial" Font-Size="Small"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>&lt;=1.5 Lakh per annum</asp:ListItem>
                                <asp:ListItem>1.5&lt;2.4 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>2.4&lt;3.6 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>3.6&lt;6 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>6&lt;7.2 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>7.2&lt;12 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>12&lt;18 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>18&lt;36 Lakhs per annum</asp:ListItem>
                                <asp:ListItem>&gt;36 Lakhs per annum</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        </tr>
                        </table>
                        </td>
                        </tr>
            <tr>
                <td bgcolor="#EFEFEF" class="style10" align="right">
                    <asp:Label ID="Label6" runat="server" Text="Applied in last 6 months?" Font-Names="Arial"
                        Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2" bgcolor="#EFEFEF">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>No,I have not applied for an SMR credit card</asp:ListItem>
                        <asp:ListItem>Yes,I have applied for an SMR credit card</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4" bgcolor="#B5D5DF" align="right">
                    <asp:Label ID="Label7" runat="server" Text="Have an SMR Bank savings account?" Font-Names="Arial"
                        Font-Size="Small"></asp:Label>
                </td>
                <td class="style2" colspan="2" bgcolor="#B5D5DF">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Yes,I have a savings account</asp:ListItem>
                        <asp:ListItem>No,I dont have a savings account here</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr id="tr1" style="display: none;">
                <td colspan="3">
                    <table>
                        <tr>
                            <td bgcolor="#B5D5DF" class="style2" align="right">
                                <asp:Label ID="Label12" runat="server" Text="Average balance of SMR Bank Account" Font-Names="Arial" Font-Size="Small"></asp:Label>
                            </td>
                            <td  bgcolor="#B5D5DF">
                                <asp:TextBox ID="txtAvgSal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#B5D5DF" class="style10" align="right">
                                <asp:Label ID="Label13" runat="server" Text="How old is SMR Bank Account?" Font-Names="Arial"
                                    Font-Size="Small"></asp:Label>
                            </td>
                            <td  bgcolor="#B5D5DF">
                                <asp:DropDownList ID="DropDownList7" runat="server">
                                    <asp:ListItem>&lt;3 months</asp:ListItem>
                                    <asp:ListItem>3-6 months</asp:ListItem>
                                    <asp:ListItem>6-12 months</asp:ListItem>
                                    <asp:ListItem>&gt;12 months</asp:ListItem>
                                </asp:DropDownList>
                            </td>

                        </tr>
                       
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#EFEFEF" class="style5" align="right">
                    <asp:Label ID="Label8" runat="server" Text="Do you have a credit card?" Font-Names="Arial"
                        Font-Size="Small"></asp:Label>
                </td>
                <td bgcolor="#EFEFEF" class="style8">
                    <asp:RadioButton ID="RadioButton3" runat="server" Font-Names="Arial" Font-Size="Small"
                        Text="Yes" GroupName="rb2" 
                        onclick="CalcTotalAmt2();" />
                    <asp:RadioButton ID="RadioButton4" runat="server" Font-Names="Arial" Font-Size="Small"
                        Text="No" GroupName="rb2" onclick="CalcTotalAmt2();" />
                </td>
            </tr>
            <tr id="tr2" style="display: none;">
                <td colspan="3">
                    <table>
                        <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList8" runat="server" Width="143px">
                                <asp:ListItem>Select a Bank</asp:ListItem>
                                <asp:ListItem>____________________</asp:ListItem>
                                <asp:ListItem>STATE BANK OF INDIA(SBI)</asp:ListItem>
                                <asp:ListItem>HDFC BANK</asp:ListItem>
                                <asp:ListItem>HSBC BANK</asp:ListItem>
                                <asp:ListItem>ICICI BANK</asp:ListItem>
                                <asp:ListItem>CITI BANK</asp:ListItem>
                                <asp:ListItem>KOTAK MAHINDRA</asp:ListItem>
                                <asp:ListItem>AXIS BANK</asp:ListItem>
                                <asp:ListItem>STANDARD CHARTERED BANK</asp:ListItem>
                                <asp:ListItem>____________________</asp:ListItem>
                                <asp:ListItem>OTHER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                            <td bgcolor="#B5D5DF" class="style12" align="right">
                                <asp:Label ID="Label14" runat="server" Text="Member since" Font-Names="Arial" Font-Size="Small"></asp:Label>
                            </td>
                            <td  bgcolor="#B5D5DF">
                                <asp:DropDownList ID="DropDownList9" runat="server">
                                 <asp:ListItem>YYYY</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>Before 2010</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                                <td>
                                <asp:DropDownList ID="DropDownList10" runat="server">
                                    <asp:ListItem>MM</asp:ListItem>
                                    <asp:ListItem>Jan</asp:ListItem>
                                    <asp:ListItem>Feb</asp:ListItem>
                                    <asp:ListItem>Mar</asp:ListItem>
                                    <asp:ListItem>Apr</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>Jun</asp:ListItem>
                                    <asp:ListItem>Jul</asp:ListItem>
                                    <asp:ListItem>Aug</asp:ListItem>
                                    <asp:ListItem>Sep</asp:ListItem>
                                    <asp:ListItem>Oct</asp:ListItem>
                                    <asp:ListItem>Nov</asp:ListItem>
                                    <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Credit limit" Font-Names="Arial" 
                                    Font-Size="Small"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCreditLimit" runat="server"></asp:TextBox> </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Arial" 
                                        Font-Size="Small"  >Delete</asp:LinkButton>   </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Arial" 
                                            Font-Size="Small" >Add another</asp:LinkButton>  </td>
                        </tr>
                          
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style11">
                    &nbsp;
                </td>

                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="I/We declare that the information provided herein above is accurate and complete. I/We understand that the offer of the bank is only indicative and final sanction including the type of card and credit limit of the card is at the sole discretion of the bank and subject to internal policy guidelines of the bank, and the bank may at its discretion conduct additional verification to complete this process. I/We authorize SMR Bank &amp; its representatives to call me or SMS me with reference to this application."
                        BackColor="#B5D5DF" Checked="True" Font-Names="Arial" 
                        Font-Size="X-Small" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style9">
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" Font-Italic="False"
                        Font-Size="Medium" ForeColor="White" Text="Calculate My Eligibility" 
                        Width="253px" onclick="Button1_Click" />
                </td>
                <td class="style2" width="180px">
                </td>
            </tr>
        </table>
    </div>
    </form>
    <script type="text/javascript">
        function CalcTotalAmt() {
            var a = document.getElementById("<%=DropDownList3.ClientID%>").options[document.getElementById("<%=DropDownList3.ClientID%>").selectedIndex].text;

            if (a == "Salaried") {
                document.getElementById("trpopup").style.display = "block";
                document.getElementById("trpop").style.display = "none";
            }
            else if (a == "Select") {
                document.getElementById("trpopup").style.display = "none";
                document.getElementById("trpop").style.display = "none";
            }
            else if (a == "Self Employed Business") {
                document.getElementById("trpop").style.display = "block";
                document.getElementById("trpopup").style.display = "none";
            }
            else if (a == "Student") {
                document.getElementById("trpopup").style.display = "none";
                document.getElementById("trpop").style.display = "none";
            }
            else if (a == "Retired") {
                document.getElementById("trpopup").style.display = "none";
                document.getElementById("trpop").style.display = "none";
            }
            else if (a == "Homemaker") {
                document.getElementById("trpopup").style.display = "none";
                document.getElementById("trpop").style.display = "none";
            }



        }
        function CalcTotalAmt1() {
            var b = document.getElementById("<%=DropDownList5.ClientID %>").options[document.getElementById("<%=DropDownList5.ClientID%>").selectedIndex].text;
            if (b == "Select" || b == "No,I dont have a savings account here") {
                document.getElementById("tr1").style.display = "none";

            }
            else if (b == "Yes,I have a savings account") {
                document.getElementById("tr1").style.display = "block";

            }
        }

        function CalcTotalAmt2() {
            var R1 = document.getElementById("<%=RadioButton3.ClientID %>")
            var R2 = document.getElementById("<%=RadioButton4.ClientID %>")

            if (R1.checked) {
                document.getElementById("tr2").style.display = "block";
            }
            else if (R2.checked) {
                document.getElementById("tr2").style.display = "none";
            }
        }

        function CalcTotalAmt3() {
            var l1 = document.getElementById("<%=LinkButton1.ClientID %>")
            var l2 = document.getElementById("<%=LinkButton2.ClientID %>")

            if (l1 == "Delete") {
                document.getElementById("tr2").style.display = "none";
            }
            else if (l2 == "Add another") {
                document.getElementById("tr2").style.display = "block";

            }
        }
    </script>
</body>
</html>
