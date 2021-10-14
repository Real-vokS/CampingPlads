<%@ Page Title="Pladser" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Pladser.aspx.cs" Inherits="CampingPlads.Pladser.Pladser" %>


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

    <link href="/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <script type="text/javascript" src="/js/bootstrap-datepicker.min.js"></script>

    <!-- MDB Script -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
    <link href="./Style/Style.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Style added in html to make it work in chrome -->
    <!-- Header -->
    <div style="width: 100%; height: 350px; overflow: hidden">
        <img class="header-img" src="/Images/header-img.jpg" style="margin-top: -500px; margin-left: -80px;" />
    </div>



    <div class="container">
        <div style="width: 60%; margin: auto; margin-top: 2%;">
            <h2 style="text-align: center">Vælg mellem en hytte eller en plads</h2>
            <p>
                Du kan vælge mellem en af vores hyggelige hytter eller en campingplads.
            </p>
            <h5>Hytter</h5>
            <p>Du har mulighed for at leje mellem 2 forskellige hytter, Vores normale Hytter eller Luksus hytter.
            </p>
            <h6>Normal Hytte</h6>
            <p>Vores normale hytte består af 16 m<sup>2</sup>. Som en familie på 4 personer kan leje,
                hytten bliver rengjort før i ankommer. I hytten er der et fint lille køkken, spisestue, bad og 2 værelser</p>
            <h6>Luksus Hytte</h6>
            <p>Vores luksus hytte består af 20 m<sup>2</sup>. Som en familie på 6 kan leje,
                hytten bliver rengjort før i ankommer. I hytten er der et fint lille køkken, spisestue, bad og 3 værelser.
                samt hurtig adgang til stien mod søen.</p>
            <h6>Lille plads</h6>
            <p>Vores lille består af 12 m<sup>2</sup>. Som har plads til autocamper, campingvogn.
                strøm medfølges til pladsen, bare spørg i receptionen når i ankommer om at få tændt for den.
            </p>
            <h6>Stor plads</h6>
            <p>Vores lille består af 16 m<sup>2</sup>. Som har plads til autocamper, campingvogn.
                strøm medfølges til pladsen, bare spørg i receptionen når i ankommer om at få tændt for den.
            </p>
                
        </div>
    </div>
</asp:Content>
