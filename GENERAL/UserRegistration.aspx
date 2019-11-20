<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="GENERAL_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../CSS/UserRegistrationCSS.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/21c837db17.js"></script>
    <script src="../SCRIPT/UserRegistrationJS.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" runat="Server">
    <div id="navi">
        <i>Register</i>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHmain" runat="Server">
    <div id="registrationPanelDiv">
        <div>
            <asp:ScriptManager ID="scriptManager" runat="server">
            </asp:ScriptManager>
        </div>
        <div id="registrationFormDiv">
            <div id="nameDiv">
                <asp:UpdatePanel ID="updatePanelName" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="labelName" runat="server" Text="Enter Your Name"></asp:Label>
                        <asp:TextBox ID="textBoxName" runat="server" placeholder="Enter Your Name" onBlur="check(this)"></asp:TextBox>
                        <i class="fa fa-exclamation-circle errorSign hiddenItem" id="errorIcon" onclick="showError(this)" runat="server"></i>
                        <asp:Label ID="labelNameError" runat="server" CssClass="errorMsg hiddenItem" Text="Name can't be blank" ForeColor="Red"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div id="emailDiv">
                <asp:Label ID="labelEmail" runat="server" Text="Enter Your Email"></asp:Label>
                <asp:TextBox ID="textBoxEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox>
            </div>

            <div id="dobDiv">
                <div>
                    <asp:Label ID="labelDob" runat="server" Text="Date Of Birth"></asp:Label>
                </div>
                <span id="spanDob">
                    <asp:UpdatePanel ID="updatePanelDob" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="dropDownDate" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="dropDownMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownMonth_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList ID="dropDownYear" runat="server"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </span>
            </div>

            <div id="organisationDiv">
                <div>
                    <asp:Label ID="labelOrganisation" runat="server" Text="Select your organisation"></asp:Label>
                </div>
                <div>
                    <asp:UpdatePanel ID="updatePanelOrganisation" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="dropDownOrganisation" runat="server" OnSelectedIndexChanged="dropDownOrganisation_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                            <span>
                                <asp:TextBox ID="textBoxOtherOrganisations" runat="server" Enabled="false" placeholder="Please Specify..."></asp:TextBox>
                            </span>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

