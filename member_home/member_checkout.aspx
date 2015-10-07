<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="member_checkout.aspx.cs" Inherits="member_home.member_catalogue" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
   
    <div>
    
        Order summary<br />
        -----------------------------------------<br />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <br />
        -----------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total amount:
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Excluding Taxes)<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Proceed to payment" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <div runat="server" id="carddetails">

            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="Enter contact details:"></asp:Label>
            <br />
            <br />
            email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="16px"></asp:TextBox>
            <br />
            <br />
            address:&nbsp;&nbsp;
            <textarea id="TextArea1" name="S1" runat="server"></textarea><br />
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label2" runat="server" Text="Enter card details:" style="font-weight: 700"></asp:Label>

            <br />
            <table>
                <tr>
                    <td>
                        Card number: &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        CVV: &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="32px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Expiry date[MM/YY]: &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="31px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" style="align-items:flex-end">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Pay" Height="32px" Width="71px" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>

        </div>
    
    </div>
    

</asp:Content>

