<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINSEGMENT/AdminMaster.master" AutoEventWireup="true" CodeFile="EnquiryManagement.aspx.cs" Inherits="ADMINSEGMENT_EnquiryManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/AdminEnquiryCSS.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHheading" Runat="Server">
    &nbsp;Enquiry Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="e_outer">
        <div id="e_main">
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                     <asp:TemplateField ShowHeader="False">
                          <ItemTemplate>
                              <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="SendMail"
                                  Text="Respond" OnClick="Button1_Click"  />
                              <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="SendMail"
                                  Text="Delete" OnClick="Button2_Click"  />
                           </ItemTemplate>
                      </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#64bc62" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#64bc62" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br /><br />
            
                    <asp:Panel ID="Panel1" runat="server" CssClass="respondpanel">
                        <asp:UpdatePanel ID="update" runat="server">
                <ContentTemplate>
                        <asp:Label ID="Enquiryid" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtMail" runat="server" Height="96px" Width="608px" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="btn" OnClick="btnsend_Click" />
                        <asp:Label ID="lblmailmsg" runat="server" ></asp:Label>
                     </ContentTemplate>
              </asp:UpdatePanel>
                    </asp:Panel>
                
            
        </div>
    </div>
</asp:Content>

