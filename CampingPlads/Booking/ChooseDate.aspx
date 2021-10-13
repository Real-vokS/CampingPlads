<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="ChooseDate.aspx.cs" Inherits="CampingPlads.Booking.ChooseDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <link href="/Style/Style.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="stylesheet" />

    <!-- MDB Script -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="row">

                    <div class="col" style="width: 50%;">
                        <!-- StartDate Calendar and Textbox -->
                        <div class="form-row" style="margin-top: 5%;">
                            <div class="form-group" style="margin-left: 10%; margin-top: 2%;">
                                <asp:Calendar ID="StartDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="StartDate_SelectionChanged" Width="350px" OnDayRender="StartDate_DayRender">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                            </div>

                            <div class="form-group col-4" style="margin-left: 10%;">
                                <asp:Label Text="Start Dato: " runat="server" />
                                <asp:TextBox ID="StartDateTextBox" CssClass="col-4 center-text" runat="server" Width="101px"></asp:TextBox>
                            </div>
                        </div>

                        <!-- EndDate Calendar and Textbox -->
                        <div class="form-row">
                            <div class="form-group" style="margin-left: 10%; margin-top: 5%;">
                                <asp:Calendar ID="EndDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="EndDate_SelectionChanged" Width="350px" OnDayRender="EndDate_DayRender">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                            </div>

                            <div class="form-group col-4" style="margin-left: 10%;">
                                <asp:Label Text="Slut Dato: " runat="server" />
                                <asp:TextBox ID="EndDateTextBox" CssClass="col-4 center-text" runat="server" Width="101px"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row" style="width: 42%; margin-left: 10%; margin-top: 25px;">
                            <div class="form-group">
                                <asp:Label Text="Vælg En Plads Type: " runat="server" />
                                <asp:DropDownList ID="DropDown" runat="server">
                                    <asp:ListItem>Lille Plads</asp:ListItem>
                                    <asp:ListItem>Stor Plads</asp:ListItem>
                                    <asp:ListItem>Normal Hytte</asp:ListItem>
                                    <asp:ListItem>Luksus Hytte</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-row" style="margin-left: 10%; margin-top: 25px;">
                            <div class="form-group">
                                <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" />
                            </div>
                        </div>
                    </div>


                    <div class="col" style="width: 50%;">
                        <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="White" />
                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                    </div>

                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
