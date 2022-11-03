<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPatientForm.aspx.cs" Inherits="E_Vaccination.RegisterPatientForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title>Register</title>
    <link rel="Stylesheet" href="RegisterPatientStyle.css"/>
</head>

<body>    
      <div class="wrapper">          
      <h2>Registration</h2>
      <form action="#">
             <form id="form1" runat="server"> 
        <div class="input-box">         
            <asp:TextBox ID="txtNIC" runat="server" placeholder="Enter your NIC" required></asp:TextBox>
        </div>
        <div class="input-box">
          <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email" required></asp:TextBox>
        </div>
        <div class="input-box">
          <asp:TextBox ID="txtNumber" runat="server" placeholder="Enter your Phone Number" required></asp:TextBox>
        </div>
        <div class="input-box">
          <asp:TextBox ID="txtPassword" runat="server"  placeholder="Enter your Password" required TextMode="Password"></asp:TextBox>
        </div>     
        <div class="input-box button">
          
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
              </form>
        <div class="text">
          <h3>Already have an account? <a href="PatientLoginForm.aspx">Login now</a></h3>
        </div>
    </form>
    </div>
</body>
</html>
