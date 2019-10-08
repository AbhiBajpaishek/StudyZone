<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="USERSEGMENT_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--    <style>
        .img {
            background-size:cover;
            height:250px;
            width:100%;
        }
        .noti {
        height:500px;
        width:40%;
        float:left;
        background-color:aqua;
        }
        </style>--%>
    <link href="../CSS/UserHomeCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
    <img src="../IMAGES/complete-study-guide-1-860x420.jpg" class="img"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
    <asp:Panel ID="mainPanel" runat="server" CssClass="MainPanel">
        
        <div class="headDiv">
            <marquee>
            <asp:Label ID="lbl1" runat="server">Things You can Do.....</asp:Label>
            </marquee>
            <br />
            <br />

        </div>

        <div class="links">
            <ol>
            <a href="DiscussionBoard.aspx">Start A Discussion </a>
                
            </ol><hr />
            <ol><a href="StudentFeedback.aspx">Give Us a Feedback</a></ol><hr />
            <ol><a href="DownloadStudyMaterial.aspx">Download Notes</a></ol><hr />
            <ol><a href="Profile.aspx">See Your Profile</a></ol><hr />
            <ol><a href="../GENERAL/Enquiry.aspx">Want Help? Ask Query</a></ol><hr />

        </div>
        </asp:Panel>
        <asp:Panel ID="rightPanel" runat="server" CssClass="rightPanel" ScrollBars="Vertical">
        <div class="rightDiv">
            <marquee>
                <asp:Label id="lbl3" runat="server">
                    Recently Uploaded Notes
                </asp:Label>
                </marquee>
            <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="M_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">

                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" ReadOnly="True" SortExpression="M_ID" />
                        <asp:BoundField DataField="M_Subject" HeaderText="M_Subject" SortExpression="M_Subject" />
                        <asp:BoundField DataField="M_filename" HeaderText="M_filename" SortExpression="M_filename" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                        <asp:BoundField DataField="Upload_DT" HeaderText="Upload_DT" SortExpression="Upload_DT" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />

                </asp:GridView>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString9 %>" SelectCommand="SELECT * FROM [tbl_UploadMaterial]"></asp:SqlDataSource>
            

        </div>
    </asp:Panel >
    
    <asp:Panel ID="secondPanel" runat="server" CssClass="SecondPanel">
        <div class="headDiv">
        <marquee><asp:Label ID="lbl2" runat="server">Your Asked Threads..</asp:Label><br /></marquee>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="UserHomeThreadSource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Thread" HeaderText="Thread" InsertVisible="False" ReadOnly="True" SortExpression="Thread" />
                    <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                    <asp:BoundField DataField="Ans_count" HeaderText="Ans_count" SortExpression="Ans_count" />
                    <asp:BoundField DataField="Reply1" HeaderText="Reply1" SortExpression="Reply1" />
                    <asp:BoundField DataField="Reply2" HeaderText="Reply2" SortExpression="Reply2" />
                    <asp:BoundField DataField="Reply4" HeaderText="Reply4" SortExpression="Reply4" />
                    <asp:BoundField DataField="Reply3" HeaderText="Reply3" SortExpression="Reply3" />
                    <asp:BoundField DataField="Student_id" HeaderText="Student_id" SortExpression="Student_id" />
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
            <asp:SqlDataSource ID="UserHomeThreadSource" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString9 %>" SelectCommand="SELECT [Thread], [Question], [Ans_count], [Reply1], [Reply2], [Reply4], [Reply3], [Student_id] FROM [tbl_Discuss] WHERE ([Student_id] = @Student_id2)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Admin" Name="Student_id2" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>

    </asp:Panel>

 </asp:Content>

