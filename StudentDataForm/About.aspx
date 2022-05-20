<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentDataForm.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
<div class="jumbotron">
    <asp:Label ID="Label1" runat="server" Text="" Visible="false" BackColor="Black" Font-Bold ForeColor="White" Font-Size="X-Large"></asp:Label>
</div>
    <asp:Label ID="AdressList" runat="server" Text="Adress"></asp:Label>
    <asp:DropDownList ID="CountryList" runat="server" OnSelectedIndexChanged="CountryList_SelectedIndexChanged"
        DataValueField="CountryId" DataTextField="CountryName" AutoPostBack="true"></asp:DropDownList>
    <asp:DropDownList ID="StateList" runat="server" OnSelectedIndexChanged="StateList_SelectedIndexChanged"
        DataValueField="StateId" DataTextField="StateName" AutoPostBack="true"></asp:DropDownList>
    <asp:DropDownList ID="CityList" runat="server" OnSelectedIndexChanged="CityList_SelectedIndexChanged"
        DataValueField ="CityId" DataTextField="CityName" AutoPostBack="true"></asp:DropDownList>
    <div class="jumbotron">
        
        <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label><br/>
        <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="Gender"/>
        <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender"/>
        <asp:RadioButton ID="Unknown" runat="server" Text="Unknown" GroupName="Gender"/>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Education"></asp:Label><br/>
        <asp:Label ID="Label4" runat="server" Text="Diploma"></asp:Label>
            <asp:CheckBox runat="server" ></asp:CheckBox>
        <asp:Label ID="Label5" runat="server" Text="Graduation"></asp:Label>
            <asp:CheckBox runat="server"></asp:CheckBox>
        <asp:Label ID="Label6" runat="server" Text="PostGraduation"></asp:Label>
            <asp:CheckBox runat="server"></asp:CheckBox>
       
        
    </div>
</asp:Content>
