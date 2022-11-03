<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="AppointmentForm.aspx.cs" Inherits="E_Vaccination.AppointmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment</title>
     <link rel="Stylesheet" href="AppointmentStyle.css" />
</head>
<body>  
         <div class="container">
        <header>Appointment</header>
              
        <form action="#">
            <div class="form first">
                <form id="form1" runat="server">
                <div class="details personal">
                    <span class="title">Personal Details</span>
                    
                    <div class="fields">
                        <div class="input-field">
                            <label>NIC</label>
                 
                            <asp:TextBox ID="txtNIC" runat="server" placeholder="Enter your NIC" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Full Name</label>
                            <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Phone Number</label>
                           <asp:TextBox ID="txtNumber" runat="server" placeholder="Enter your phone number" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Age</label>
                            <asp:TextBox ID="txtAge" runat="server" placeholder="Enter your age" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter your address" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <asp:DropDownList ID="txtGender" runat="server" Height="45px" ForeColor="Black">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Vaccination Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Email</label>
                           <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" required></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Vaccine Name</label>
                            <asp:DropDownList ID="txtVName" runat="server" Height="45px">
                                <asp:ListItem>Pfizer</asp:ListItem>
                                <asp:ListItem>Moderna</asp:ListItem>
                                <asp:ListItem>Sinopharm</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="input-field">
                            <label>VC Location</label>
                            <asp:DropDownList ID="txtLocation" runat="server"  Height="45px" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location">   
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E_VaccinationConnectionString %>" SelectCommand="SELECT [Location] FROM [Manage_Center]"></asp:SqlDataSource>
                        </div>

                        <div class="input-field">
                            <label>Vaccination Date</label>

                           <table>
                                <tr>
                                    <td>
                                         <asp:TextBox ID="txtDate" runat="server" placeholder="Enter Date" ></asp:TextBox>
                                    </td>
                                    <td>                                       
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" Width="55px" ImageUrl="~/Photos/calc.png" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" />

                                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
                                    </td>
                                </tr>
                            </table>                    
                        </div>

                        <div class="input-field">
                            <label>Time</label>


                            <asp:DropDownList ID="txtTime" runat="server"  Height="45px">
                                <asp:ListItem>8.00 am - 9.30 am</asp:ListItem>
                                <asp:ListItem>9.30 am - 10.30 am</asp:ListItem>
                                <asp:ListItem>10.30 am - 11.30 am</asp:ListItem>
                                <asp:ListItem>11.30 am - 12.30pm</asp:ListItem>
                                <asp:ListItem>1.30 pm - 2.30 pm</asp:ListItem>
                                <asp:ListItem>2.30 pm - 3.30 pm</asp:ListItem>
                                <asp:ListItem>3.30 pm - 4.30 pm</asp:ListItem>
                            </asp:DropDownList>
   
                        </div>

                        <div class="input-field">
                            <label>Dose</label>
                            
                            <asp:DropDownList ID="txtDose" runat="server" Height="45px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>

                    <button class="btn">
                        <asp:Button ID="btnRegister" runat="server" Text="Submit" BackColor="Blue" ForeColor="White" Height="41px" Width="273px" OnClick="btnRegister_Click"   />
                    </button>
                </div>
            </div>
        </form>
    </div>
    </form>
</body>
</html>
