<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCacheSimpleDemo.aspx.cs" Inherits="EClerx.ASPNET.Day24.DataCacheSimpleDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Enter Your Name :</label>
            <asp:TextBox ID="TxtName" runat="server" />
            <asp:Button Text="Goto Next Page" ID="BtnGoto" OnClick="BtnGoto_Click" runat="server" />
        </div>
    </form>
</body>
</html>
