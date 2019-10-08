<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="DiscussionBoard.aspx.cs" Inherits="USERSEGMENT_DiscussionBoard" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>
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
    width:100px;
    background-color:#21955b;
    border:none;
    }
        </style>


    <style type="text/css">
        .TableCSS 
        { 
            border-style:none; 
            background-color:#3BA0D8; 
            width: 850px; 
        } 
        .TableHeader 
        { 
            background-color:#66CCFF; 
            color:#0066FF; 
            font-size:large; 
            font-family:Verdana; 
            }     
        .TableData 
        { 
            background-color:#82C13E;
            color:#fff; 
            font-family:Courier New; 
            font-size:medium; 
            font-weight:bold; 
        }
   
        .auto-style2 {
            height: 23px;
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
    <img src="../IMAGES/internet-480x280.png" class="img" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
    <div id="boardouter">
        <br />
        <br />
        <div id="board">
             <table class="auto-style1" id="tb1">
                <tr>
                    <td class="auto-style2">Posting as :</td>
                    <td class="auto-style2">
                        <asp:Label ID="userlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblques" runat="server" Text="Question"></asp:Label></td>
                    <td><asp:TextBox ID="txtques" runat="server" Height="38px" Width="457px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtques" ErrorMessage="*Please Specify Your Post" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Button ID="btn" runat="server" Text="Post" CssClass="btn" OnClick="btn_Click"/></td>
                </tr>
               </table>
            <br/>
            <br />
            <asp:Label ID="infoMsg" runat="server"></asp:Label>
             <asp:Panel ID="Panel1" runat="server" Height="202px">
                <asp:Label ID="searchlbl" runat="server">Search Posts Category Basis</asp:Label>
                 <br />
                 <br />

                 <asp:Label ID="threadlbl" runat="server">Thread Id: </asp:Label>
                 <asp:TextBox ID="threadtxt" runat="server" Height="22px" Width="144px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="Askerlbl" runat="server">Asked By: </asp:Label>
                 <asp:TextBox ID="Askertxt" runat="server" Height="21px" Width="151px"></asp:TextBox>
                 <br />
                 <br />

                 <asp:Button ID="find" runat="server" Text="Find" />
                 <hr />
                 <asp:LinkButton ID="search" runat="server" PostBackUrl="~/USERSEGMENT/DiscussBoard.aspx">Read All the Posts</asp:LinkButton>

             </asp:Panel>
             <br/>
        </div>
        </div>
</asp:Content>

