<%@ Page Title="" Language="C#" MasterPageFile="~/USERSEGMENT/UserMasterPage.master" AutoEventWireup="true" CodeFile="DownloadStudyMaterial.aspx.cs" Inherits="USERSEGMENT_DownloadStudyMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .d_outer {
        height:400px;
        width:100%;
        }
        .d_main {
            margin:0 auto;
            text-align:center;
        width:90%;

        }
        .img {
            background-size:cover;
            height:250px;
            width:100%;
        }
        .dll
        {
            height:45px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBox" Runat="Server">
    
    <img src="../IMAGES/16374370311_84d42ec98a_b.jpg" class="img"/>
            
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHBox2" Runat="Server">
    <div class="d_outer">
        <div class="d_main">
            <br /><br />
            Choose Category:
    <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="category" DataValueField="category" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" CssClass="dll"></asp:DropDownList>
    <br /><br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString4 %>" SelectCommand="SELECT DISTINCT [category] FROM [tbl_UploadMaterial]"></asp:SqlDataSource>
   
            <br />
             <asp:MultiView ID="MView" runat="server">

        <asp:View ID="viewWT" runat="server" >
            <asp:GridView ID="GviewWT" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Web Technology/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View>  

       <asp:View ID="viewPro" runat="server" >
            <asp:GridView ID="GviewPro" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Programming/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View>

                 <asp:View ID="viewOS" runat="server" >
            <asp:GridView ID="GviewOS" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Database/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View>

                 <asp:View ID="viewDB" runat="server" >
            <asp:GridView ID="GviewDB" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Operating System/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View>

                 <asp:View ID="viewFOC" runat="server" >
            <asp:GridView ID="GviewFOC" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Computer Orgaisation and Arch/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View>

                 <asp:View ID="viewCOA" runat="server" >
            <asp:GridView ID="GviewCOA" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="M_filename" DataNavigateUrlFormatString="../MATERIAL/Fundamental Of Computers/{0}" HeaderText="Download" Text="Download" />
                </Columns>
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
        </asp:View> 
    </asp:MultiView>
</div></div>
</asp:Content>

