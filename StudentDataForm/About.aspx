<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentDataForm.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
        
    </script>
    <h2><%: Title %>.</h2>
    <h3>Registration Page</h3>
    <p>
        College Choice helps students and their families find the college program that meets their needs.

Our resources include college rankings, lists of the best colleges by state, and program rankings at the undergraduate and graduate levels. These rankings use a custom methodology that takes a student-centered approach. By weighing factors like median student debt and average graduate salaries, our rankings help prospective students make informed choices.
    </p>
    <div class="jumbotron">
        <asp:Label ID="Label1" runat="server" Text="" Visible="false" BackColor="Black" ForeColor="White" Font-Size="X-Large"></asp:Label>
    </div>
    <div class="jumbotron col-12 bg-dark text-white">

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="col-sm-5 mx-auto">
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-3 row-margin-05">
                                <asp:Label ID="AdressList" runat="server" Text="Adress"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 row-margin-05">
                                <asp:DropDownList ID="CountryList" runat="server" OnSelectedIndexChanged="CountryList_SelectedIndexChanged"
                                    DataValueField="CountryId" DataTextField="CountryName" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 row-margin-05">
                                <asp:DropDownList ID="StateList" runat="server" OnSelectedIndexChanged="StateList_SelectedIndexChanged"
                                    DataValueField="StateId" DataTextField="StateName" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 row-margin-05">
                                <asp:DropDownList ID="CityList" runat="server" OnSelectedIndexChanged="CityList_SelectedIndexChanged"
                                    DataValueField="CityId" DataTextField="CityName" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>

                <div class="col-sm-5 mx-auto">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="row">
                                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label><br />
                                <div class="row">
                                    <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="Gender" />
                                </div>
                                <div class="row">
                                    <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender" />
                                </div>
                                <div class="row">
                                    <asp:RadioButton ID="Unknown" runat="server" Text="Unknown" GroupName="Gender" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="row">
                                <asp:Label ID="Label3" runat="server" Text="Education"></asp:Label><br />
                                <div class="row">
                                    <asp:Label ID="Label4" runat="server" Text="Diploma"></asp:Label>
                                    <asp:CheckBox runat="server" ID="diploma"></asp:CheckBox>
                                </div>
                                <div class="row">
                                    <asp:Label ID="Label5" runat="server" Text="Graduation"></asp:Label>
                                    <asp:CheckBox runat="server" ID="be"></asp:CheckBox>
                                </div>
                                <div class="row">
                                    <asp:Label ID="Label6" runat="server" Text="PostGraduation"></asp:Label>
                                    <asp:CheckBox runat="server" ID="Pg"></asp:CheckBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="row row-margin-05">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-3">
                            <asp:Label ID="Label7" runat="server" Text="Full Name"></asp:Label>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="Fullname" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row row-margin-05">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-3">
                            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row row-margin-05">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-3">
                            <asp:Label ID="Label9" runat="server" Text="Mobile No."></asp:Label>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="MobileNo" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            ControlToValidate="MobileNo" runat="server"
                            ErrorMessage="Only Numbers allowed"
                            ValidationExpression="^\d{10}$">
                        </asp:RegularExpressionValidator>
                    </div>
                    <div class="row row-margin-05">
                        <div class="col-lg-12">
                            <asp:Button ID="Submit" runat="server" Text="Submit Details" OnClick="Submit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
