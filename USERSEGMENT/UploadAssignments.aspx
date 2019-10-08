<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="UploadAssignments.aspx.cs" Inherits="USERSEGMENT_UploadAssignments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       
        .img {
            background-size:cover;
            height:250px;
            width:100%;
        }
        .auto-style1 {
            width: 50%;
            
        }
        td{
            height:30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
    <img src="../IMAGES/Assignments.png" class="img"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
   <div style="padding:10px">
        <br />
        <table class="auto-style1">
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Text="Enter Subject"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
       <asp:Label ID="Label2" runat="server" Text="Upload Material"></asp:Label>
                </td>
                <td>
        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" Text="Save" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="M_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" ReadOnly="True" SortExpression="M_ID" />
                <asp:BoundField DataField="M_Subject" HeaderText="M_Subject" SortExpression="M_Subject" />
                <asp:BoundField DataField="M_filename" HeaderText="M_filename" SortExpression="M_filename" />
                <asp:BoundField DataField="Upload_DT" HeaderText="Upload_DT" SortExpression="Upload_DT" />
            </Columns>
        </asp:GridView>
</asp:Content>

