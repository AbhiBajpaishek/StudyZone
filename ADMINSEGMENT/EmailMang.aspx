<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="EmailMang.aspx.cs" Inherits="ADMINSEGMENT_EmailMang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/EmailCSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        td{
            padding:10px;
        }
        .auto-style2 {
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
    E-mail Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="em_outer">
        <div id="em_main">
            <br /><br /><br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="To:" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTo" runat="server" Width="335px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Subject:" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="335px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Message:" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Height="120px" Width="335px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="btn" OnClick="btnsend_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblmailmsg" runat="server" style="margin-left:300px ; text-align :center"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

