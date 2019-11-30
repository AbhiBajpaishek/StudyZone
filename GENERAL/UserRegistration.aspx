<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="GENERAL_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../CSS/UserRegistrationCSS.css" rel="stylesheet" />
    <%--<script src="https://use.fontawesome.com/21c837db17.js"></script>--%>
    <script src="../SCRIPT/UserRegistrationJS.js"></script>
    <script src="https://kit.fontawesome.com/eb96fde216.js" crossorigin="anonymous"></script>
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
                <%--<asp:UpdatePanel ID="updatePanelName" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>--%>
                <asp:Label ID="labelName" runat="server" CssClass="labelClass" Text="Enter Your Name"></asp:Label>
                <asp:TextBox ID="textBoxName" runat="server" placeholder="Enter Your Name" onBlur="checkName(this)"></asp:TextBox>
                <i class="fa fa-exclamation-circle errorNameSign hiddenItem" onclick="showError(this)" runat="server"></i>
                <asp:Label ID="labelNameError" runat="server" CssClass="errorNameMsg hiddenItem" Text="Name can't be blank!!" ForeColor="Red"></asp:Label>
                <%-- </ContentTemplate>
                </asp:UpdatePanel>--%>
            </div>

            <div id="emailDiv">
                <asp:Label ID="labelEmail" runat="server" Text="Enter Your Email"></asp:Label>
                <asp:TextBox ID="textBoxEmail" runat="server" placeholder="Enter Your Email" onBlur="checkEmail(this)"></asp:TextBox>
                <i class="fa fa-exclamation-circle errorEmailSign hiddenItem" onclick="showError(this)"></i>
                <asp:Label ID="labelEmailError" runat="server" CssClass="errorEmailMsg hiddenItem" Text="Email is not valid!!" ForeColor="Red"></asp:Label>
            </div>

            <div id="dobDiv">
                <div>
                    <asp:Label ID="labelDob" runat="server" Text="Date Of Birth"></asp:Label>
                </div>
                <span id="spanDob">
                    <asp:UpdatePanel ID="updatePanelDob" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="dropDownYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownYear_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList ID="dropDownMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownMonth_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList ID="dropDownDate" runat="server"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </span>
            </div>

            <div id="organisationDiv">
                <div>
                    <asp:Label ID="labelOrganisation" runat="server" Text="Select your organisation"></asp:Label>
                </div>
                <div>
                    <asp:UpdatePanel ID="updatePanelOrganisation" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="dropDownOrganisation" runat="server" OnSelectedIndexChanged="dropDownOrganisation_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                            <asp:TextBox ID="textBoxOtherOrganisations" runat="server" Enabled="false" placeholder="Please Specify..." onBlur="checkOrganisation(this)"></asp:TextBox>
                            <i class="fa fa-exclamation-circle errorOrganisationSign hiddenItem" onclick="showError(this)"></i>
                            <asp:Label ID="labelOrganisationError" runat="server" CssClass="errorOrganisationMsg hiddenItem" Text="Organisation Name is not valid!!" ForeColor="Red"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div id="genderDiv">
                <div>
                    <asp:Label ID="labelGender" runat="server" Text="Choose Your Gender"></asp:Label>
                </div>
                <span>
                    <asp:Panel CssClass="panelGender" runat="server">
                        <asp:RadioButtonList ID="radioGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Male" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Female"></asp:ListItem>
                            <asp:ListItem Text="Other"></asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:Panel>
                </span>
            </div>

            <div id="captchaDiv">
                <div>
                    <asp:Label ID="labelCaptcha" runat="server" Text="Enter Captcha Code"></asp:Label>
                </div>
                <span>
                    <asp:Panel CssClass="panelCaptcha" runat="server">
                        <asp:UpdatePanel ID="updatePanelCaptcha" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Label ID="labelCaptchaCode" runat="server" Text="JHGF5Dfdg" CssClass="captcha"></asp:Label>
                                <i class="fas fa-redo fa-2x refreshSign" runat="server"></i>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>
                </span>
            </div>
        </div>
    </div>
</asp:Content>

