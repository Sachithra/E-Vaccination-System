<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PatientLoginForm.aspx.cs" Inherits="E_Vaccination.PatientLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title>Login</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="Stylesheet" href="PatientLoginStyle1.css" />
</head>

<body>
     <form id="form1" runat="server"> 
    
    <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>

                <form action="#">
                    <div class="input-field">

                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email" required></asp:TextBox>

                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">

                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter your Password" required TextMode="Password"></asp:TextBox>

                        <i class="uil uil-lock icon"></i>
                    </div>
                    <div class="input-field button">

                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                    </div>
                    <div class="login-signup">
                        <span class="text">Not a member
                            <a href="RegisterPatientForm.aspx" class="text singup-text">Signup Now</a>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <img src="Photos/img.png" class="img">
    </form>
</body>
</html>
