<%@ Page Title="Campingplads" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CampingPlads.Index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Style/Style.css" rel="stylesheet">

	<!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Bootstrap Css-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


	<!-- Font Awesome -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
	<!-- MDB -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="stylesheet"/>

	<!-- MDB Script -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<!-- Style added in html to make it work in chrome -->
		<!-- Header -->
		<div class="crop-head">
		    <img class="header-img" src="./Images/header-img.jpg" style="margin-top: -400px; margin-left: -80px;" />
			<a href="../Booking/Booking.aspx"><button type="button" class="btn btn-success btn-rounded btn-pos btn-lg" style="position:absolute !important">Bestil din campingferie</button></a>
		</div>
		<!-- Info om CampingPladsen -->
		<div class="center-text">
			<h2>Camping I Midt-Jylland</h2>
			<p class="info-text">Velkommen til Campingpladsen! Vi er beliggende ved Danmarks bedste badestrande,
				og pladsens meget høje standard giver de bedste muligheder for en vellykket ferie på vores 
				campingplads i Midt-Jylland.​</p><br/>

			<p>Uanset om I kommer med telt, camplet eller campingvogn, er der plads til jer. 
				Det er også muligt at leje en hyggelig og bekvemmelig <a href="/Pladser/Hytter.aspx"><u>feriehytte</u></a> til en god pris. 
				Vi er beliggende på Midt-Jylland, ved den fine Dueodde Strand.​ 
				Beliggenheden ved en af Danmarks bedste badestrande og pladsens meget høje standard, 
				giver Dem de bedste muligheder for en vellykket campingferie i Midt-Jylland, 
				hvad enten I kommer med telt, camplet, campingvogn 
				- eller vælger at leje en af vores hyggelige hytter.</p>
		</div>

		<!-- Bootstrap Cards -->
		<div class="row" style="width:60%; margin:auto;">
			<!-- Om Campingpladsen -->
			<div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
				<img src="/Images/Campingpladsen.jpg" class="card-img" alt="Om Campingpladsen" style="max-height:195px; overflow:hidden;">
				<div class="card-img-overlay">
					<a class="card-img-overlay" href="../Campingpladsen.aspx"></a>
					<h5 class="card-title">Campingpladsen</h5>
				</div>
			</div>
			<!-- Priser -->
			<div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
				<img src="/Images/Plads.jpg" class="card-img" alt="Priser" style="max-height: 195px; overflow:hidden;">
				<div class="card-img-overlay">
					<a class="card-img-overlay" href="../Priser.aspx"></a>
					<h5 class="card-title">Priser</h5>
				</div>
			</div>
			<!-- Hytter -->
			<div class="col-sm card text-white bg-img hover-zoom" style="max-height: 200px;">
				<img src="/Images/Hytte.jpg" class="card-img" alt="Hytter" style="max-height: 195px; overflow:hidden;">
				<div class="card-img-overlay">
					<a class="card-img-overlay" href="../Pladser/Hytter.aspx"></a>
					<h5 class="card-title">Hyggelige Hytter</h5>
				</div>
			</div>
		</div>
</asp:Content>
