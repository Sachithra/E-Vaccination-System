<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="DepartmentLoginForm.aspx.cs" Inherits="E_Vaccination.DepartmentLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="Stylesheet" href="DepartmentLoginFormStyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>
                <form action="#">
                    <div class="input-field">
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your Username" required></asp:TextBox>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">

                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter your Password" required TextMode="Password"></asp:TextBox>
                        <i class="uil uil-lock icon"></i>
                    </div>
                    <div class="input-field button">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>                  
                </form>
            </div>
        </div>
    </div>
    <img src="Photos/img.png" class="img">
    </form> 
    </form>
</body>
</html>
