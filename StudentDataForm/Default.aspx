<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentDataForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
                    <ASP:RequiredFieldValidator ControlToValidate="L_username"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserName" />

                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="L_password" runat="server"></asp:TextBox>
                    <ASP:RequiredFieldValidator ControlToValidate="L_password"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserPass" />

                    <asp:Label ID="Label7" runat="server" Text="Persistent Cookie:"></asp:Label>
                    <ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" />
                    <asp:Button ID="Login" runat="server" Text="Log-in" OnClick="Login_Click"/>
                </asp:View>
        </asp:MultiView>
    </div>

</asp:Content>
