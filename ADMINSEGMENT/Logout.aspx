<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="ADMINSEGMENT_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script>
        function clear()
        {
            <%Session.Abandon(); %>
            window.history.forward();
            window.setTimeout("window.location.href='../GENERAL/Login.aspx'",500);
        }
    </script>
</head>
<body onload="clear()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
