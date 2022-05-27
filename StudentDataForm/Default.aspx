<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentDataForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
        <img src="Images/pexels-pixabay-207691.jpg" />
      <div class="carousel-caption">
        <h3>Classrooms</h3>
        <p>Classroom and Friends is always so much fun!</p>
      </div>
    </div>

    <div class="item">
        <img src="Images/pexels-pixabay-256455.jpg" />
      <div class="carousel-caption">
        <h3>Library</h3>
        <p>Devotional place to magnify your auro!</p>
      </div>
    </div>

    <div class="item">
        <img src="Images/pexels-pixabay-261651.jpg"/>
      <div class="carousel-caption">
        <h3>Curriculam</h3>
        <p>We love the Technology Stack!</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>