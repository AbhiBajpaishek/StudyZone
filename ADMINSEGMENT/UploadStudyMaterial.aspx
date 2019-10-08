<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="UploadStudyMaterial.aspx.cs" Inherits="ADMINSEGMENT_UploadStudyMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            height: 167px;
        }
        
        td
        {
           padding:5px;
        }
    </style>
    <link href="../CSS/UploadMaterialCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
    Upload Study Material
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="u_outer">
        <br /><br /><br />
        <div id="u_main">

            <table align="center" class="auto-style1">
                <tr>
                    <td >
                        <asp:Label ID="Label2" runat="server" Text="Enter Subject Name:" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubjectName" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px">
                            <asp:ListItem>Web Technology</asp:ListItem>
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Fundamental of Computers</asp:ListItem>
                            <asp:ListItem>Computer Organisation And Architecture</asp:ListItem>
                            <asp:ListItem>Operating System</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="uf" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnSave" runat="server" Text="Save" CssClass="btn" OnClick="BtnSave_Click" />
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="gridview" width="100%" AllowPaging="True" PageSize="6" OnPageIndexChanging="GridView1_PageIndexChanging" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <PagerSettings Mode="NextPrevious" PageButtonCount="2" PreviousPageText="Previous" NextPageText="Next"  />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#64bc62" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#64bc62" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"  />
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

