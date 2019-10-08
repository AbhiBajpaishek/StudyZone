<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="FeedbackMang.aspx.cs" Inherits="ADMINSEGMENT_FeedbackMang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #f_outer
            {
                width:100%;
                height:660px;
    
            }
        #f_main
            {
                margin:0 auto;
                width:90%;
                height:600px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="f_outer">
        <div id="f_main">
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#323945" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#323945" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>

    </div>
    
</asp:Content>

