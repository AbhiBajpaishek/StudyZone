<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="StudentFeedback.aspx.cs" Inherits="USERSEGMENT_StudentFeedback" %>

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
       <div> <img src="../IMAGES/Feedback-Page.jpg" class="img"/></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
    <br/><br/>
    <br/>
    <table class="auto-style1">
        <tr>
            <td><asp:Label ID="lblname" runat="server" Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="txtname" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblemail" runat="server" Text="Email Address"></asp:Label></td>
            <td><asp:TextBox ID="txtemail" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblcomment" runat="server" Text="Comments/Questions/Concerns/Compliments"></asp:Label></td>
            <td><asp:TextBox ID="txtcomment" runat="server" CssClass="txtbox" TextMode="MultiLine" Height="100px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btn" runat="server" Text="SUBMIT" CssClass="btn"/></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

