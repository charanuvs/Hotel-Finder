<%@ Page EnableEventValidation="false" Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="member_home.aspx.cs" Inherits="member_home._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Hello
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">logout</asp:LinkButton>
    </p>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p>
        Welcome to the US hotel finder. To begin, please search for the area you are travelling to.&nbsp;&nbsp;&nbsp; </p>
<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="296px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="31px" Text="Search" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span id="cart_block" runat="server"><asp:ListBox ID="ListBox1" runat="server" Height="111px" Width="243px"></asp:ListBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button24" runat="server" Height="29px" OnClick="Button24_Click" Text="clear" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button25" runat="server" Height="28px" OnClick="Button25_Click" Text="Check out" />
        $&nbsp;<asp:Label ID="Label22" runat="server">0</asp:Label>
        </span>
    &nbsp;&nbsp; <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p style="margin-left: 120px">
        <asp:Label ID="error" runat="server" style="font-weight: 700"></asp:Label>
</p>
<div id="catalog" runat="server" aria-autocomplete="none" aria-hidden="False" style="margin-left: 40px; float:left">

&nbsp;
    <table><tr><td>
    <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label></td>

        <td>
    <asp:Label ID="hotel1" runat="server" Text="$200"></asp:Label></td>

        <td>
            <asp:Button ID="Button14" runat="server" Height="27px" OnClick="Button14_Click" Text="add" Width="47px" />
        </td>

        <td>
            <asp:Button ID="Button15" runat="server" Height="32px" OnClick="Button15_Click" Text="remove" Width="68px" />
        </td></tr>
   
    <tr><td colspan="3"><asp:Label ID="Label3" runat="server"></asp:Label></td><td>&nbsp;</td></tr>
    <tr>
        <td>
    <asp:Label ID="Label4" runat="server" style="font-weight: 700"></asp:Label></td>
        <td>
    
    <asp:Label ID="hotel2" runat="server" Text="$150"></asp:Label>
            
        </td>
        <td><asp:Button ID="add2" runat="server" Text="add" Height="30px" Width="45px" OnClick="add2_Click" /></td>
        <td>
    <asp:Button ID="add12" runat="server" Height="30px" Text="remove" Width="69px" OnClick="Button2_Click" /></td></tr>

    <tr>
        <td colspan="3">
    <asp:Label ID="Label5" runat="server"></asp:Label></td>
        <td>
            &nbsp;</td></tr>
   <tr>
       <td>
    <asp:Label ID="Label6" runat="server" style="font-weight: 700"></asp:Label></td>
    <td>
    <asp:Label ID="hotel3" runat="server" Text="$170"></asp:Label>
    </td>
    <td>
        <asp:Button ID="add3" runat="server" Text="add" Height="30px" Width="45px" OnClick="add3_Click" />
    </td>
    <td>
        <asp:Button ID="Button16" runat="server" Height="31px" OnClick="Button16_Click" Text="remove" Width="68px" />
    </td></tr>
        <tr><td>
    <asp:Label ID="Label7" runat="server"></asp:Label></td></tr>
    <tr><td>
    <asp:Label ID="Label8" runat="server" style="font-weight: 700"></asp:Label></td>
    <td>
    <asp:Label ID="hotel4" runat="server" Text="$250"></asp:Label></td>
    <td>
        <asp:Button ID="add4" runat="server" Text="add" Height="30px" Width="45px" OnClick="add4_Click" /></td>
    <td>
        <asp:Button ID="Button17" runat="server" Height="29px" OnClick="Button17_Click" Text="remove" Width="74px" />
        </td></tr>
    <tr><td>
    <asp:Label ID="Label9" runat="server"></asp:Label></td></tr>
        <tr><td>
    <asp:Label ID="Label10" runat="server" style="font-weight: 700"></asp:Label></td>
    <td>
    <asp:Label ID="hotel5" runat="server" Text="$210"></asp:Label></td>
    <td>
        <asp:Button ID="add5" runat="server" Text="add" Height="30px" Width="45px" OnClick="add5_Click" /></td>
    <td>
        <asp:Button ID="Button18" runat="server" Height="30px" OnClick="Button18_Click" Text="remove" Width="73px" />
            </td></tr>
    <tr><td>
    <asp:Label ID="Label11" runat="server"></asp:Label></td></tr>
        <tr><td>
    <asp:Label ID="Label12" runat="server" style="font-weight: 700"></asp:Label></td>
            <td>
    <asp:Label ID="hotel6" runat="server" Text="$200"></asp:Label></td>
            <td>
                <asp:Button ID="add6" runat="server" Text="add" Height="30px" Width="45px" OnClick="add6_Click" /></td>
            <td>
                <asp:Button ID="Button19" runat="server" Height="32px" OnClick="Button19_Click" Text="remove" Width="73px" />
            </td>
    </tr><tr><td>
    <asp:Label ID="Label13" runat="server"></asp:Label></td></tr>
    <tr>
        <td>

    <asp:Label ID="Label14" runat="server" style="font-weight: 700"></asp:Label></td>
    <td>
    <asp:Label ID="hotel7" runat="server" Text="$250"></asp:Label></td>
    <td>
        <asp:Button ID="add7" runat="server" Text="add" Height="30px" Width="45px" OnClick="add7_Click" /></td>
    <td>
        <asp:Button ID="Button20" runat="server" Height="31px" OnClick="Button20_Click" Text="remove" Width="75px" />
        </td>
    </tr>
        <tr><td>
    <asp:Label ID="Label15" runat="server"></asp:Label></td></tr>
        <tr><td>
    <asp:Label ID="Label16" runat="server" style="font-weight: 700"></asp:Label></td>
            <td>
    <asp:Label ID="hotel8" runat="server" Text="$150"></asp:Label></td>
            <td>
                <asp:Button ID="add8" runat="server" Text="add" Height="30px" Width="45px" OnClick="add8_Click" /></td>
            <td>
                <asp:Button ID="Button21" runat="server" Height="39px" OnClick="Button21_Click" Text="remove" Width="70px" />
            </td>
            </tr>
    <tr><td>
    <asp:Label ID="Label17" runat="server"></asp:Label></td></tr>
    
        <tr><td>
    <asp:Label ID="Label18" runat="server" style="font-weight: 700"></asp:Label></td>
            <td>

    <asp:Label ID="hotel9" runat="server" Text="$130"></asp:Label></td>
            <td>

                <asp:Button ID="add9" runat="server" Text="add" Height="30px" Width="45px" OnClick="add9_Click" /></td>
            <td>

                <asp:Button ID="Button22" runat="server" Height="32px" OnClick="Button22_Click" Text="remove" Width="72px" />
            </td>
    </tr>
        <tr> <td>
    <asp:Label ID="Label19" runat="server"></asp:Label></td></tr>
    
        <tr><td>
    <asp:Label ID="Label20" runat="server" style="font-weight: 700"></asp:Label></td>
            <td>
    <asp:Label ID="hotel10" runat="server" Text="$100"></asp:Label></td>
            <td>
                <asp:Button ID="add10" runat="server" Text="add" Height="30px" Width="45px" OnClick="add10_Click" /></td>
            <td>
                <asp:Button ID="Button23" runat="server" Height="33px" OnClick="Button23_Click" Text="remove" Width="72px" />
            </td>
    </tr>
        <tr><td>
    <asp:Label ID="Label21" runat="server"></asp:Label></td></tr></table>

</div></asp:Content>
