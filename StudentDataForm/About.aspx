﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentDataForm.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
<div class="jumbotron">
    <asp:Label ID="Label1" runat="server" Text="" Visible="false" BackColor="Black" Font-Bold ForeColor="White" Font-Size="X-Large"></asp:Label>
</div>
</asp:Content>
