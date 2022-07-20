<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EClerx.ASPNET.Day24.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b>
                <asp:Label Text="" ID="LblMessage" runat="server" />
            </b>
            <h1>This is Home Page</h1>
        </div>
        <hr />
        <div>
            <asp:GridView ID="GridPosition" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
