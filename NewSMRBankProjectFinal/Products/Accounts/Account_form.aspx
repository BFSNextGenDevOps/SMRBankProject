<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4Forms.Master" AutoEventWireup="true" CodeBehind="Account_form.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="AccountFormHolder">
    <% string ac_type = Request.QueryString["ac_type"];
       string sub_ac_type = Request.QueryString["sub_ac_type"]; %>
        <div class="FormHead">Thank you for your interest in SMR Bank <% Response.Write(sub_ac_type); %>. Please fill up the details below and we will get in touch with you shortly.</div>
        <div class="FormTableOne">
            <table id="Table1" cellspacing="8" runat="server">
                <tbody>
                    <tr>
                        <td class="Label">Title <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListTitle" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                                <asp:ListItem>Ms.</asp:ListItem>
                                <asp:ListItem>Dr.</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">First Name <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxFname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxFname"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Middle Name <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxMname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxMname"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Last Name <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxLname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxLname"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Address :</td>
                        <td><asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="Label">Pin/Zip <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxPin" MaxLength="6" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxPin"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxPin"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">State <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListState" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownListState_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListState"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">City <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListCity" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownListCity_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListCity"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Nearest Branch <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListBranch" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListBranch"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="FormTableTwo">
            <table id="Table2" cellspacing="8" runat="server">
                <tbody>
                    <tr>
                        <td class="Label">Gender <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListGender" runat="server">
                                <asp:ListItem Value="">Select Gender</asp:ListItem>
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListGender"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Marital status<font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListMaritalStatus" runat="server">
                                <asp:ListItem Value="">Select..</asp:ListItem>
                                <asp:ListItem Value="Single">Single</asp:ListItem>
                                <asp:ListItem Value="Married">Married</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListMaritalStatus"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Date of birth <font color="red">*</font> :</td>
                        <td><asp:DropDownList ID="DropDownListDay" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListDay"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownListMonth" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListMonth"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownListYear" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListYear"></asp:RequiredFieldValidator>
                            <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="MM/dd/yyyy" ForeColor="#FF3300" ControlToValidate="TextBoxDOB" Type="Date"></asp:RangeValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">E-Mail ID <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxMobile"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ErrorMessage="Invailid Email" ForeColor="#FF3300" 
                                ControlToValidate="TextBoxEmail" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Residential Phone No :</td>
                        <td><asp:TextBox ID="TextBoxPhone" MaxLength="11" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxPhone"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="Label">Mobile No <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxMobile" MaxLength="11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxMobile"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxMobile"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="color: #444; font-size: 11px;">eg. 09988776655</td>
                    </tr>
                    <tr>
                        <td class="Label">Aadhaar No <font color="red">*</font> :</td>
                        <td><asp:TextBox ID="TextBoxAadhaar" MaxLength="12" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxAadhaar"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxAadhaar"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:Label ID="LabelErrors" runat="server" ForeColor="#FF3300"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p style="clear: both; text-align: center;"><asp:CheckBox ID="CheckBox1" runat="server" Checked="True" /> I authorize SMR Bank & its representatives to call me or SMS me with reference to my application.</p>
        <div class="FormButton"><asp:Button CssClass="SubmitBtn" ID="ButtonSubmit" runat="server" Text="Submit" onclick="ButtonSubmit_Click" /></div>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="AccountFormHolder">
            <h2 style=" color:Green; margin-left: 3%; ">Thank you for registration, We will get in touch with you shortly.</h2>
        </div>
    </asp:Panel>
</asp:Content>

