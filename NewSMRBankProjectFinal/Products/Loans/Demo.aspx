<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            text-align: left;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     
                <table>
                <tr>
<td class="style6" colspan="3" align="center">
    <asp:Label ID="Label13" runat="server"  
        Text="Thank you for your interest in SMR Bank "  BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small"></asp:Label> <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"  BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small"> </asp:Label>
            <asp:Label ID="Label4" runat="server" Text=". Please fill up the details below and we will get in touch with you shortly. "  BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small"></asp:Label>  
      
</td></tr>
              
                <tr>
                <td > <asp:Label ID="Label1" runat="server" Text=" First Name"></asp:Label> 
                           </td>
                            <td class="style4">
                            <asp:TextBox ID="TextBox11" runat="server" 
                                ></asp:TextBox></td><td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ErrorMessage="**Please Enter First Name" ControlToValidate="TextBox11" 
                                ForeColor="#CC3300" Height="10px" Width="211px"></asp:RequiredFieldValidator></td></tr>

                         <tr><td class="style1"> 
                           <asp:Label ID="Label20" runat="server" Text=" Last Name"></asp:Label></td>
                           <td> <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                            <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="**Please Enter your Last Name" ControlToValidate="TextBox12" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                          
</td></tr>

                      <tr><td class="style1">     <asp:Label ID="Label21" runat="server" Text="  Gender"></asp:Label></td>
                        <td>    <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="gen" />
                           <asp:RadioButton ID="Female" runat="server" Text="Female" 
                                GroupName="gen" />
                         
                            </td></tr>

                            <tr>
                        <td align="left"  class="style1">
                            <asp:Label ID="Label14" runat="server"  
                                Text="Date of Birth" style="text-align: left"></asp:Label>
                        </td>
                        <td >
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
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>Month</asp:ListItem>
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
                      
                           <asp:ListItem>Year</asp:ListItem>
                      
                       </asp:DropDownList> </td>
                    </tr>


                         <tr><td class="style1">    <asp:Label ID="Label22" runat="server" Text="Age"></asp:Label> </td>
                         <td>
                              
                              <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                            <td>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox13" ErrorMessage="**Enter Your Age" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="TextBox13" 
                                ErrorMessage="**Your age should be in between 21 to 60 for application" 
                                ForeColor="#CC3300" Height="25px" MaximumValue="60" MinimumValue="21" 
                                Width="213px"></asp:RangeValidator>
                      
                           
                    </td></tr>

                    <tr>
<td style="text-align: left" class="style4">
    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
</td>
<td style="width: 250px">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="**Enter Your Address" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator></td></tr>
<tr>
<td class="style4">
    <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
</td>
<td style="width: 250px">
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="**Enter Your Pin code" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator></td></tr>
<tr>
<td class="style4">
    <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
</td>
<td style="width: 250px">
  <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="250px" 
                                AutoPostBack="True">
                                       
