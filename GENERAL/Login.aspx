<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="GENERAL_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/LoginCSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        td
        {
            height:35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" Runat="Server">
    <div id="navi">
        <i>Login</i>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHmain" Runat="Server">
    <div id="Loginouter">
        <br /><br />
        <div id="loginpannel">

            <table align="center" class="auto-style1" >
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dll">
                            <asp:ListItem>---User Type---</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:LinkButton ID="lnkbtnFrgtpss" runat="server">Forget Password?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" ForeColor="White" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Label ID="errMsgLbl" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

