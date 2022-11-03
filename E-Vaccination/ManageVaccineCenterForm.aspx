<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageVaccineCenterForm.aspx.cs" Inherits="E_Vaccination.ManageVaccineCenterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="Stylesheet" href="ManageVaccineCenterStyle.css" />
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
                    <span class="title">Vaccines Center Details</span>
                    <form id="form1" runat="server">
                    <div class="fields">
                        <div class="input-field">
                            <label>Vaccine Center No</label>
                            <asp:TextBox ID="txtVCNo" runat="server" placeholder="Enter center number" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password" TextMode="Password" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Location</label>
                            <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter location" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Doctor Name</label>
                           <asp:TextBox ID="txtDName" runat="server" placeholder="Enter doctor name" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Doctor ID</label>
                            <asp:TextBox ID="txtDID" runat="server" placeholder="Enter doctor id" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Office Number</label>
                            <asp:TextBox ID="txtONumber" runat="server" placeholder="Enter office number" ></asp:TextBox>
                        </div>

                    </div>
                </div>

                    <button class="btn">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnAdd_Click" />
                    </button>
                    <button class="btn1">
                        <asp:Button ID="btUpdate" runat="server" Text="Update" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btUpdate_Click"  />
                    </button>
                    <button class="btn2">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnDelete_Click" />
                    </button>
                    <button class="btn3">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnSearch_Click" />
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