<asp:ListItem>-Select-</asp:ListItem>
<asp:ListItem >-Top Metropolitan Cities-</asp:ListItem>
<asp:ListItem>Ahmedabad</asp:ListItem>
<asp:ListItem>Bengaluru/Bangalore</asp:ListItem>
<asp:ListItem>Chandigarh</asp:ListItem>
<asp:ListItem>Chennai</asp:ListItem>
<asp:ListItem>Delhi</asp:ListItem>
<asp:ListItem>Gurgaon</asp:ListItem>
<asp:ListItem>Hyderabad/Secunderabad</asp:ListItem>
<asp:ListItem>Kolkatta</asp:ListItem>
<asp:ListItem>Mumbai</asp:ListItem>
<asp:ListItem>Noida</asp:ListItem>
<asp:ListItem>Pune</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Andhra Pradesh-</asp:ListItem>
<asp:ListItem>Anantapur</asp:ListItem>
<asp:ListItem>Guntakal</asp:ListItem>
<asp:ListItem>Guntur</asp:ListItem>
<asp:ListItem>Hyderabad/Secunderabad</asp:ListItem>
<asp:ListItem>kakinada</asp:ListItem>
<asp:ListItem>kurnool</asp:ListItem>
<asp:ListItem>Nellore</asp:ListItem>
<asp:ListItem>Nizamabad</asp:ListItem>
<asp:ListItem>Rajahmundry</asp:ListItem>
<asp:ListItem>Tirupati</asp:ListItem>
<asp:ListItem>Vijayawada</asp:ListItem>
<asp:ListItem>Visakhapatnam</asp:ListItem>
<asp:ListItem>Warangal</asp:ListItem>
<asp:ListItem>Andra Pradesh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Arunachal Pradesh-</asp:ListItem>
<asp:ListItem>Itanagar</asp:ListItem>
<asp:ListItem>Arunachal Pradesh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Assam-</asp:ListItem>
<asp:ListItem>Guwahati</asp:ListItem>
<asp:ListItem>Silchar</asp:ListItem>
<asp:ListItem>Assam-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Bihar-</asp:ListItem>
<asp:ListItem>Bhagalpur</asp:ListItem>
<asp:ListItem>Patna</asp:ListItem>
<asp:ListItem>Bihar-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Chhattisgarh-</asp:ListItem>
<asp:ListItem>Bhillai</asp:ListItem>
<asp:ListItem>Bilaspur</asp:ListItem>
<asp:ListItem>Raipur</asp:ListItem>
<asp:ListItem>Chhattisgarh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Goa-</asp:ListItem>
<asp:ListItem>Panjim/Panaji</asp:ListItem>
<asp:ListItem>Vasco Da Gama</asp:ListItem>
<asp:ListItem>Goa-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Gujarat-</asp:ListItem>
<asp:ListItem>Ahmedabad</asp:ListItem>
<asp:ListItem>Anand</asp:ListItem>
<asp:ListItem>Ankleshwar</asp:ListItem>
<asp:ListItem>Bharuch</asp:ListItem>
<asp:ListItem>Bhavnagar</asp:ListItem>
<asp:ListItem>Bhuj</asp:ListItem>
<asp:ListItem>Gandhinagar</asp:ListItem>
<asp:ListItem>Gir</asp:ListItem>
<asp:ListItem>Jamnagar</asp:ListItem>
<asp:ListItem>Kandla</asp:ListItem>
<asp:ListItem>Porbandar</asp:ListItem>
<asp:ListItem>Rajkot</asp:ListItem>
<asp:ListItem>Surat</asp:ListItem>
<asp:ListItem>Vadodara/Baroda</asp:ListItem>
<asp:ListItem>Valsad</asp:ListItem>
<asp:ListItem>Vapi</asp:ListItem>
<asp:ListItem>Gujarat-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Haryana-</asp:ListItem>
<asp:ListItem>Ambala</asp:ListItem>
<asp:ListItem>Chandigarh</asp:ListItem>
<asp:ListItem>Faridabad</asp:ListItem>
<asp:ListItem>Gurgaon</asp:ListItem>
<asp:ListItem>Hisar</asp:ListItem>
<asp:ListItem>Karnal</asp:ListItem>
<asp:ListItem>Kurukshetra</asp:ListItem>
<asp:ListItem>Panipat</asp:ListItem>
<asp:ListItem>Rohtak</asp:ListItem>
<asp:ListItem>Haryana-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Himachal Pradesh-</asp:ListItem>
<asp:ListItem>Dalhousie</asp:ListItem>
<asp:ListItem>Dharmasala</asp:ListItem>
<asp:ListItem>Kulu/Manali</asp:ListItem>
<asp:ListItem>Shimla</asp:ListItem>
<asp:ListItem>Himachal Pradesh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Jammu and Kashmir-</asp:ListItem>
<asp:ListItem>Jammu</asp:ListItem>
<asp:ListItem>Srinagar</asp:ListItem>
<asp:ListItem>Jammu and Kashmir-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Jharkhand-</asp:ListItem>
<asp:ListItem>Bokaro</asp:ListItem>
<asp:ListItem>Dhanbad</asp:ListItem>
<asp:ListItem>Jamshedpur</asp:ListItem>
<asp:ListItem>Ranchi</asp:ListItem>
<asp:ListItem>Jharkhand-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Karnataka-</asp:ListItem>
<asp:ListItem>Bengaluru/Bangalore</asp:ListItem>
<asp:ListItem>Belgaum</asp:ListItem>
<asp:ListItem>Bellary</asp:ListItem>
<asp:ListItem>Bidar</asp:ListItem>
<asp:ListItem>Dharwad</asp:ListItem>
<asp:ListItem>Gulbarga</asp:ListItem>
<asp:ListItem>Hubli</asp:ListItem>
<asp:ListItem>Kolar</asp:ListItem>
<asp:ListItem>Mangalore</asp:ListItem>
<asp:ListItem>Mysoru/Mysore</asp:ListItem>
<asp:ListItem>Karnataka-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Kerala-</asp:ListItem>
<asp:ListItem>Calicut</asp:ListItem>
<asp:ListItem>Cochin</asp:ListItem>
<asp:ListItem>Ernakulam</asp:ListItem>
<asp:ListItem>Kannur</asp:ListItem>
<asp:ListItem>Kochi</asp:ListItem>
<asp:ListItem>Kollam</asp:ListItem>
<asp:ListItem>Kottayam</asp:ListItem>
<asp:ListItem>Kozhikode</asp:ListItem>
<asp:ListItem>Palakkad</asp:ListItem>
<asp:ListItem>Palghat</asp:ListItem>
<asp:ListItem>Thrissur</asp:ListItem>
<asp:ListItem>Trivandrum</asp:ListItem>
<asp:ListItem>Kerela-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Madhya Pradesh-</asp:ListItem>
<asp:ListItem>Bhopal</asp:ListItem>
<asp:ListItem>Gwalior</asp:ListItem>
<asp:ListItem>Indore</asp:ListItem>
<asp:ListItem>Jabalpur</asp:ListItem>
<asp:ListItem>Ujjain</asp:ListItem>
<asp:ListItem>Madhya Pradesh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Maharashtra-</asp:ListItem>
<asp:ListItem>Ahmednagar</asp:ListItem>
<asp:ListItem>Aurangabad</asp:ListItem>
<asp:ListItem>Jalgaon</asp:ListItem>
<asp:ListItem>Kolhapur</asp:ListItem>
<asp:ListItem>Mumbai</asp:ListItem>
<asp:ListItem>Mumbai Suburbs</asp:ListItem>
<asp:ListItem>Nagpur</asp:ListItem>
<asp:ListItem>Nasik</asp:ListItem>
<asp:ListItem>Navi Mumbai</asp:ListItem>
<asp:ListItem>Pune</asp:ListItem>
<asp:ListItem>Solapur</asp:ListItem>
<asp:ListItem>Maharashtra-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Manipur-</asp:ListItem>
<asp:ListItem>Imphal</asp:ListItem>
<asp:ListItem>Manipur-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Meghalaya-</asp:ListItem>
<asp:ListItem>Shillong</asp:ListItem>
<asp:ListItem>Meghalaya-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Mizoram-</asp:ListItem>
<asp:ListItem>Aizawal</asp:ListItem>
<asp:ListItem>Mizoram-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Nagaland-</asp:ListItem>
<asp:ListItem>Dimapur</asp:ListItem>
<asp:ListItem>Nagaland-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Orissa-</asp:ListItem>
<asp:ListItem>Bhubaneshwar</asp:ListItem>
<asp:ListItem>Cuttak</asp:ListItem>
<asp:ListItem>Paradeep</asp:ListItem>
<asp:ListItem>Puri</asp:ListItem>
<asp:ListItem>Rourkela</asp:ListItem>
<asp:ListItem>Orissa-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Punjab-</asp:ListItem>
<asp:ListItem>Amritsar</asp:ListItem>
<asp:ListItem>Bathinda</asp:ListItem>
<asp:ListItem>Chandigarh</asp:ListItem>
<asp:ListItem>Jalandhar</asp:ListItem>
<asp:ListItem>Ludhiana</asp:ListItem>
<asp:ListItem>Mohali</asp:ListItem>
<asp:ListItem>Pathankot</asp:ListItem>
<asp:ListItem>Patiala</asp:ListItem>
<asp:ListItem>Punjab-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Rajasthan-</asp:ListItem>
<asp:ListItem>Ajmer</asp:ListItem>
<asp:ListItem>Jaipur</asp:ListItem>
<asp:ListItem>Jaisalmer</asp:ListItem>
<asp:ListItem>Jodhpur</asp:ListItem>
<asp:ListItem>Kota</asp:ListItem>
<asp:ListItem>Udaipur</asp:ListItem>
<asp:ListItem>Rajasthan-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Sikkim-</asp:ListItem>
<asp:ListItem>Gangtok</asp:ListItem>
<asp:ListItem>Sikkim-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Tamil Nadu-</asp:ListItem>
<asp:ListItem>Chennai</asp:ListItem>
<asp:ListItem>Coimbatore</asp:ListItem>
<asp:ListItem>Cuddalore</asp:ListItem>
<asp:ListItem>Erode</asp:ListItem>
<asp:ListItem>Hosur</asp:ListItem>
<asp:ListItem>Madurai</asp:ListItem>
<asp:ListItem>Nagerkoil</asp:ListItem>
<asp:ListItem>Ooty</asp:ListItem>
<asp:ListItem>Salem</asp:ListItem>
<asp:ListItem>Thanjavur</asp:ListItem>
<asp:ListItem>Tirunalveli</asp:ListItem>
<asp:ListItem>Trichy</asp:ListItem>
<asp:ListItem>Tuticorin</asp:ListItem>
<asp:ListItem>Vellore</asp:ListItem>
<asp:ListItem>Tamil Nadu-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Tripura-</asp:ListItem>
<asp:ListItem>Agartala</asp:ListItem>
<asp:ListItem>Tripura-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Union Territories-</asp:ListItem>
<asp:ListItem>Chandigarh</asp:ListItem>
<asp:ListItem>Dadra & Nagar Haveli-Silvassa</asp:ListItem>
<asp:ListItem>Daman & Diu</asp:ListItem>
<asp:ListItem>Delhi</asp:ListItem>
<asp:ListItem>Pondichery</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Uttar Pradesh-</asp:ListItem>
<asp:ListItem>Agra</asp:ListItem>
<asp:ListItem>Aligarh</asp:ListItem>
<asp:ListItem>Allahabad</asp:ListItem>
<asp:ListItem>Bareilly</asp:ListItem>
<asp:ListItem>Faizabad</asp:ListItem>
<asp:ListItem>Ghaziabad</asp:ListItem>
<asp:ListItem>Gorakhpur</asp:ListItem>
<asp:ListItem>Kanpur</asp:ListItem>
<asp:ListItem>Lucknow</asp:ListItem>
<asp:ListItem>Mathura</asp:ListItem>
<asp:ListItem>Meerut</asp:ListItem>
<asp:ListItem>Moradabad</asp:ListItem>
<asp:ListItem>Noida</asp:ListItem>
<asp:ListItem>Varanasi/Banaras</asp:ListItem>
<asp:ListItem>Uttar Pradesh-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Uttaranchal-</asp:ListItem>
<asp:ListItem>Dehradun</asp:ListItem>
<asp:ListItem>Roorkee</asp:ListItem>
<asp:ListItem>Uttaranchal-Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-West Bengal-</asp:ListItem>
<asp:ListItem>Asansol</asp:ListItem>
<asp:ListItem>Durgapur</asp:ListItem>
<asp:ListItem>Haldia</asp:ListItem>
<asp:ListItem>Kharagpur</asp:ListItem>
<asp:ListItem>Kolkatta</asp:ListItem>
<asp:ListItem>Siliguri</asp:ListItem>
<asp:ListItem>West Bengal - Other</asp:ListItem>
<asp:ListItem disabled="disabled" style="background-color:#3E3E3E">-Other-</asp:ListItem>
<asp:ListItem>Other</asp:ListItem>

                            </asp:DropDownList>
