<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAdmins.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewSMRBankProjectFinal.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AdminMenuTwo">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Branches" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="Add New Branch" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Add State & City" Value="2"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="DataHolder">
                <div class="Head"><h3>Branches</h3></div>
                <div class="DataTable">
                    <table>
                        <thead>
                            <tr>
                                <th width="2%"></th>
                                <th width="15%">Branch Name</th>
                                <th width="15%">Branch State</th>
                                <th width="10%">Branch City</th>
                                <th width="25%">Branch Address</th>
                                <th width="10%">Pin Code</th>
                                <th width="11%">Phone No.</th>
                                <th width="11%">Open Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  ArrayList BranchList =NewSMRBankProjectFinal.Branches.GetBranches();
                                foreach (NewSMRBankProjectFinal.Branches branch in BranchList)
                                {
                                    DateTime OpDate = Convert.ToDateTime(branch.open_date);
                                    string Odate = OpDate.ToString("dd/MM/yyyy"); %>
                            <tr>
                                <td><asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                <td><% Response.Write(branch.branch_name); %></td>
                                <td><% Response.Write(branch.StateName); %></td>
                                <td><% Response.Write(branch.CityName); %></td>
                                <td><% Response.Write(branch.branch_add); %></td>
                                <td><% Response.Write(branch.branch_pin); %></td>
                                <td><% Response.Write(branch.branch_phn); %></td>
                                <td><% Response.Write(Odate); %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="StateFormHolder">
                <div class="FormHead">Add New Branch</div>
                <div class="FormRow">
                    <div class="FormLabel">Branch name :</div>
                    <div class="FormInput"><asp:TextBox CssClass="FormTextBox" ID="TextBoxBranchName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxBranchName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Select State :</div>
                    <div class="FormInput">
                        <asp:DropDownList CssClass="FormList" ID="DropDownListSelectState" runat="server" OnSelectedIndexChanged="DropDownListSelectState_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="DropDownListSelectState" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Select city :</div>
                    <div class="FormInput">
                        <asp:DropDownList CssClass="FormList" ID="DropDownListSelectCity" runat="server">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="DropDownListSelectCity"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Address :</div>
                    <div class="FormInput">
                        <asp:TextBox CssClass="FormTextBox" ID="TextBoxAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxAddress"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Pin Code :</div>
                    <div class="FormInput">
                        <asp:TextBox CssClass="FormTextBox" MaxLength="6" ID="TextBoxPinCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxPinCode"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^\d+$" runat="server" ErrorMessage="Invelid pin" ForeColor="#FF3300" ControlToValidate="TextBoxPinCode"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Phone No. :</div>
                    <div class="FormInput">
                        <asp:TextBox CssClass="FormTextBox" MaxLength="11" ID="TextBoxPhnNo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxPhnNo"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number Only" ForeColor="#FF3300" ControlToValidate="TextBoxPhnNo"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="FormButton">
                    <asp:Label ID="LabelError1" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Button ValidationGroup="valGroup1" ID="ButtonAddBranch" CssClass="StateAddBtn" runat="server" Text="Add Branch" OnClick="ButtonAddBranch_Click"/>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <div class="StateFormHolder">
                <div class="FormHead">Add State</div>
                <div class="FormRow">
                    <div class="FormLabel">State name :</div>
                    <div class="FormInput"><asp:TextBox CssClass="FormTextBox" ID="TextBoxStateNamePnl3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxStateNamePnl3"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormButton">
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Button ValidationGroup="valGroup1" ID="ButtonAddState" CssClass="StateAddBtn" runat="server" Text="Add State" OnClick="ButtonAddState_Click" />
                </div>
            </div>

            <div class="StateFormHolder">
                <div class="FormHead">Add City</div>
                <div class="FormRow">
                    <div class="FormLabel">City name :</div>
                    <div class="FormInput"><asp:TextBox CssClass="FormTextBox" ID="TextBoxCityNamePnl3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup2" ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBoxCityNamePnl3"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormRow">
                    <div class="FormLabel">Select State :</div>
                    <div class="FormInput">
                        <asp:DropDownList CssClass="FormList" ID="DropDownListSlctStatePnl3" runat="server">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="valGroup2" ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="DropDownListSlctStatePnl3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="FormButton">
                    <asp:Label ID="LabelError2" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Button ValidationGroup="valGroup2" ID="ButtonAddCity" CssClass="StateAddBtn" runat="server" Text="Add City" OnClick="ButtonAddCity_Click" />
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
