<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:ToolkitScriptManager ID="tcm1" runat="server"></asp:ToolkitScriptManager>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Thread" AllowPaging="true" BackColor="BlanchedAlmond">
            <EditItemTemplate>
                Thread:
                <asp:Label ID="ThreadLabel1" runat="server" Text='<%# Eval("Thread") %>' />
                <br />
                Student_id:
                <asp:TextBox ID="Student_idTextBox" runat="server" Text='<%# Bind("Student_id") %>' />
                <br />
                Question:
                <asp:TextBox ID="QuestionTextBox" runat="server" Text='<%# Bind("Question") %>' />
                <br />
                Reply_1:
                <asp:TextBox ID="Reply_1TextBox" runat="server" Text='<%# Bind("Reply_1") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Student_id:
                <asp:TextBox ID="Student_idTextBox" runat="server" Text='<%# Bind("Student_id") %>' />
                <br />
                Question:
                <asp:TextBox ID="QuestionTextBox" runat="server" Text='<%# Bind("Question") %>' />
                <br />
                Reply_1:
                <asp:TextBox ID="Reply_1TextBox" runat="server" Text='<%# Bind("Reply_1") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Thread:
                <asp:Label ID="ThreadLabel" runat="server" Text='<%# Eval("Thread") %>' />
                <br />
                Student_id:
                <asp:Label ID="Student_idLabel" runat="server" Text='<%# Bind("Student_id") %>' />
                <br />
                Question:
                <asp:Label ID="QuestionLabel" runat="server" Text='<%# Bind("Question") %>' />
                <asp:Button ID="rply" runat="server" Text="Answer" OnClick="rply_Click" />
                <br />
                <asp:TextBox ID="ans" runat="server" Visible="false" ></asp:TextBox>
                Reply_1:
                <asp:Label ID="Reply_1Label" runat="server" Text='<%# Bind("Reply_1") %>' />
                <br />
                <asp:Button ID="previous" runat="server" Text="Previous" />
                <br />
                <asp:Button ID="next" runat="server" Text="Next" />
                <br />
                <asp:Button ID="New" runat="server" CommandName="" Text="New" />
                <br />
                <asp:Button ID="Update" runat="server" Text="Reply" />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyZoneConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_Discuss]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
