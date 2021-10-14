<%@ Page Title="Om Campingpladsen" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Campingpladsen.aspx.cs" Inherits="CampingPlads.Campingplads" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Bootstrap Css-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="stylesheet" />

    <!-- MDB Script -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
    <link href="/Style/Style.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Style added in html to make it work in chrome -->
    <!-- Header -->
    <div style="width:100%; height:350px; overflow:hidden">
        <img class="header-img" src="/Images/header-img.jpg" style="margin-top: -500px; margin-left: -80px;" />
    </div>



    <div class="container">
        <div style="width: 60%; margin: auto; margin-top: 2%;">
            <h2 style="text-align: center">En fed ferie</h2>
            <p>
                Beliggenheden ved Lalandia, Givskud Zoo og ikke mindst Legoland, giver vores campere de bedste muligheder for en vellykket campingferie.
					Hvad enten I kommer med telt, camplet, campingvogn 
					- eller vælger at leje en af vores hyggelige hytter, så får I den bedste form for campingferie. 
					I vores lille minimarked, bager vi hver morgen frisk morgenbrød og kan tilbyde et stort udvalg af dagligvarer og ikke mindst kolde is til de varme sommerdage.
					<br />
                <br />
                Vores skønne swimmingpool med børnebassin er åben fra ultimo maj til primo september. 
					Swimmingpoolen kan være lukket under dårlige vejrforhold. 
					For børnene er der en dejlig legeplads, med et stort klatretårn, kæmpe hoppepude og "Moon-cars" i forskellige størrelser. 
					På pladsen er der en fodboldbane, samt en fin tennisbane med kunstgræs. 
					I den omkringliggende natur er der rige aktivitets muligheder for hele familien, 
					hvad enten man er til traveture eller cykelture ad de fine cykelveje som findes i området. 
					Har I ikke selv cykler med, har vi cykeludlejning på campingpladsen.
            </p>
        </div>

        <!-- Bootstrap Cards -->
        <div class="row" style="margin: auto; margin-top: 2%;">
            <!-- Givskud Zoo -->
            <div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
                <img src="/Images/Givskud.jpg" class="card-img" alt="Givskud Zoo" style="max-height: 195px; overflow: hidden;">
                <div class="card-img-overlay">
                    <a class="card-img-overlay" href="https://www.givskudzoo.dk/"></a>
                    <h5 class="card-title" style="text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;">Givskud Zoo</h5>
                </div>
            </div>
            <!-- Lalandia -->
            <div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
                <img src="/Images/lalandia.jpg" class="card-img" alt="Lalandia" style="max-height: 195px; overflow: hidden;">
                <div class="card-img-overlay">
                    <a class="card-img-overlay" href="https://www.lalandia.dk/da-dk/billund"></a>
                    <h5 class="card-title" style="text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;">Lalandia</h5>
                </div>
            </div>
            <!-- Legoland -->
            <div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
                <img src="/Images/legoland.jpg" class="card-img" alt="LegoLand" style="max-height: 195px; overflow: hidden;">
                <div class="card-img-overlay">
                    <a class="card-img-overlay" href="https://www.legoland.dk" target="_blank" ></a>
                    <h5 class="card-title" style="text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;">Legoland</h5>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
