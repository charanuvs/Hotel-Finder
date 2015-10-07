<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="member_home.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hello
                <asp:Label ID="Label1" runat="server"></asp:Label>
                ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">logout</asp:LinkButton>
    </p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                Please enter then credentials of the new user 
    </p>
    <p>
                &nbsp;&nbsp;&nbsp;
                Enter Username
            </p>
    <p>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                Enter password</p>
    <p>
        &nbsp;&nbsp;&nbsp;
        <input id="Password1" type="password" runat="server"/></p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                Enter the role of the user:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Member</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Staff</asp:ListItem>
            <asp:ListItem>Manager</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                Enter the Email</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
</asp:Content>
