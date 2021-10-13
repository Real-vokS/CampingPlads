<%@ Page Title="Booking" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="CampingPlads.Booking.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Style/Style.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
</asp:Content>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <div class="d-flex justify-content-center" style="margin-top: 10px;">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">
                    Vis kort over pladser
                </button>

                <!-- Modal -->
                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <img src="/Images/Kort.png" alt="Kort Over Campingplads" style="height: auto; width: 100%;" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col">
                        <!-- StartDate Calendar and Textbox -->
                        <div class="form-row" style="margin-top: 5%;">
                            <div class="form-group" style="margin-top: 2%;">
                                <asp:Calendar ID="StartDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="StartDate_SelectionChanged" Width="350px" OnDayRender="StartDate_DayRender">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                                <asp:Label Text="Start Dato: " runat="server" />
                                <asp:TextBox ID="StartDateTextBox" CssClass="col-4 center-text" runat="server" Width="115px"></asp:TextBox>
                            </div>
                        </div>

                        <!-- EndDate Calendar and Textbox -->
                        <div class="form-row">
                            <div class="form-group" style="margin-top: 5%;">
                                <asp:Calendar ID="EndDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="EndDate_SelectionChanged" Width="350px" OnDayRender="EndDate_DayRender">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>

                                <asp:Label Text="Slut Dato: " runat="server" />
                                <asp:TextBox ID="EndDateTextBox" CssClass="col-4 center-text" runat="server" Width="115px"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row" style="width: 42%; margin-top: 25px;">
                            <div class="form-group">
                                <asp:Label Text="Vælg En Plads Type: " runat="server" />
                                <asp:DropDownList ID="DropDown" runat="server" OnSelectedIndexChanged="DropDown_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>Lille Plads</asp:ListItem>
                                    <asp:ListItem>Stor Plads</asp:ListItem>
                                    <asp:ListItem>Normal Hytte</asp:ListItem>
                                    <asp:ListItem>Luksus Hytte</asp:ListItem>
                                </asp:DropDownList>

                                <div>
                                    <asp:Label Text="Vælg din plads: " runat="server" />
                                    <asp:DropDownList ID="PladsDropDownList" runat="server" AutoPostBack="True"></asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <!-- Submit button -->
                        <div class="form-row" style="margin-top: 25px;">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Gå til tilbehør" CssClass="btn btn-primary" OnClick="Submit_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- Kunde Form-->
                    <div class="col" style="margin-top: 2%;">
                        <!-- First Name And Last Name -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputFirstName">First Name</label>
                                <input type="text" runat="server" id="inputFirstName" class="form-control" placeholder="First name">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLastName">Last Name</label>
                                <input type="text" runat="server" id="inputLastName" class="form-control" placeholder="Last name">
                            </div>
                        </div>

                        <!-- Email And Phone Number -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="email" runat="server" class="form-control" id="inputEmail" placeholder="Email">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputNumber">Phone Number</label>
                                <input type="text" runat="server" class="form-control" id="inputPhoneNumber" placeholder="Phone Number">
                            </div>
                        </div>

                        <!-- Address -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Address</label>
                                <input type="text" runat="server" class="form-control" id="inputAddress" placeholder="1234 Main St">
                            </div>
                        </div>

                        <!-- city -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City</label>
                                <input type="text" runat="server" class="form-control" id="inputCity">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
