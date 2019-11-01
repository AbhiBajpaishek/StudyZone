<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="GENERAL_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../CSS/UserRegistrationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" runat="Server">
    <div id="navi">
        <i>Register</i>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHmain" runat="Server">
    <div id="registrationPanelDiv">
        <div id="registrationFormDiv">
            <div id="nameDiv">
                <asp:Label ID="labelName" runat="server" Text="Enter Your Name"></asp:Label>
                <asp:TextBox ID="textBoxName" runat="server" placeholder="Enter Your Name"></asp:TextBox>
            </div>
            <div id="emailDiv">
                <asp:Label ID="labelEmail" runat="server" Text="Enter Your Email"></asp:Label>
                <asp:TextBox ID="textBoxEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox>
            </div>
            <div id="dobDiv">
                <div>
                    <asp:Label ID="labelDob" runat="server" Text="Date Of Birth"></asp:Label></div>
                <span id="spanDob">
                    <asp:DropDownList ID="dropDownDate" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="dropDownMonth" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="dropDownYear" runat="server"></asp:DropDownList>
                </span>
            </div>

            <div id="organisationDiv">

                <div>
                    <asp:Label ID="labelOrganisation" runat="server" Text="Select your organisation"></asp:Label>
                </div>
                <div>
                    <asp:DropDownList ID="dropDownOrganisation" runat="server" OnSelectedIndexChanged="dropDownOrganisation_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <span><asp:TextBox ID="textBoxOtherOrganisations" runat="server" Enabled="false" placeholder="Please Specify..."></asp:TextBox></span>
                </div>

            </div>

        </div>
    </div>
</asp:Content>

