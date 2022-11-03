<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaccineCenterPatientReportForm.aspx.cs" Inherits="E_Vaccination.VaccineCenterPatientReportForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="Stylesheet" href="VaccineCenterPatientReportStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
        <nav>
            <ul>
                <li><a class="logo">
                    <img src="Photos/photo4.png">
                    <span class="nav-iten">V Center Dashboard</span>
                </a></li>
                
                <li><a href="VaccineCenterDashboardForm.aspx">
                    <i class="uil uil-head-side"></i>
                    <span class="nav-item">Manage Patients</span>
                </a></li>
                
                <li><a href="VaccineCenterPatientReportForm.aspx">
                    <i class="uil uil-file-graph"></i>
                    <span class="nav-item">Patients Report</span>
                </a></li>
                
                <li><a href="HomePage.aspx" class="logout">
                    <i class="uil uil-sign-out-alt"></i>
                    <span class="nav-item">Log Out</span>
                </a></li>
            </ul>
        </nav>   
             <section class="main">  
                <h1>Patient Report</h1>
                 <br />  <br />  <br /> 
            <center>
        <table>
            <tr>
                <td>
             <asp:Chart ID="Chart1" runat="server">
             <Series>
             <asp:Series Name="Patient"></asp:Series>
            </Series>
            <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
                </td>
            </tr>
            </table>
                <br /> <br />
                <table>
            <tr>                
                <td>
                    
        <asp:Button ID="btnBar" runat="server" Text="Bar Chart" Height="42px" Width="150px" BackColor="#3333FF" ForeColor="White" OnClick="btnBar_Click"   />
        <asp:Button ID="btnPie" runat="server" Text="Pie Chart" Height="42px" Width="150px" BackColor="#3333FF" ForeColor="White" OnClick="btnPie_Click"  />
        <asp:Button ID="btnArea" runat="server" Text="Area Chart" Height="42px" Width="150px" BackColor="#3333FF" ForeColor="White" OnClick="btnArea_Click"  />
        <asp:Button ID="btnLine" runat="server" Text="Line Chart" Height="42px" Width="150px" BackColor="#3333FF" ForeColor="White" OnClick="btnLine_Click"  />

            </td>
            </tr>
        </table>
        </center> 

            <br />  <br />  <br /> 


            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="4">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
             
        </section>
    </div>
    </form>
</body>
</html>
