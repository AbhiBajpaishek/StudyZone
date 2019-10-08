<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="USERSEGMENT_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .img {
            background-size:cover;
            height:250px;
            width:100%;
        }
        .auto-style1 {
            width: 100%;
        }
        td {
            height:30px;
        }
        .txtbox
{
    height:30px;
    width:375px;
}
.btn
{
    height:40px;
    width:375px;
    background-color:#21955b;
    border:none;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
    <img src="../IMAGES/book.jpg" class="img" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
   </br></br>
    <table align="center" class="auto-style1">
        <tr>
            <td><asp:Label ID="lblname" runat="server" Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="txtname" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbloldpass" runat="server" Text="Old Password"></asp:Label></td>
            <td><asp:TextBox ID="txtolpass" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblNewpass" runat="server" Text="New Password"></asp:Label></td>
            <td><asp:TextBox ID="txtnewpass" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCnfrmpass" runat="server" Text="Confirm Password"></asp:Label></td>
            <td><asp:TextBox ID="txtcnfrmpass" runat="server"  CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btn" runat="server" Text="Change Password" CssClass="btn"/></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