</td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="DropDownList3" ErrorMessage="**Enter Your city" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator></tr>
<tr>
<td>
    <asp:Label ID="Label16" runat="server" Text="State"></asp:Label>
</td>
<td>

 <asp:DropDownList ID="State" runat="server">
 <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chandigarh</asp:ListItem>
        <asp:ListItem>Chattisgarh</asp:ListItem>
        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
        <asp:ListItem>Daman and Diu</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Lakshadweep</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
        <asp:ListItem>Pondicherry</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttaranchal</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList>          


</td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="State" ErrorMessage="**Enter Your state" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator></tr>

<tr>
<td>
    <asp:Label ID="Label15" runat="server" Text="Residence No"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
</td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="TextBox8" ErrorMessage="**Enter Your Residence No" 
                                ForeColor="#CC3300" Height="19px" Width="101px"></asp:RequiredFieldValidator></tr>
<tr>
<td colspan="2">
    <asp:Label ID="Label7" runat="server" 
        Text="(Please enter either Residential Phone No. or Office Phone No.)" 
        Font-Size="Smaller"></asp:Label>
</td>
</tr>
                        <tr><td class="style1"> 
                            <asp:Label 
                                ID="Label23" runat="server" Text="  Mobile Number"></asp:Label></td>
                                <td>
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                            <td>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                runat="server" ControlToValidate="TextBox14" 
                                ErrorMessage="**Enter Proper Mobile No" ForeColor="#CC3300" 
                                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                          </td></tr>

                            <tr><td class="style5"> 
                            <asp:Label ID="Label24" runat="server" Text="E-Mail ID"></asp:Label>
                          </td>
                          <td class="style4">
                            <asp:TextBox ID="TextBox15" runat="server" Width="248px"></asp:TextBox></td>
                           <td class="style4"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                runat="server" ControlToValidate="TextBox15" 
                                ErrorMessage="**E-Mail should be in Proper Format" ForeColor="#CC3300" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td></tr>

                            
                       <tr><td class="style1"> 
                          
                           <asp:Label ID="Label8" runat="server" Text="Label">Residence Type</asp:Label></td>
                           <td><asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">Parent Owned</asp:ListItem>
                                <asp:ListItem Value="2">Owned</asp:ListItem>
                                <asp:ListItem Value="3">Rented</asp:ListItem>
                                <asp:ListItem Value="4">PG</asp:ListItem>
                                <asp:ListItem Value="5">Hostel</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="DropDownList2" ErrorMessage="** Select Residence Type" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                          
                            </td></tr>
                              
                            <tr><td class="style1"> <asp:Label ID="Label9" runat="server" Text="Label">
                            Total yrs on Current Address</asp:Label></td>
                        <td>    <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
                                <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
                                <asp:ListItem Value="2">1 Years</asp:ListItem>
                                <asp:ListItem Value="3">2 Years</asp:ListItem>
                                <asp:ListItem Value="4">3 years</asp:ListItem>
                                <asp:ListItem Value="5">4 Years</asp:ListItem>
                                <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="DropDownList5" 
                                ErrorMessage="** Select Years from when you are on current address" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            
                            </td></tr>

                      <tr><td class="style1">   <asp:Label ID="Label10" runat="server" Text="Label">Total yrs in current city</asp:Label>
                          
                        </td>
                        <td>
                           <b><asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
                                <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
                                <asp:ListItem Value="2">1 Years</asp:ListItem>
                                <asp:ListItem Value="3">2 Years</asp:ListItem>
                                <asp:ListItem Value="4">3 years</asp:ListItem>
                                <asp:ListItem Value="5">4 Years</asp:ListItem>
                                <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
                            </asp:DropDownList>
                           </td>
                            <td><asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
                                ControlToValidate="DropDownList6" 
                                ErrorMessage="** Select Years from when you are on current address" 
                                ID="RequiredFieldValidator11"></asp:RequiredFieldValidator>

                           </td></tr>
                          <tr><td> 
                              <asp:Label ID="Label11" runat="server" Text="Label">Type of Company</asp:Label>
                            </td>
                            <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                    Width="144px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="0">Sales</asp:ListItem>
                                <asp:ListItem Value="2">Marketing</asp:ListItem>
                                <asp:ListItem Value="3">Insurance</asp:ListItem>
                                <asp:ListItem Value="4">Broker</asp:ListItem>
                                <asp:ListItem>Proprietorship Firm</asp:ListItem>
                                <asp:ListItem>Partnership Firm</asp:ListItem>
                                <asp:ListItem Value="5">others</asp:ListItem>
                            </asp:DropDownList></td>
                          <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="DropDownList4" ErrorMessage="** Select Your Company Type" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            
                         </td></tr>

                            <tr><td class="style1"> 
                            <asp:Label ID="Label12" runat="server" Text="Label">
                            Company Name</asp:Label></td>
                          <td>  <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True">
                                       <asp:ListItem>		</asp:ListItem>
  <asp:ListItem>	3i Infotech Ltd.	</asp:ListItem>
  <asp:ListItem>	3M India Ltd.	</asp:ListItem>
  <asp:ListItem>	Aarti Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Aban Offshore Ltd.	</asp:ListItem>
  <asp:ListItem>	ABB India Ltd.	</asp:ListItem>
  <asp:ListItem>	Abbott India Ltd.	</asp:ListItem>
  <asp:ListItem>	ABG Shipyard Ltd.	</asp:ListItem>
  <asp:ListItem>	ACC Ltd.	</asp:ListItem>
  <asp:ListItem>	Adani Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	Adani Ports & Special Economic Zone Ltd.	</asp:ListItem>
  <asp:ListItem>	Adani Power Ltd.	</asp:ListItem>
  <asp:ListItem>	Adhunik Metaliks Ltd.	</asp:ListItem>
  <asp:ListItem>	Aditya Birla Nuvo Ltd.	</asp:ListItem>
  <asp:ListItem>	Ahluwalia Contracts (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	AIA Engineering Ltd.	</asp:ListItem>
  <asp:ListItem>	Akzo Nobel India Ltd.	</asp:ListItem>
  <asp:ListItem>	Alembic Ltd.	</asp:ListItem>
  <asp:ListItem>	Allahabad Bank	</asp:ListItem>
  <asp:ListItem>	Allcargo Logistics Ltd.	</asp:ListItem>
  <asp:ListItem>	Alok Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Alstom India Ltd.	</asp:ListItem>
  <asp:ListItem>	Alstom T&D India Ltd.	</asp:ListItem>
  <asp:ListItem>	Amara Raja Batteries Ltd.	</asp:ListItem>
  <asp:ListItem>	Ambuja Cements Ltd.	</asp:ListItem>
  <asp:ListItem>	Amtek Auto Ltd.	</asp:ListItem>
  <asp:ListItem>	Amtek India Ltd.	</asp:ListItem>
  <asp:ListItem>	Andhra Bank	</asp:ListItem>
  <asp:ListItem>	Apar Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Apollo Hospitals Enterprise Ltd.	</asp:ListItem>
  <asp:ListItem>	Apollo Tyres Ltd.	</asp:ListItem>
  <asp:ListItem>	Arvind Ltd.	</asp:ListItem>
  <asp:ListItem>	Asahi India Glass Ltd.	</asp:ListItem>
  <asp:ListItem>	Ashok Leyland Ltd.	</asp:ListItem>
  <asp:ListItem>	Ashoka Buildcon Ltd.	</asp:ListItem>
  <asp:ListItem>	Asian Paints Ltd.	</asp:ListItem>
  <asp:ListItem>	Asian Star Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Atul Ltd.	</asp:ListItem>
  <asp:ListItem>	Aurobindo Pharma Ltd.	</asp:ListItem>
  <asp:ListItem>	Axis Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	B L Kashyap & Sons Ltd.	</asp:ListItem>
  <asp:ListItem>	Bajaj Auto Ltd.	</asp:ListItem>
  <asp:ListItem>	Bajaj Electricals Ltd.	</asp:ListItem>
  <asp:ListItem>	Bajaj Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	Bajaj Finserv Ltd.	</asp:ListItem>
  <asp:ListItem>	Bajaj Hindustan Ltd.	</asp:ListItem>
  <asp:ListItem>	Balkrishna Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Ballarpur Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Balmer Lawrie & Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Balrampur Chini Mills Ltd.	</asp:ListItem>
  <asp:ListItem>	Bank of Baroda	</asp:ListItem>
  <asp:ListItem>	Bank of India	</asp:ListItem>
  <asp:ListItem>	Bank of Maharashtra	</asp:ListItem>
  <asp:ListItem>	BASF India Ltd.	</asp:ListItem>
  <asp:ListItem>	Bata India Ltd.	</asp:ListItem>
  <asp:ListItem>	Bayer Cropscience Ltd.	</asp:ListItem>
  <asp:ListItem>	BEML Ltd.	</asp:ListItem>
  <asp:ListItem>	Berger Paints (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	BGR Energy Systems Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharat Electronics Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharat Forge Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharat Heavy Electricals Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharat Petroleum Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharati Shipyard Ltd.	</asp:ListItem>
  <asp:ListItem>	Bharti Airtel Ltd.	</asp:ListItem>
  <asp:ListItem>	Bhushan Steel Ltd.	</asp:ListItem>
  <asp:ListItem>	Bilcare Ltd.	</asp:ListItem>
  <asp:ListItem>	Binani Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Biocon Ltd.	</asp:ListItem>
  <asp:ListItem>	Birla Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Blue Dart Express Ltd.	</asp:ListItem>
  <asp:ListItem>	Blue Star Ltd.	</asp:ListItem>
  <asp:ListItem>	Bombay Burmah Trading Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Bombay Dyeing & Manufacturing Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Bombay Rayon Fashions Ltd.	</asp:ListItem>
  <asp:ListItem>	Bosch Ltd.	</asp:ListItem>
  <asp:ListItem>	Britannia Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	C Mahendra Exports Ltd.	</asp:ListItem>
  <asp:ListItem>	Cadila Healthcare Ltd.	</asp:ListItem>
  <asp:ListItem>	Cairn India Ltd.	</asp:ListItem>
  <asp:ListItem>	Canara Bank	</asp:ListItem>
  <asp:ListItem>	Carborundum Universal Ltd.	</asp:ListItem>
  <asp:ListItem>	Castrol India Ltd.	</asp:ListItem>
  <asp:ListItem>	Ceat Ltd.	</asp:ListItem>
  <asp:ListItem>	Central Bank of India	</asp:ListItem>
  <asp:ListItem>	Century Enka Ltd.	</asp:ListItem>
  <asp:ListItem>	Century Plyboards (I) Ltd.	</asp:ListItem>
  <asp:ListItem>	Century Textiles & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	CESC Ltd.	</asp:ListItem>
  <asp:ListItem>	Chambal Fertilisers & Chemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Chennai Petroleum Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Chettinad Cement Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Cholamandalam Investment & Finance Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Cipla Ltd.	</asp:ListItem>
  <asp:ListItem>	City Union Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	CMC Ltd.	</asp:ListItem>
  <asp:ListItem>	Coal India Ltd.	</asp:ListItem>
  <asp:ListItem>	Colgate-Palmolive (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Consolidated Construction Consortium Ltd.	</asp:ListItem>
  <asp:ListItem>	Container Corporation of India Ltd.	</asp:ListItem>
  <asp:ListItem>	CORE Education & Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Coromandel International Ltd.	</asp:ListItem>
  <asp:ListItem>	Corporation Bank	</asp:ListItem>
  <asp:ListItem>	Crompton Greaves Ltd.	</asp:ListItem>
  <asp:ListItem>	Cummins India Ltd.	</asp:ListItem>
  <asp:ListItem>	Dabur India Ltd.	</asp:ListItem>
  <asp:ListItem>	Dalmia Bharat Ltd.	</asp:ListItem>
  <asp:ListItem>	DB Corp Ltd.	</asp:ListItem>
  <asp:ListItem>	DCM Shriram Ltd.	</asp:ListItem>
  <asp:ListItem>	Deepak Fertilisers & Petrochemicals Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Dena Bank	</asp:ListItem>
  <asp:ListItem>	Dewan Housing Finance Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Dhampur Sugar Mills Ltd.	</asp:ListItem>
  <asp:ListItem>	Dhanlaxmi Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Dhunseri Petrochem & Tea Ltd.	</asp:ListItem>
  <asp:ListItem>	Diamond Power Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Dish TV India Ltd.	</asp:ListItem>
  <asp:ListItem>	Divi_27_s Laboratories Ltd.	</asp:ListItem>
  <asp:ListItem>	DLF Ltd.	</asp:ListItem>
  <asp:ListItem>	Dr. Reddy_27_s Laboratories Ltd.	</asp:ListItem>
  <asp:ListItem>	Dynamatic Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Edelweiss Financial Services Ltd.	</asp:ListItem>
  <asp:ListItem>	Educomp Solutions Ltd.	</asp:ListItem>
  <asp:ListItem>	Eicher Motors Ltd.	</asp:ListItem>
  <asp:ListItem>	EID Parry (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	EIH Ltd.	</asp:ListItem>
  <asp:ListItem>	Elecon Engineering Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Electrosteel Castings Ltd.	</asp:ListItem>
  <asp:ListItem>	Electrotherm (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Emami Ltd.	</asp:ListItem>
  <asp:ListItem>	Engineers India Ltd.	</asp:ListItem>
  <asp:ListItem>	Era Infra Engineering Ltd.	</asp:ListItem>
  <asp:ListItem>	Escorts Ltd.	</asp:ListItem>
  <asp:ListItem>	Essar Oil Ltd.	</asp:ListItem>
  <asp:ListItem>	Essar Shipping Ltd.	</asp:ListItem>
  <asp:ListItem>	Essel Propack Ltd.	</asp:ListItem>
  <asp:ListItem>	Exide Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Federal Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Fertilisers and Chemicals Travancore Ltd.	</asp:ListItem>
  <asp:ListItem>	Finolex Cables Ltd.	</asp:ListItem>
  <asp:ListItem>	Finolex Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Firstsource Solutions Ltd.	</asp:ListItem>
  <asp:ListItem>	Forbes & Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Force Motors Ltd.	</asp:ListItem>
  <asp:ListItem>	Fortis Healthcare Ltd.	</asp:ListItem>
  <asp:ListItem>	Future Retail Ltd.	</asp:ListItem>
  <asp:ListItem>	GAIL (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Gammon India Ltd.	</asp:ListItem>
  <asp:ListItem>	Garden Silk Mills Ltd.	</asp:ListItem>
  <asp:ListItem>	Gayatri Projects Ltd.	</asp:ListItem>
  <asp:ListItem>	GHCL Ltd.	</asp:ListItem>
  <asp:ListItem>	Gitanjali Gems Ltd.	</asp:ListItem>
  <asp:ListItem>	GlaxoSmithKline Consumer Healthcare Ltd.	</asp:ListItem>
  <asp:ListItem>	GlaxoSmithKline Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Glenmark Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Glodyne Technoserve Ltd.	</asp:ListItem>
  <asp:ListItem>	GMR Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Godawari Power & Ispat Ltd.	</asp:ListItem>
  <asp:ListItem>	Godfrey Philips India Ltd.	</asp:ListItem>
  <asp:ListItem>	Godrej Consumer Products Ltd.	</asp:ListItem>
  <asp:ListItem>	Godrej Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Gokul Refoils & Solvent Ltd.	</asp:ListItem>
  <asp:ListItem>	Goodyear India Ltd.	</asp:ListItem>
  <asp:ListItem>	Graphite India Ltd.	</asp:ListItem>
  <asp:ListItem>	Grasim Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Great Eastern Shipping Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Greaves Cotton Ltd.	</asp:ListItem>
  <asp:ListItem>	Greenply Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	GTL Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Alkalies & Chemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Ambuja Exports Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Fluorochemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Gas Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Mineral Development Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat Narmada Valley Fertilizers & Chemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat NRE Coke Ltd.	</asp:ListItem>
  <asp:ListItem>	Gujarat State Fertilizer & Chemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	GVK Power & Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Hanung Toys & Textiles Ltd.	</asp:ListItem>
  <asp:ListItem>	Hatsun Agro Products Ltd.	</asp:ListItem>
  <asp:ListItem>	Havells India Ltd.	</asp:ListItem>
  <asp:ListItem>	HCL Infosystems Ltd.	</asp:ListItem>
  <asp:ListItem>	HCL Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	HDFC Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	HEG Ltd.	</asp:ListItem>
  <asp:ListItem>	Hero MotoCorp Ltd.	</asp:ListItem>
  <asp:ListItem>	Hexaware Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Himatsingka Seide Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindalco Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Hinduja Global Solutions Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindustan Construction Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindustan Copper Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindustan Petroleum Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindustan Unilever Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindustan Zinc Ltd.	</asp:ListItem>
  <asp:ListItem>	Hindusthan National Glass & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Honeywell Automation India Ltd.	</asp:ListItem>
  <asp:ListItem>	Housing Development & Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Housing Development Finance Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	HSIL Ltd.	</asp:ListItem>
  <asp:ListItem>	HT Media Ltd.	</asp:ListItem>
  <asp:ListItem>	ICICI Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	IDBI Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Idea Cellular Ltd.	</asp:ListItem>
  <asp:ListItem>	IDFC Ltd.	</asp:ListItem>
  <asp:ListItem>	IFCI Ltd.	</asp:ListItem>
  <asp:ListItem>	IIFL Holdings Ltd.	</asp:ListItem>
  <asp:ListItem>	IL&FS Engineering & Construction Company Ltd.	</asp:ListItem>
  <asp:ListItem>	IL&FS Transportation Networks Ltd.	</asp:ListItem>
  <asp:ListItem>	Ind-Swift Laboratories Ltd.	</asp:ListItem>
  <asp:ListItem>	India Cements Ltd.	</asp:ListItem>
  <asp:ListItem>	India Glycols Ltd.	</asp:ListItem>
  <asp:ListItem>	Indiabulls Financial Services Ltd.[Amalgamated]	</asp:ListItem>
  <asp:ListItem>	Indiabulls Real Estate Ltd.	</asp:ListItem>
  <asp:ListItem>	Indian Bank	</asp:ListItem>
  <asp:ListItem>	Indian Hotels Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Indian Oil Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Indian Overseas Bank	</asp:ListItem>
  <asp:ListItem>	Indo Rama Synthetics (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Indraprastha Gas Ltd.	</asp:ListItem>
  <asp:ListItem>	IndusInd Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Infosys Ltd.	</asp:ListItem>
  <asp:ListItem>	Infotech Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	ING Vysya Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Ipca Laboratories Ltd.	</asp:ListItem>
  <asp:ListItem>	IRB Infrastructure Developers Ltd.	</asp:ListItem>
  <asp:ListItem>	ISGEC Heavy Engineering Ltd.	</asp:ListItem>
  <asp:ListItem>	ISMT Ltd.	</asp:ListItem>
  <asp:ListItem>	ITC Ltd.	</asp:ListItem>
  <asp:ListItem>	ITD Cementation India Ltd.	</asp:ListItem>
  <asp:ListItem>	IVRCL Ltd.	</asp:ListItem>
  <asp:ListItem>	J B Chemicals & Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Jai Balaji Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Jain Irrigation Systems Ltd.	</asp:ListItem>
  <asp:ListItem>	Jaiprakash Associates Ltd.	</asp:ListItem>
  <asp:ListItem>	Jaiprakash Power Ventures Ltd.	</asp:ListItem>
  <asp:ListItem>	Jammu & Kashmir Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Jayant Agro Organics Ltd.	</asp:ListItem>
  <asp:ListItem>	Jayaswal Neco Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Jaypee Infratech Ltd.	</asp:ListItem>
  <asp:ListItem>	JBF Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Jet Airways (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Jindal Poly Films Ltd.	</asp:ListItem>
  <asp:ListItem>	Jindal Saw Ltd.	</asp:ListItem>
  <asp:ListItem>	Jindal Stainless Ltd.	</asp:ListItem>
  <asp:ListItem>	Jindal Steel & Power Ltd.	</asp:ListItem>
  <asp:ListItem>	JK Cement Ltd.	</asp:ListItem>
  <asp:ListItem>	JK Lakshmi Cement Ltd.	</asp:ListItem>
  <asp:ListItem>	JK Tyre & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	JMC Projects (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	JSW Energy Ltd.	</asp:ListItem>
  <asp:ListItem>	JSW Ispat Steel Ltd.	</asp:ListItem>
  <asp:ListItem>	JSW Steel Ltd.	</asp:ListItem>
  <asp:ListItem>	Jubilant Life Sciences Ltd.	</asp:ListItem>
  <asp:ListItem>	JVL Agro Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Jyoti Structures Ltd.	</asp:ListItem>
  <asp:ListItem>	K S Oils Ltd.	</asp:ListItem>
  <asp:ListItem>	Kalpataru Power Transmissions Ltd.	</asp:ListItem>
  <asp:ListItem>	Kansai Nerolac Paints Ltd.	</asp:ListItem>
  <asp:ListItem>	Karnataka Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Karur Vysya Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	KEC International Ltd.	</asp:ListItem>
  <asp:ListItem>	KEI Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Kesoram Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Kingfisher Airlines Ltd.	</asp:ListItem>
  <asp:ListItem>	Kirloskar Brothers Investments Ltd.	</asp:ListItem>
  <asp:ListItem>	Kirloskar Brothers Ltd.	</asp:ListItem>
  <asp:ListItem>	Kirloskar Oil Engines Ltd.	</asp:ListItem>
  <asp:ListItem>	Kohinoor Foods Ltd.	</asp:ListItem>
  <asp:ListItem>	Kotak Mahindra Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	KPIT Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	KRBL Ltd.	</asp:ListItem>
  <asp:ListItem>	KSK Energy Ventures Ltd.	</asp:ListItem>
  <asp:ListItem>	KSL and Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Kwality Ltd.	</asp:ListItem>
  <asp:ListItem>	L&T Finance Holdings Ltd.	</asp:ListItem>
  <asp:ListItem>	Lakshmi Machine Works Ltd.	</asp:ListItem>
  <asp:ListItem>	Lakshmi Vilas Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Lanco Infratech Ltd.	</asp:ListItem>
  <asp:ListItem>	Larsen & Toubro Ltd.	</asp:ListItem>
  <asp:ListItem>	LIC Housing Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	LT Foods Ltd.	</asp:ListItem>
  <asp:ListItem>	Lupin Ltd.	</asp:ListItem>
  <asp:ListItem>	Madhucon Projects Ltd.	</asp:ListItem>
  <asp:ListItem>	Madras Fertilizers Ltd.	</asp:ListItem>
  <asp:ListItem>	Mahanagar Telephone Nigam Ltd.	</asp:ListItem>
  <asp:ListItem>	Maharashtra Seamless Ltd.	</asp:ListItem>
  <asp:ListItem>	Mahindra & Mahindra Financial Services Ltd.	</asp:ListItem>
  <asp:ListItem>	Mahindra & Mahindra Ltd.	</asp:ListItem>
  <asp:ListItem>	Mahindra CIE Automotive Ltd.	</asp:ListItem>
  <asp:ListItem>	Mahindra Ugine Steel Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Man Industries (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Manaksia Ltd.	</asp:ListItem>
  <asp:ListItem>	Manappuram Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	Mangalore Chemicals & Fertilizers Ltd.	</asp:ListItem>
  <asp:ListItem>	Mangalore Refinery And Petrochemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Marico Ltd.	</asp:ListItem>
  <asp:ListItem>	Maruti Suzuki India Ltd.	</asp:ListItem>
  <asp:ListItem>	Max India Ltd.	</asp:ListItem>
  <asp:ListItem>	McLeod Russel (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	McNally Bharat Engineering Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Mercator Ltd.	</asp:ListItem>
  <asp:ListItem>	MindTree Ltd.	</asp:ListItem>
  <asp:ListItem>	MIRC Electronics Ltd.	</asp:ListItem>
  <asp:ListItem>	MMTC Ltd.	</asp:ListItem>
  <asp:ListItem>	Monnet Ispat & Energy Ltd.	</asp:ListItem>
  <asp:ListItem>	Moser Baer India Ltd.	</asp:ListItem>
  <asp:ListItem>	Motherson Sumi Systems Ltd.	</asp:ListItem>
  <asp:ListItem>	MphasiS Ltd.	</asp:ListItem>
  <asp:ListItem>	MRF Ltd.	</asp:ListItem>
  <asp:ListItem>	Mukand Ltd.	</asp:ListItem>
  <asp:ListItem>	Munjal Showa Ltd.	</asp:ListItem>
  <asp:ListItem>	Muthoot Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	Nahar Industrial Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	Nahar Spinning Mills Ltd.	</asp:ListItem>
  <asp:ListItem>	Nakoda Ltd.	</asp:ListItem>
  <asp:ListItem>	National Aluminium Company Ltd.	</asp:ListItem>
  <asp:ListItem>	National Buildings Construction Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	National Fertilizers Ltd.	</asp:ListItem>
  <asp:ListItem>	National Steel and Agro Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	NCC Ltd.	</asp:ListItem>
  <asp:ListItem>	Nestle India Ltd.	</asp:ListItem>
  <asp:ListItem>	Network 18 Media & Investments Ltd.	</asp:ListItem>
  <asp:ListItem>	Neyveli Lignite Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	NHPC Ltd.	</asp:ListItem>
  <asp:ListItem>	NIIT Ltd.	</asp:ListItem>
  <asp:ListItem>	NIIT Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Nilkamal Ltd.	</asp:ListItem>
  <asp:ListItem>	NMDC Ltd.	</asp:ListItem>
  <asp:ListItem>	NTPC Ltd.	</asp:ListItem>
  <asp:ListItem>	OCL India Ltd.	</asp:ListItem>
  <asp:ListItem>	Oil And Natural Gas Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Oil India Ltd.	</asp:ListItem>
  <asp:ListItem>	Omaxe Ltd.	</asp:ListItem>
  <asp:ListItem>	Opto Circuits India Ltd.	</asp:ListItem>
  <asp:ListItem>	Oracle Financial Services Software Ltd.	</asp:ListItem>
  <asp:ListItem>	Orchid Chemicals & Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Orient Paper & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Oriental Bank of Commerce	</asp:ListItem>
  <asp:ListItem>	Patel Engineering Ltd.	</asp:ListItem>
  <asp:ListItem>	Pearl Global Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Petronet LNG Ltd.	</asp:ListItem>
  <asp:ListItem>	Phillips Carbon Black Ltd.	</asp:ListItem>
  <asp:ListItem>	Pidilite Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Pipavav Defence & Offshore Engineering Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Piramal Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	Plethico Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Polaris Financial Technology Ltd.	</asp:ListItem>
  <asp:ListItem>	Polyplex Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Power Finance Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Power Grid Corporation of India Ltd.	</asp:ListItem>
  <asp:ListItem>	Pradip Overseas Ltd.	</asp:ListItem>
  <asp:ListItem>	Prakash Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Pratibha Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Prism Cement Ltd.	</asp:ListItem>
  <asp:ListItem>	PSL Ltd.	</asp:ListItem>
  <asp:ListItem>	Punj Lloyd Ltd.	</asp:ListItem>
  <asp:ListItem>	Punjab & Sind Bank	</asp:ListItem>
  <asp:ListItem>	Punjab National Bank	</asp:ListItem>
  <asp:ListItem>	Rain Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Ramky Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Ranbaxy Laboratories Ltd.	</asp:ListItem>
  <asp:ListItem>	Rane Holdings Ltd.	</asp:ListItem>
  <asp:ListItem>	Rashtriya Chemicals & Fertilizers Ltd.	</asp:ListItem>
  <asp:ListItem>	Raymond Ltd.	</asp:ListItem>
  <asp:ListItem>	REI Agro Ltd.	</asp:ListItem>
  <asp:ListItem>	Reliance Capital Ltd.	</asp:ListItem>
  <asp:ListItem>	Reliance Communications Ltd.	</asp:ListItem>
  <asp:ListItem>	Reliance Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Reliance Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Reliance Power Ltd.	</asp:ListItem>
  <asp:ListItem>	Religare Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	Responsive Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Rico Auto Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Rohit Ferro-Tech Ltd.	</asp:ListItem>
  <asp:ListItem>	Rolta India Ltd.	</asp:ListItem>
  <asp:ListItem>	RSWM Ltd.	</asp:ListItem>
  <asp:ListItem>	Ruchi Infrastructure Ltd.	</asp:ListItem>
  <asp:ListItem>	Ruchi Soya Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Rural Electrification Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	S Kumars Nationwide Ltd.	</asp:ListItem>
  <asp:ListItem>	S Mobility Ltd.	</asp:ListItem>
  <asp:ListItem>	Sadbhav Engineering Ltd.	</asp:ListItem>
  <asp:ListItem>	Sakthi Sugars Ltd.	</asp:ListItem>
  <asp:ListItem>	Sangam (India) Ltd.	</asp:ListItem>
  <asp:ListItem>	Sanofi India Ltd.	</asp:ListItem>
  <asp:ListItem>	Sanwaria Agro Oils Ltd.	</asp:ListItem>
  <asp:ListItem>	Satyam Computer Services Ltd.(Merged)	</asp:ListItem>
  <asp:ListItem>	Savita Oil Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	SEL Manufacturing Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Sesa Sterlite Ltd.	</asp:ListItem>
  <asp:ListItem>	Shipping Corporation of India Ltd.	</asp:ListItem>
  <asp:ListItem>	Shirpur Gold Refinery Ltd.	</asp:ListItem>
  <asp:ListItem>	Shiv-Vani Oil & Gas Exploration Services Ltd.	</asp:ListItem>
  <asp:ListItem>	Shoppers Stop Ltd.	</asp:ListItem>
  <asp:ListItem>	Shree Cements Ltd.	</asp:ListItem>
  <asp:ListItem>	Shree Ganesh Jewellery House (I) Ltd.	</asp:ListItem>
  <asp:ListItem>	Shree Renuka Sugars Ltd.	</asp:ListItem>
  <asp:ListItem>	Shrenuj & Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Shri Lakshmi Cotsyn Ltd.	</asp:ListItem>
  <asp:ListItem>	Shriram City Union Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	Shriram EPC Ltd.	</asp:ListItem>
  <asp:ListItem>	Shriram Transport Finance Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Siemens Ltd.	</asp:ListItem>
  <asp:ListItem>	Simplex Infrastructures Ltd.	</asp:ListItem>
  <asp:ListItem>	Sintex Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	SJVN Ltd.	</asp:ListItem>
  <asp:ListItem>	SKF India Ltd.	</asp:ListItem>
  <asp:ListItem>	Sobha Developers Ltd.	</asp:ListItem>
  <asp:ListItem>	Sona Koyo Steering Systems Ltd.	</asp:ListItem>
  <asp:ListItem>	Sonata Software Ltd.	</asp:ListItem>
  <asp:ListItem>	South Indian Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Southern Petrochemicals Industries Corporation Ltd.	</asp:ListItem>
  <asp:ListItem>	Spicejet Ltd.	</asp:ListItem>
  <asp:ListItem>	SREI Infrastructure Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	SRF Ltd.	</asp:ListItem>
  <asp:ListItem>	SRS Ltd.	</asp:ListItem>
  <asp:ListItem>	State Bank Of Bikaner and Jaipur	</asp:ListItem>
  <asp:ListItem>	State Bank of India	</asp:ListItem>
  <asp:ListItem>	State Bank Of Mysore	</asp:ListItem>
  <asp:ListItem>	State Bank of Travancore	</asp:ListItem>
  <asp:ListItem>	Steel Authority of India (SAIL) Ltd.	</asp:ListItem>
  <asp:ListItem>	Sterling Biotech Ltd.	</asp:ListItem>
  <asp:ListItem>	Sterlite Industries (India) Ltd. (Amalgamated)	</asp:ListItem>
  <asp:ListItem>	Sterlite Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Strides Arcolab Ltd.	</asp:ListItem>
  <asp:ListItem>	Sujana Metal Products Ltd.	</asp:ListItem>
  <asp:ListItem>	Sujana Towers Ltd.	</asp:ListItem>
  <asp:ListItem>	Sun Pharmaceutical Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Sun TV Network Ltd.	</asp:ListItem>
  <asp:ListItem>	Sundaram Clayton Ltd.	</asp:ListItem>
  <asp:ListItem>	Sundaram Finance Ltd.	</asp:ListItem>
  <asp:ListItem>	Sundram Fasteners Ltd.	</asp:ListItem>
  <asp:ListItem>	Sunflag Iron & Steel Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Supreme Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Supreme Infrastructure India Ltd.	</asp:ListItem>
  <asp:ListItem>	Supreme Petrochem Ltd.	</asp:ListItem>
  <asp:ListItem>	Surya Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Surya Roshni Ltd.	</asp:ListItem>
  <asp:ListItem>	Sutlej Textiles & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Suzlon Energy Ltd.	</asp:ListItem>
  <asp:ListItem>	Syndicate Bank	</asp:ListItem>
  <asp:ListItem>	Tamil Nadu Newsprint And Papers Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Chemicals Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Coffee Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Communications Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Consultancy Services Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Global Beverages Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Motors Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Power Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Steel Ltd.	</asp:ListItem>
  <asp:ListItem>	Tata Teleservices (Maharashtra) Ltd.	</asp:ListItem>
  <asp:ListItem>	Tech Mahindra Ltd.	</asp:ListItem>
  <asp:ListItem>	Tecpro Systems Ltd.	</asp:ListItem>
  <asp:ListItem>	The Ramco Cements Ltd.	</asp:ListItem>
  <asp:ListItem>	Thermax Ltd.	</asp:ListItem>
  <asp:ListItem>	Time Technoplast Ltd.	</asp:ListItem>
  <asp:ListItem>	Titan Company Ltd.	</asp:ListItem>
  <asp:ListItem>	Torrent Pharmaceuticals Ltd.	</asp:ListItem>
  <asp:ListItem>	Torrent Power Ltd.	</asp:ListItem>
  <asp:ListItem>	Transport Corporation of India Ltd.	</asp:ListItem>
  <asp:ListItem>	Trend Electronics Ltd.	</asp:ListItem>
  <asp:ListItem>	Trent Ltd.	</asp:ListItem>
  <asp:ListItem>	Trident Ltd.	</asp:ListItem>
  <asp:ListItem>	Triveni Engineering & Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Tube Investments of India Ltd.	</asp:ListItem>
  <asp:ListItem>	Tulip Telecom Ltd.	</asp:ListItem>
  <asp:ListItem>	TV18 Broadcast Ltd.	</asp:ListItem>
  <asp:ListItem>	TVS Motor Company Ltd.	</asp:ListItem>
  <asp:ListItem>	TVS Srichakra Ltd.	</asp:ListItem>
  <asp:ListItem>	UCO Bank	</asp:ListItem>
  <asp:ListItem>	Uflex Ltd.	</asp:ListItem>
  <asp:ListItem>	UltraTech Cement Ltd.	</asp:ListItem>
  <asp:ListItem>	Union Bank of India	</asp:ListItem>
  <asp:ListItem>	Unitech Ltd.	</asp:ListItem>
  <asp:ListItem>	United Bank of India	</asp:ListItem>
  <asp:ListItem>	United Breweries (Holdings) Ltd.	</asp:ListItem>
  <asp:ListItem>	United Spirits Ltd.	</asp:ListItem>
  <asp:ListItem>	Unity Infraprojects Ltd.	</asp:ListItem>
  <asp:ListItem>	UPL Ltd.	</asp:ListItem>
  <asp:ListItem>	Usha Martin Ltd.	</asp:ListItem>
  <asp:ListItem>	Uttam Galva Steels Ltd.	</asp:ListItem>
  <asp:ListItem>	Uttam Value Steels Ltd.	</asp:ListItem>
  <asp:ListItem>	Va Tech Wabag Ltd.	</asp:ListItem>
  <asp:ListItem>	Vardhman Textiles Ltd.	</asp:ListItem>
  <asp:ListItem>	Varun Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Videocon Industries Ltd.	</asp:ListItem>
  <asp:ListItem>	Vijaya Bank	</asp:ListItem>
  <asp:ListItem>	Voltas Ltd.	</asp:ListItem>
  <asp:ListItem>	Welspun Corp Ltd.	</asp:ListItem>
  <asp:ListItem>	Welspun India Ltd.	</asp:ListItem>
  <asp:ListItem>	Wheels India Ltd.	</asp:ListItem>
  <asp:ListItem>	Whirlpool of India Ltd.	</asp:ListItem>
  <asp:ListItem>	Winsome Diamonds and Jewellery Ltd.	</asp:ListItem>
  <asp:ListItem>	Wipro Ltd.	</asp:ListItem>
  <asp:ListItem>	Wockhardt Ltd.	</asp:ListItem>
  <asp:ListItem>	YES Bank Ltd.	</asp:ListItem>
  <asp:ListItem>	Zee Entertainment Enterprises Ltd.	</asp:ListItem>
  <asp:ListItem>	Zensar Technologies Ltd.	</asp:ListItem>
  <asp:ListItem>	Zuari Global Ltd.	</asp:ListItem>
  <asp:ListItem>	Zylog Systems Ltd.	</asp:ListItem>
</asp:DropDownList>
                          </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="DropDownList14" ErrorMessage="**Select Your Company" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                           
                            </td></tr>
                           <tr><td class="style1">  <asp:Label ID="Label31" runat="server" Text="Monthly Net Salary"></asp:Label>
                            </td><td><asp:TextBox ID="TextBox16" runat="server" style="margin-bottom: 0px"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="TextBox16" ErrorMessage="**Enter Your Monthly Net Salary" 
                                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                           </td></tr>

                            <tr><td class="style1"> 
                            <asp:Label ID="Label32" runat="server" Text="Salary A/C in"></asp:Label>
                          </td><td><asp:RadioButton ID="RadioButton3" runat="server" Text="SMR Bank" GroupName="sal" />
                           
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="Other Bank" GroupName="sal" />
                           
                            </td></tr>
                       <tr><td colspan="3"> 
                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                
                                
                                Text="I/we confirm that we have read and accepted the Terms and Conditions" 
                                Checked="True" />
                           
                            
                            </td></tr>
                            <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    onclick="Button1_Click"   />    </td></tr>
                </table>
    </div>
    </form>
</body>
</html>
