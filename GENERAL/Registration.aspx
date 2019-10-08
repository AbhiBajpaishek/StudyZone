<%@ Page Title="Registration" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="GENERAL_Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/RegistrationCSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        td{
            height:30px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            height: 30px;
            width: 187px;
        }
        
        .auto-style5 {
            width: 240px;
        }
        
        .auto-style6 {
            width: 686px;
        }
        .auto-style7 {
            height: 30px;
            width: 686px;
        }
        .auto-style8 {
            width: 968px;
        }
        
    </style>
    <script src="../JSCode/validations.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" Runat="Server">
    <div id="navi">
        <i>Register</i>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <asp:ScriptManager ID="s1" runat="server"></asp:ScriptManager>
    
    <div id="Registrationouter">
                   
        <br />
        <div id="Registrationpannel" class="auto-style8">
            
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Name_txt" runat="server" CssClass="txtbox" AutoCompleteType="FirstName"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name_txt"  ErrorMessage="Please Enter Your Name!!!" ForeColor="Red" SetFocusOnError="True">Please Enter Your Name</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Panel ID="Panel1" runat="server" Height="33px" Width="243px">
                            <asp:RadioButtonList ID="Gender_list" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Male"></asp:ListItem>
                                <asp:ListItem Text="Female"></asp:ListItem>
                                <asp:ListItem Text="Other"></asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="College Name"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="clg_name_txt" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="clg_name_txt" ErrorMessage="Please Enter your College's Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="course_dropdown" runat="server" OnSelectedIndexChanged="course_dropdown_SelectedIndexChanged">
                            <asp:ListItem>--Select Course--</asp:ListItem>
                            <asp:ListItem>BA</asp:ListItem>
                            <asp:ListItem>BCOM</asp:ListItem>
                            <asp:ListItem>BSC</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BVOC</asp:ListItem>
                            <asp:ListItem>BTECH</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="year_list" runat="server">
                            <asp:ListItem>-Year-</asp:ListItem>
                            <asp:ListItem>Ist Year</asp:ListItem>
                            <asp:ListItem>IInd Year</asp:ListItem>
                            <asp:ListItem>IIIrd Year</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Email Id"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="mail_txt" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mail_txt" ErrorMessage="Please Enter valid e-mail Id" ValidationExpression="" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mail_txt" ErrorMessage="Please Enter e-mail id" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Text="Contact No."></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="contact_txt" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Uploader" runat="server" Text="Upload Pic"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:AsyncFileUpload ID="ajaxUploader1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="pass_text" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:PasswordStrength ID="psStrength" runat="server" TargetControlID="pass_text"></asp:PasswordStrength>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pass_text" ErrorMessage="Password must contain(Uppercase, Lowercase, Numeric, Special Character,8-15)" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass_text" ErrorMessage="Please Create a Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="confirm_pass_txt" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass_text" ControlToValidate="confirm_pass_txt" ErrorMessage="Passwords Do not Match!!" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            <asp:UpdatePanel ID="update2" runat="server">
               <Triggers>
                   <asp:PostBackTrigger ControlID = "upload_btn" />
               </Triggers>
            </asp:UpdatePanel>

            <asp:UpdatePanel ID="update1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel2" runat="server" Height="130px" Width="900px">
                        <asp:Label ID="Label11" runat="server" Text="Captcha Code"></asp:Label>

                        <asp:Label ID="Captcha_lbl" runat="server" BackColor="#66FF66"  Font-Bold="True" Font-Italic="True" align="center" Font-Size="20px" Font-Strikeout="True" ForeColor="#000066" Height="45px" Width="250px" CssClass="lblcaptcha"></asp:Label>

                        <asp:Button ID="Refresh_Captcha_btn" runat="server" OnClick="Refresh_Captcha_Click" Text="Refresh" CssClass="rfhbtn"/>

                        <br />

                        <asp:Label ID="Label12" runat="server" Text="Enter Captcha Code"></asp:Label>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:TextBox ID="captcha_text" runat="server" CssClass="txtbox" style="margin-left:60px; margin-top:10px;"></asp:TextBox>
                        <asp:Label ID="Captcha_error" runat="server" ForeColor="Red"></asp:Label>                                              
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="captcha_text" ErrorMessage="Please Enter Captcha as above" ForeColor="Red"></asp:RequiredFieldValidator>
                                              

                    </asp:Panel>
                    </ContentTemplate>
            </asp:UpdatePanel>
             <asp:Panel ID="Panel3" runat="server" Height="198px" Width="558px">  
                 <br />
                 <asp:Label ID="Label8" runat="server" Text="Profile Pic"></asp:Label> 
                 <asp:Image ID="Image1" runat="server" ImageAlign="Middle" Height="108px" Width="121px" style="margin-left:166px;"/>
                <asp:Button ID="upload_btn" runat="server" OnClick="Button3_Click" Text="Upload" Width="79px" CssClass="btn" />
                 <asp:FileUpload ID="picUploader" runat="server" CssClass="picfu"   />
                 
                 <asp:Label ID="lblpicup" runat="server" ForeColor="blue" ></asp:Label> <br />
             </asp:Panel>
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style5">&nbsp;</td>
                     <td>
            
             <asp:Button ID="Submit_btn" runat="server" Text="Submit" CssClass="btn" OnClick="Submit_btn_Click"  />
            
                     </td>
                 </tr>
            </table>
            
        </div>
    </div>

</asp:Content>

