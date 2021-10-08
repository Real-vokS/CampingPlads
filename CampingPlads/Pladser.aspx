<%@ Page Title="Pladser" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Pladser.aspx.cs" Inherits="CampingPlads.Pladser.Pladser" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
	<link href="./Style/Style.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<!-- Style added in html to make it work in chrome -->
		<!-- Header -->
		<div class="crop-head">
		    <img class="header-img" src="./Images/header-img.jpg" style="margin-top: -400px; margin-left: -80px;" />
		</div>

		

		<div class="container">
			<div class="row">
				<div class="col crop">
                <img src="./Images/Pladser.jpg" class="shadow p-3 mb-5 bg-body rounded" style="margin-top: 11px; margin-left: -100px;" />
				</div>
				<div class="col order-5 crop">
                <img src="./Images/Hytter.jpg" class="shadow p-3 mb-5 bg-body rounded" style="margin-top: -59px; margin-left: -100px;" />
				</div>
				<div class="col order-1 crop">
                <img src="./Images/Campingplads.jpg" class="shadow p-3 mb-5 bg-body rounded" style="margin-top: -240px; margin-left: -100px;" />
				</div>
			</div>
		</div>

        <div>

			<p>pog</p>
        </div>
</asp:Content>
