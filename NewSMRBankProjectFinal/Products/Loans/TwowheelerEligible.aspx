<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TwowheelerEligible.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.TwowheelerEligible" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
            
                <table class="style1">
                    <tr>
                        <td align="right" bgcolor="#B5D5DF" class="style10">
                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Where do you live currently?"></asp:Label>
                        </td>
                        <td bgcolor="#B5D5DF" colspan="2">
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
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Residence type"></asp:Label>
                        </td>
                        <td bgcolor="#EFEFEF" colspan="2">
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
                        <td align="right" bgcolor="#EFEFEF" class="style14">
                            <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Date of Birth"></asp:Label>
                        </td>
                   <td>
                       <asp:DropDownList ID="DropDownList8" runat="server">
                          <asp:ListItem>DD</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                       </asp:DropDownList>
                       <asp:DropDownList ID="DropDownList9" runat="server">
                           <asp:ListItem>January</asp:ListItem>
                           <asp:ListItem>February</asp:ListItem>
                           <asp:ListItem>March</asp:ListItem>
                           <asp:ListItem>April</asp:ListItem>
                           <asp:ListItem>May</asp:ListItem>
                           <asp:ListItem>June</asp:ListItem>
                           <asp:ListItem>July</asp:ListItem>
                           <asp:ListItem>August</asp:ListItem>
                           <asp:ListItem>September</asp:ListItem>
                           <asp:ListItem>October</asp:ListItem>
                           <asp:ListItem>November</asp:ListItem>
                           <asp:ListItem>December</asp:ListItem>
                       </asp:DropDownList>
                       <asp:DropDownList ID="DropDownList10" runat="server">
                      
                       </asp:DropDownList>
                   </td>

                 
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#EFEFEF" class="style10">
                            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Make & model of two wheeler"></asp:Label>
                        </td>
                        <td bgcolor="#EFEFEF" class="style7" colspan="2">
                            <asp:RadioButton ID="RadioButton1" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb1" Text="Activa" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb1" Text="Pulsar" />
                                <asp:RadioButton ID="RadioButton5" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb1" Text="Ray" />
                                <asp:RadioButton ID="RadioButton6" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb1" Text="Dream Yuga" />
                                 <asp:RadioButton ID="RadioButton7" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb1" Text="Other" />
                        </td>
                    </tr>
                    <tr>
                    <td bgcolor="#B5D5DF">
                        <asp:Label ID="Label12" runat="server" Text="On-road price of two wheeler"></asp:Label>
                    </td>
                    <td bgcolor="#B5D5DF">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td></tr>
                    <tr>
                        <td align="right" bgcolor="#EFEFEF" class="style10">
                            <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Type of employment"></asp:Label>
                        </td>
                        <td bgcolor="#EFEFEF" colspan="2">
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
                    <tr ID="trpopup" style="display: none;">
                        <td colspan="3">
                            <table>
                               
                                <tr>
                                    <td align="right" bgcolor="#B5D5DF" class="style3">
                                        <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" 
                                            Text="Monthly take-home salary"></asp:Label>
                                    </td>
                                    <td bgcolor="#B5D5DF">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr ID="trpop" style="display:none;">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td align="right" class="style10">
                                        <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" 
                                            Text="Gross Annual Income (as per ITR)"></asp:Label>
                                    </td>
                                    <td>
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
                    <tr id="tr1" style="display: none;">
                <td colspan="3">
                    <table class="style1">
                     <tr>
                        <td align="right" bgcolor="#B5D5DF" class="style10">
                            <asp:Label ID="Label14" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Relationship of co-applicant with applicant"></asp:Label>
                        </td>
                        <td bgcolor="#B5D5DF" colspan="2">
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Father</asp:ListItem>
                                <asp:ListItem>Mother</asp:ListItem>
                                <asp:ListItem>Brother</asp:ListItem>
                                <asp:ListItem>Sister</asp:ListItem>
                                <asp:ListItem>Gaurdian</asp:ListItem>
                               
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#EFEFEF" class="style12">
                            <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Where does the co-applicant live currently?"></asp:Label>
                        </td>
                        <td bgcolor="#EFEFEF" colspan="2" class="style13">
                            <asp:DropDownList ID="DropDownList4" runat="server">
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
                        <td align="right" bgcolor="#B5D5DF" class="style10">
                            <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Residence type"></asp:Label>
                        </td>
                        <td bgcolor="#B5D5DF" colspan="2">
                            <asp:DropDownList ID="DropDownList5" runat="server">
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
                    
                       
                    </table>
                </td>
            </tr>
                    <tr>
                        <td align="right" bgcolor="#B5D5DF" class="style4">
                            <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" 
                                Text="Is your salary deposited in SMR Account?"></asp:Label>
                        </td>
                        <td bgcolor="#EFEFEF" class="style8">
                            <asp:RadioButton ID="RadioButton8" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb2" Text="Yes" />
                            <asp:RadioButton ID="RadioButton9" runat="server" Font-Names="Arial" 
                                Font-Size="Small" GroupName="rb2" Text="No" />
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
                            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="#B5D5DF" Checked="True" 
                                Font-Names="Arial" Font-Size="X-Small" 
                                Text="I/We declare that the information provided herein above is accurate and complete. I/We understand that the offer of the bank is only indicative and final sanction including the type of card and credit limit of the card is at the sole discretion of the bank and subject to internal policy guidelines of the bank, and the bank may at its discretion conduct additional verification to complete this process. I/We authorize SMR Bank &amp; its representatives to call me or SMS me with reference to this application." />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td class="style9">
                            <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" 
                                Font-Italic="False" Font-Size="Medium" ForeColor="White" 
                                onclick="Button1_Click" Text="Calculate My Eligibility" Width="253px" />
                        </td>
                        <td class="style2" width="180px">
                        </td>
                    </tr>
                </table>
            
            <script type="text/javascript">


                function CalcTotalAmt() {
                    var a = document.getElementById("<%=DropDownList3.ClientID%>").options[document.getElementById("<%=DropDownList3.ClientID%>").selectedIndex].text;

                    if (a == "Salaried") {
                        document.getElementById("trpopup").style.display = "block";
                        document.getElementById("trpop").style.display = "none";
                        document.getElementById("tr1").style.display = "none";
                    }
                    else if (a == "Select") {
                        document.getElementById("trpopup").style.display = "none";
                        document.getElementById("trpop").style.display = "none";
                        document.getElementById("tr1").style.display = "none";
                    }
                    else if (a == "Self Employed Business") {
                        document.getElementById("trpop").style.display = "block";
                        document.getElementById("trpopup").style.display = "none";
                        document.getElementById("tr1").style.display = "none";
                    }
                    else if (a == "Student") {
                        document.getElementById("tr1").style.display = "block";
                        document.getElementById("trpop").style.display = "none";
                        document.getElementById("trpopup").style.display = "none";
                    }
                    else if (a == "Retired") {
                        document.getElementById("trpopup").style.display = "none";
                        document.getElementById("trpop").style.display = "none";
                        document.getElementById("tr1").style.display = "none";
                    }
                    else if (a == "Homemaker") {
                        document.getElementById("trpopup").style.display = "none";
                        document.getElementById("trpop").style.display = "none";
                        document.getElementById("tr1").style.display = "none";
                    }

                }
    </script>
            
</asp:Content>

