<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="GENERAL_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/EnquiryCSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        td{
            height:50px;
        }
        .auto-style2 {
            margin-top: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" Runat="Server">
     <div id="navi">
        <i>Enquiry</i>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHmain" Runat="Server">
    <div id="e_outer">
        <br />
        <div id="e_main">

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="txtbox" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Contact No." CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="E-mail ID" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Message" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="auto-style2" Height="70px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />

                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

