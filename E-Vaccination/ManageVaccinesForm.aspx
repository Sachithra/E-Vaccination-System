<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageVaccinesForm.aspx.cs" Inherits="E_Vaccination.ManageVaccinesForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="Stylesheet" href="ManageVaccinesStyle1.css" />
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
                <header>Vaccines</header>

        <form action="#">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Vaccines Details</span>

                    <form id="form1" runat="server"> 

                    <div class="fields">
                        <div class="input-field">
                            
                            <label>Vaccine No</label>
                            
                            <asp:TextBox ID="txtVNo" runat="server" placeholder="Enter Vaccine No" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Vaccine Name</label>
                       
                            <asp:TextBox ID="txtVName" runat="server" placeholder="Enter Vaccine Name" ></asp:TextBox>                     
                        </div>

                        <div class="input-field">
                            <label>Manufacturing Date</label>

                            <asp:TextBox ID="txtMDate" runat="server" placeholder="DD/MM/YYY" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Expiration Date</label>
                            
                             <asp:TextBox ID="txtEDate" runat="server" placeholder=" DD/MM/YYY" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Quantity</label>
                           
                            <asp:TextBox ID="txtQuantity" runat="server" placeholder="Enter the quantity" ></asp:TextBox>
                        </div>

                        <div class="input-field">
                            <label>Price</label>
                            
                            <asp:TextBox ID="txtPrice" runat="server" placeholder="Enter the Prices" ></asp:TextBox>
                        </div>
                    </div>
                </div>

                    
                    <button class="btn">
                        
                        <asp:Button ID="btnAdd" runat="server" Text="ADD" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnAdd_Click" />

                    </button>
                    <button class="btn1">
                        <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnUpdate_Click" />
                    </button>
                    <button class="btn2">
                         <asp:Button ID="btnDelete" runat="server" Text="DELETE" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnDelete_Click" />
                    </button>
                    <button class="btn3">
                         <asp:Button ID="btnSearch" runat="server" Text="SEARCH" Height="42px" Width="197px" BackColor="#3333FF" ForeColor="White" OnClick="btnSearch_Click" />
                    </button>
                </div>
            </div>
        </form>
      </div>
    </section>
  </div>
</body>
</html>
