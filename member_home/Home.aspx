<%@ Page Title="AGV Travels application" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DsodAsgmnt5._Default" %>
<%@ Register TagPrefix="dateTimeUserControl" TagName="DateTimeUserControl" Src="~/DateTimeUserControl.ascx" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!-- <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Holiday Destination-Travel Package Booking System</h1>
            </hgroup>
        </div>
    </section> -->
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <dateTimeUserControl:DateTimeUserControl ID="DateTime" runat="server" /> 
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Height="40px" Text="Login" Width="90px" OnClick="Button1_Click" />
    &nbsp;<asp:Button ID="Button2" runat="server" Height="40px" Text="Register" Width="111px" OnClick="Button2_Click" />
    &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Height="40px" Text="Logout" Width="90px" OnClick="Button6_Click" />
    </p>
    <p class="auto-style4">
    <p class="auto-style4">
        Hello
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        ,</p>
    <p class="auto-style1">
        Welcome to the hotel finder! Now booking hotel rooms in bult is just a click away.
    </p>
        <p class="auto-style1">
            1. Search for hotels</p>
        <p class="auto-style1">
            2. Find best prices</p>
        <p class="auto-style1">
            3. Add hotel rooms to cart and check out!</p>
    <p class="auto-style4">
        The main objective of this service is to enable dealers to book multiple hotel rooms at a time. This system has the following users:</p>
        <p class="auto-style4">
            Members: The members of this system are hotel dealers who can book hotel rooms.</p>
        <p class="auto-style4">
            Staff and Managers: They are the working members of the system who can view/modify orders and already existing members of the application.</p>
        <p class="auto-style4">
            Admin: The admin has privileges to add/ remove members of the system. </p>
        <p class="auto-style4">
            In this application, the hotelFinder tool will intelligently search for suitable hotels near the given area and returns a list of top hotels. The members can compare the hotels an book the desired hotel rooms. The hotels will be added to the cart which will be visible to the user. </p>
        <p class="auto-style4">
            To start, click on the login button at the top of this page.</p>
        <p class="auto-style4">
            &nbsp;</p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
            font-size: large;
        }
        .auto-style4 {
            text-align: justify;
            font-size: large;
            font-family: "Times New Roman", serif;
        }
        </style>
</asp:Content>

