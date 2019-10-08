<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="StudentManagement.aspx.cs" Inherits="ADMINSEGMENT_StudentManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/StudentManagmentCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
    Student Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="s_outer">
        <div id="s_main">

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="User_id" HeaderText="User_id" ReadOnly="True" SortExpression="User_id" />
                    <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                    <asp:BoundField DataField="User_type" HeaderText="User_type" SortExpression="User_type" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString6 %>" SelectCommand="SELECT * FROM [Tbl_Login]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Tbl_Login] WHERE [User_id] = @original_User_id AND [Pass] = @original_Pass AND [User_type] = @original_User_type AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [Tbl_Login] ([User_id], [Pass], [User_type], [status]) VALUES (@User_id, @Pass, @User_type, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Tbl_Login] SET [Pass] = @Pass, [User_type] = @User_type, [status] = @status WHERE [User_id] = @original_User_id AND [Pass] = @original_Pass AND [User_type] = @original_User_type AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_User_id" Type="String" />
                    <asp:Parameter Name="original_Pass" Type="String" />
                    <asp:Parameter Name="original_User_type" Type="String" />
                    <asp:Parameter Name="original_status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User_id" Type="String" />
                    <asp:Parameter Name="Pass" Type="String" />
                    <asp:Parameter Name="User_type" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pass" Type="String" />
                    <asp:Parameter Name="User_type" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="original_User_id" Type="String" />
                    <asp:Parameter Name="original_Pass" Type="String" />
                    <asp:Parameter Name="original_User_type" Type="String" />
                    <asp:Parameter Name="original_status" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Show All Records" OnClick="Button1_Click" />
            
            <br />
            <br />
            <asp:GridView ID="gviewallrecords" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        </div>
    </div>
</asp:Content>

