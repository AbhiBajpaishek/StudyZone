<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="DiscussBoard.aspx.cs" Inherits="USERSEGMENT_DiscussBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
    .main
    {
        
    }
   .panel1
    {
        padding-top:10px;
        padding-left:40px;
        font-family:'Arial Rounded MT';
        text-align:left;
        line-height:30px;
        background-color:#9d9fa1;
        font-size:large;

    }
   .txtbox 
   {
        height:125px;
        width:660px; 
   
   }
  .btn 
  {
        background-color: #333333;
        height: 45px;
        width: 200px;
        border:none;
         vertical-align: top;
         margin-top:45px;
         margin-left:10px;
         color:white;
         font-family:'Arial Rounded MT';
         font-size:medium;

   }
   .panel2
   {
       height:150px;
       background-color:#64bc62;
       font-size:large;
       line-height:40px;
       font-family:Arial, Helvetica, sans-serif;
       text-align:left;
       padding-top:10px;
       padding-left:40px;
       word-spacing:10px;
       border-top:1px solid #333;
   }

   .anstext{
       color:azure;
       font-weight:bolder;
      /*font-size:medium;
       font-family:Arial, Helvetica, sans-serif;
       */text-align:right;
       /*padding-top:10px;
       /*padding-left:40px;*/
       padding-right:40px;
       word-spacing:7px;
       /*border-top:2px solid #333;*/
   }
   .img 
   {
       background-size: cover;
       height: 250px;
       width: 100%;
   }
    
    .ask{
        height:auto;
    }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
 
   <img src="../IMAGES/internet-480x280.png" class="img" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
    
    <div class="main" >
        
            <asp:Panel ID="DiscussionPanel" runat="server"  CssClass="panel1">
                <asp:Label ID="Thread" runat="server" CssClass="thread" Text="Thread No : "></asp:Label>
                <asp:Label ID="threadTxt" runat="server" CssClass="thread"  ForeColor="#323945"></asp:Label>
                <br />

                <asp:Label ID="asker" runat="server" CssClass="ask" Text="Asked By : "></asp:Label>
                <asp:Label ID="askTxt" runat="server" CssClass="ask"  ForeColor="#323945"></asp:Label>

                <asp:Label ID="no" runat="server" Text="Total replies : "></asp:Label>
                <asp:Label ID="notxt" runat="server"  ForeColor="#323945"></asp:Label>
                <br />
                <asp:Label ID="Question" runat="server" Text="Question : " ></asp:Label>
                <asp:Label ID="quesTxt" runat="server" ForeColor="#323945"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="rply_text" runat="server"  TextMode="MultiLine" CssClass="txtbox"></asp:TextBox>
                
                <asp:Button ID="Post" runat="server" OnClick="Post_Click" Text="Post Your Answer" CssClass="btn"/>
                <br />
                <br />
                <asp:Label ID="Answers" runat="server" Text="Answers" Font-Size="Larger" ></asp:Label>
                <br />
            </asp:Panel>
        
            <asp:Panel ID="ansPanel" runat="server" CssClass="panel2" ScrollBars="Both">

            </asp:Panel>
        
    </div>

</asp:Content>

