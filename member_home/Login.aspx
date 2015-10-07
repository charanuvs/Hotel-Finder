<%@ Page Title="Member Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DsodAsgmnt5.Login" %>
<%@ Register TagPrefix="dateTimeUserControl" TagName="DateTimeUserControl" Src="~/DateTimeUserControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <dateTimeUserControl:DateTimeUserControl ID="DateTime" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>
        <strong><span class="auto-style1">Member Login</span></strong>
    </p>
    <div>
    <table>
    <tr>
        <td>
        <p>
          Username:
        </p>
        </td>

        <td>
        <p>
          
            <asp:TextBox ID="Username" runat="server" Width="250px"></asp:TextBox>
          
        </p>
        </td>
        <td></td>
        <td>Sample Username: </td>
        <td>User1</td>
    </tr>
    
    <tr>
        <td>
        Password:
        </td>

        <td>
        <p>            
            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
        </p>
        </td>
        <td></td>
        <td>Sample Password: </td>
        <td>password</td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" visible="False" />
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="reload captcha" OnClick="Button1_Click" Width="117px" />
        </td>
    </tr>
    <tr>
        <td>user type: </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Member</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>Manager</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="text-align:right">
            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
        </td>
    </tr>
    <tr>
        <td>
            New User?
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" href="Register.aspx">Sign Up</asp:LinkButton>
        </td>
    </tr>
    <tr> <td> 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td> <td> </td> </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr> <td> </td> <td> </td> </tr>
    <tr> <td> </td> <td> </td> </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
    </div>
</asp:Content>
