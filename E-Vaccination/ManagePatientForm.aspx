<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePatientForm.aspx.cs" Inherits="E_Vaccination.ManagePatientForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="Stylesheet" href="ManagePatientStyle.css" />
</head>
<body>
         <div class="container">
        <nav>
            <ul>
                <li><a class="logo">
                    <img src="Photos/photo3.png">
                    <span class="nav-iten">Admin Dashboard</span>
                </a></li>
                <li><a href="ManageVaccinesForm.aspx">
                    <i class="uil uil-syringe"></i>
                    <span class="nav-item">Manage Vaccines</span>
                </a></li>
                <li><a href="ManagePatientForm.aspx">
                    <i class="uil uil-head-side"></i>
                    <span class="nav-item">Manage Patients</span>
                </a></li>
                <li><a href="ManageVaccineCenterForm.aspx">
                    <i class="uil uil-estate"></i>
                    <span class="nav-item">Manage Vaccine Center</span>
                </a></li>
                <li><a href="PatientReportForm.aspx">
                    <i class="uil uil-file-graph"></i>
                    <span class="nav-item">Patients Report</span>
                </a></li>
                <li><a href="VaccineReportForm.aspx">
                    <i class="uil uil-file-medical-alt"></i>
                    <span class="nav-item">Vaccien Report</span>
                </a></li>
                <li><a href="HomePage.aspx" class="logout">
                    <i class="uil uil-sign-out-alt"></i>
                    <span class="nav-item">Log Out</span>
                </a></li>
            </ul>
        </nav>

        <section class="main">
            <div class="main-top">

        <form action="#">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal Details</span>

                     <form id="form1" runat="server">
                    <div class="fields">
                        <div class="input-field">
                            <label>NIC</label>
                            <asp:TextBox ID="txtNIC" runat="server" placeholder="Enter your NIC" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Full Name</label>
                            <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Phone Number</label>
                            <asp:TextBox ID="txtNumber" runat="server" placeholder="Enter your phone number" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Age</label>
                             <asp:TextBox ID="txtAge" runat="server" placeholder="Enter your age" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Address</label>
                           <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter your address" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            
                            <asp:TextBox ID="txtGender" runat="server" placeholder="Enter your gender" ></asp:TextBox>

                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Vaccination Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Vaccine Name</label>

                            <asp:TextBox ID="txtVName" runat="server" placeholder="Enter your vaccine name" ></asp:TextBox>
                          
                        </div>

                        <div class="input-field">
                            <label>VC Location</label>
                              <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter your location" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Vaccination Date</label>
                           <asp:TextBox ID="txtDate" runat="server" placeholder="Enter your date" ></asp:TextBox>
                            
                        </div>

                        <div class="input-field">
                            <label>Time</label>
                           <asp:TextBox ID="txtTime" runat="server" placeholder="Enter your time" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Dose</label>
                           <asp:TextBox ID="txtDose" runat="server" placeholder="Enter your dose" ></asp:TextBox>                        
                        </div>
                    </div>
                    <button class="btn">
                        
                        <asp:Button ID="btnSearch" runat="server" Text="Search" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnSearch_Click"/>
                    </button>
                    <button class="btn1">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnUpdate_Click"/>
                    </button>
                    <button class="btn2">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnDelete_Click"/>
                    </button>
                </div>
            </div>
        </form>
        </div>
    </section>
    </div>
    </form>
</body>
</html>
