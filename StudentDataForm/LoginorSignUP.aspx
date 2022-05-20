<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginorSignUP.aspx.cs" Inherits="StudentDataForm.LoginorSignUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentRegistration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="jumbotron">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="SignupView" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>

                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                        <asp:TextBox ID="confirmPassword" runat="server"></asp:TextBox>

                        <asp:Label ID="Label6" runat="server" Text="Email-Id"></asp:Label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>

                        <asp:Button ID="SignUp" runat="server" Text="Sign-Up" OnClick="SignUp_Click" />
                        <asp:Button ID="LoginPage" runat="server" Text="Log-in" OnClick="LoginPage_Click" />
                    </asp:View>

                    <asp:View ID="LoginView" runat="server">
                        <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="L_username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="L_username"
                            Display="Static" ErrorMessage="*" runat="server"
                            ID="vUserName" />

                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="L_password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="L_password"
                            Display="Static" ErrorMessage="*" runat="server"
                            ID="vUserPass" />

                        <asp:Label ID="Label7" runat="server" Text="Persistent Cookie:"></asp:Label>
                        <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" />
                        <asp:Button ID="Login" runat="server" Text="Log-in" OnClick="Login_Click" />
                    </asp:View>
                </asp:MultiView>
            </div>



        </div>
    </form>
</body>
</html>
