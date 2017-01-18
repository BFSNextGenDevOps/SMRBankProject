<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Contact Us</h1>
    <div class="ContactHolder">
        <p>Email ID : admin@mail.com</p>
        <p>Call : 1800-2244-5566</p>
        <p><b>OR</b></p>
        <p>Need to find a specific branch in a specific city? much more is available here - everything to do with our branch
        locations. Just use the drop down boxes to find the answers to your questions.</p>

        <div class="ContactFindDropDown">
            <table cellspacing="8">
                <tbody>
                    <tr>
                        <td><asp:DropDownList ID="DropDownListState" CssClass="List" AutoPostBack="true" runat="server" onselectedindexchanged="DropDownListState_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownListState" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                        <td><asp:DropDownList ID="DropDownListCity" CssClass="List" AutoPostBack="true" runat="server" onselectedindexchanged="DropDownListCity_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="DropDownListCity" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                        <td><asp:DropDownList ID="DropDownListBranch" CssClass="List" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="DropDownListBranch" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Button ID="ButtonDisplay" runat="server" Text="Display" onclick="ButtonDisplay_Click" /></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <asp:Panel ID="Panel1" runat="server">
            <div class="BranchData">
                <%
                    NewSMRBankProjectFinal.Branches BanchDataByCode = NewSMRBankProjectFinal.Branches.GetBrnchAllDataById(Convert.ToInt32(DropDownListBranch.SelectedValue));
                %>
                <table cellspacing="8">
                    <tbody>
                        <tr>
                            <td class="Lable">Branch name :</td>
                            <td><% Response.Write(BanchDataByCode.branch_name); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch state :</td>
                            <td><% Response.Write(BanchDataByCode.StateName); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch city :</td>
                            <td><% Response.Write(BanchDataByCode.CityName); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch address :</td>
                            <td><% Response.Write(BanchDataByCode.branch_add); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch pin/zip code :</td>
                            <td><% Response.Write(BanchDataByCode.branch_pin); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch Phone No. :</td>
                            <td><% Response.Write(BanchDataByCode.branch_phn); %></td>
                        </tr>
                        <tr>
                            <td class="Lable">Branch Timing. :</td>
                            <td>
                                Weekday : Monday to Friday, Timing<br />
                                Morning : 9.00 am - 12.00 pm<br />
                                Evening : 4.00 pm - 06.00 pm<br /><br />
                                
                                Weekday : Saturday & Sunday, Timimg<br />
                                Morning : 9.00 am - 12.00 pm<br />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </asp:Panel>
        <br />
    </div>
</asp:Content>

