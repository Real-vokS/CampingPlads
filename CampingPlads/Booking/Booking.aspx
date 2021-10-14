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

    <script type="text/javascript">
        function showModal() {
            $("#Modal").modal('show');
        }

        $(function () {
            $("#Button1").click(function () {
                showModal();
            });
        });
    </script>
</asp:Content>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <div class="d-flex justify-content-center" style="margin-top: 20px;">
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

                        <!-- Plads valg -->
                        <div class="form-row" style="width: 42%; margin-top: 25px;">
                            <div class="form-group">
                                <!-- Plads type valg -->
                                <asp:Label Text="Vælg En Plads Type: " runat="server" />
                                <asp:DropDownList ID="DropDown" runat="server" OnSelectedIndexChanged="DropDown_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem Value="Lille Plads">Lille Plads</asp:ListItem>
                                    <asp:ListItem>Stor Plads</asp:ListItem>
                                    <asp:ListItem>Normal Hytte</asp:ListItem>
                                    <asp:ListItem>Luksus Hytte</asp:ListItem>
                                </asp:DropDownList>

                                <!--plads valg -->
                                <div>
                                    <asp:Label ID="Test" Text="Vælg din plads: " runat="server" />
                                    <asp:DropDownList ID="PladsDropDownList" runat="server" AutoPostBack="True"></asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <!-- Badeland barn -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Adgang til badeland barn Pr. dag: " runat="server" />
                                <br />
                                <asp:TextBox type="number" ID="BadelandBarn" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="badelandBarn_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="BadelandBarnLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Badeland voksen -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Adgang til badeland voksen Pr. dag: " runat="server" />
                                <asp:TextBox type="number" ID="BadelandVoksen" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="badelandVoksen_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="BadelandVoksenLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Cykel leje -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Cykel leje antal dage: " runat="server" />
                                <asp:TextBox type="number" ID="CykelLeje" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="cykelLeje_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="CykelLejeLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Kano leje -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Kano leje antal dage: " runat="server" />
                                <asp:TextBox type="number" ID="KanoLeje" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="kanoLeje_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="KanoLejeLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Kajak leje -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Kajak leje antal dage: " runat="server" />
                                <asp:TextBox type="number" ID="KajakLeje" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="kajakLeje_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="KajakLejeLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Sengelinned leje -->
                        <div class="form-row">
                            <div class="form-group col-3">
                                <asp:Label Text="Antal sengelinned Pr. Ophold: " runat="server" />
                                <br />
                                <asp:TextBox type="number" ID="SengelinnedLeje" runat="server" value="0" min="0" Style="width: 50px;" OnTextChanged="sengelinnedLeje_TextChanged" AutoPostBack="True" />
                                <asp:Label Text="Pris: 0 kr. " ID="SengelinnedLejeLabel" runat="server" />
                            </div>
                        </div>

                        <!-- Slut rengøring checkbox -->
                        <div class="form-row">
                            <div class="form-group col-4">
                                <asp:Label Text="Slut rengøring: " runat="server" />
                                <asp:CheckBox ID="CleaningCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="CleaningCheckBox_CheckedChanged" />
                                <asp:Label Text="Pris: 0 kr. " ID="CleaningLabel" runat="server" />
                            </div>
                        </div>


                        <!-- Submit button -->
                        <div class="form-row" style="margin-top: 25px;">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Resever plads" CssClass="btn btn-primary" OnClick="Submit_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="Reservation" id="exampleModalLabel">Reservation</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="TakKunde" Text="" runat="server" />
                                    <br />
                                    <asp:Label ID="Bestilt" Text="" runat="server" />
                                </div>
                                <div class="modal-footer">
                                    <asp:Button ID="CloseModal" runat="server" Text="Close" CssClass="btn btn-secondary" OnClick="Close_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Kunde Form-->
                    <div class="col" style="margin-top: 2%;">
                        <!-- First Name And Last Name -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputFirstName">Fornavn</label>
                                <input type="text" runat="server" id="inputFirstName" class="form-control" placeholder="Fornavn">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLastName">Efternavn</label>
                                <input type="text" runat="server" id="inputLastName" class="form-control" placeholder="Efternavn">
                            </div>
                        </div>

                        <!-- Email And Phone Number -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail">Email</label>
                                <input type="text" runat="server" class="form-control" id="inputEmail" placeholder="Email">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputNumber">Tlf. Nr.</label>
                                <input type="text" runat="server" class="form-control" id="inputPhoneNumber" placeholder="Tlf. Nr.">
                            </div>
                        </div>

                        <!-- Address -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Adresse</label>
                                <input type="text" runat="server" class="form-control" id="inputAddress" placeholder="1234 Main St">
                            </div>
                        </div>

                        <!-- city -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">By</label>
                                <input type="text" runat="server" class="form-control" id="inputCity">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>





</asp:Content>
