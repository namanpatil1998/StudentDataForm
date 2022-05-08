<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="StudentDataForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" BorderColor="#FF3300" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style1" ForeColor="White" OnClick="Button1_Click" Text="Back to form" />
    <p>
        &nbsp;
    </p>
        <div class="formrow">
            <div class="label1">
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Error Message" BackColor="Yellow" Font-Bold ForeColor="red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
