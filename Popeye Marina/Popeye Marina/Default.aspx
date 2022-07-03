<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Popeye_Marina._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="/Images/marina5.jpg" alt="marina">
                <div class="carousel-caption">
                    <h3>Our beautiful marina shot by a local photographer, Warren Keelan</h3>
                </div>
            </div>

            <div class="item">
                <img src="/Images/marina2.jpg" alt="beach">
                 <div class="carousel-caption">
                    <h3>Visit the world famous beaches in the area</h3>
                 </div>
            </div>

            <div class="item">
                <img src="/Images/marina1.jpg" alt="ocean">
                 <div class="carousel-caption">
                    <h3>Sail right into the stunning Pacific Ocean</h3>
                 </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
        </a>

        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
        </a>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <h2>About us</h2>
            <p>
                Popeye Marina is a privately owned corporation that rents boat slips and provides boat services on Olive Oyl Lakes, a large inland lake located in the Brutus area. Popeye is the largest of the three marinas on the lake.
            </p>
            <p>
                <a class="btn btn-primary" href="About.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our services</h2>
            <p>
                We offer boat hires, both powerboats and sailboats. We also offer slip hires for our customer's boats. 
            </p>
            <p>
                <a class="btn btn-primary" href="Services.aspx">Learn more &raquo;</a>
            </p>
        </div>
       <div class="col-md-4">
            <h2>Web service</h2>
            
       </div>
      </div>

</asp:Content>
