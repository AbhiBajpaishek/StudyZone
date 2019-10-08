<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="ADMINSEGMENT_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/AdminHomeCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="outer">
        <br />
        <div id="dwnl_reg">

            <div id="infobox1" class="infobox">
                <img src="../IMAGES/visitor.png" /><br />
                <asp:Label ID="Label1" runat="server" CssClass="lbl">VISIT TODAY</asp:Label>
                <asp:Label ID="Label2" runat="server" ></asp:Label>
            </div>

            <div id="infobox2" class="infobox">
                <img src="../IMAGES/user.png" /><br />
                <asp:Label ID="Label3" runat="server" CssClass="lbl">TOTAL USERS</asp:Label>
                <asp:Label ID="Label4" runat="server" ></asp:Label>
            </div>

            <div id="infobox3" class="infobox">
                <img src="../IMAGES/download.png" /><br />
                <asp:Label ID="Label5" runat="server" CssClass="lbl">TOTAL DOWNLOADS</asp:Label>
                <asp:Label ID="Label6" runat="server" ></asp:Label>
            </div>

            <div id="infobox4" class="infobox">
                <img src="../IMAGES/rating.png" /><br />
                <asp:Label ID="Label7" runat="server" CssClass="lbl">RATINGS</asp:Label>
                <asp:Label ID="Label8" runat="server" ></asp:Label>
            </div>

        </div>
        <br /><br />
        <div id="record">
        <div id="one">    
       <div id="feedback">
           Feedback Record
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" width="100%" HorizontalAlign="Center">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="Feedback_id" HeaderText="Feedback_id" InsertVisible="False" ReadOnly="True" SortExpression="Feedback_id" />
                   <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
                   <asp:BoundField DataField="Feedback_head" HeaderText="Feedback_head" SortExpression="Feedback_head" />
                   <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                   <asp:BoundField DataField="Feedback_date" HeaderText="Feedback_date" SortExpression="Feedback_date" />
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString8 %>" SelectCommand="SELECT * FROM [Tbl_Feedback]"></asp:SqlDataSource>
       </div>
            <div id="enquiry">
                Enquiry Record
                <br /><br />
                <asp:GridView ID="GridView2" runat="server"  AllowPaging="True" PageSize="2" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Enquiry_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Enquiry_id" HeaderText="Enquiry_id" InsertVisible="False" ReadOnly="True" SortExpression="Enquiry_id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                        <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
                        <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                        <asp:BoundField DataField="Enq_date" HeaderText="Enq_date" SortExpression="Enq_date" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString8 %>" SelectCommand="SELECT * FROM [Tbl_Enquiry]"></asp:SqlDataSource>
            </div>
            </div>
            <div id="two">
               <br />
                <center>Login Records</center>
                <br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="User_id" HeaderText="User_id" ReadOnly="True" SortExpression="User_id" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString8 %>" SelectCommand="SELECT [User_id], [status] FROM [Tbl_Login]"></asp:SqlDataSource>
            </div>
            </div>
    </div>
</asp:Content>


