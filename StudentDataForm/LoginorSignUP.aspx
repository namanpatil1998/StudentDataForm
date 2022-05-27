<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginorSignUP.aspx.cs" Inherits="StudentDataForm.LoginorSignUP" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title><%: Page.Title %> - Student Registration Form</title>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <style>
        .row-margin-05 {
            margin-top: 0.5em;
        }

        .row-margin-10 {
            margin-top: 1.0em;
        }

        .row-margin-20 {
            margin-top: 2.0em;
        }

        .row-margin-30 {
            margin-top: 3.0em;
        }
    </style>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        <div class="container bg-secondary text-white">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <div class="jumbotron">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="SignupView" runat="server">
                                <div class="row row-margin-05" >
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="confirmPassword" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label6" runat="server" Text="Email-Id"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-2">
                                        <asp:Button ID="SignUp" class="bg-primary" runat="server" Text="Sign-Up" OnClick="SignUp_Click" />
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="LoginPage" class="bg-primary" runat="server" Text="Log-in" OnClick="LoginPage_Click" />
                                    </div>
                                </div>
                            </asp:View>

                            <asp:View ID="LoginView" runat="server">
                                <div class="row row-margin-05">
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="L_username" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ControlToValidate="L_username"
                                        Display="Static" ErrorMessage="*" runat="server"
                                        ID="vUserName" />
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-3">
                                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="L_password" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ControlToValidate="L_password"
                                        Display="Static" ErrorMessage="*" runat="server"
                                        ID="vUserPass" />
                                </div>
                                <div class="row row-margin-05">
                                    <div class="col-sm-2">
                                        <asp:Label ID="Label7" runat="server" Text="Persistent Cookie:"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" />
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="Login" runat="server" class="bg-primary" Text="Log-in" OnClick="Login_Click" />
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>



                </div>
            </div>
            <
        </div>
    </form>
</body>
</html>
