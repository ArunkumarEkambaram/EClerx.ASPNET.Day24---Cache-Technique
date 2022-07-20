<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCacheExample.aspx.cs" Inherits="EClerx.ASPNET.Day24.DataCacheExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridPosition" runat="server"></asp:GridView>
        </div>
        <p>
            <asp:Button Text="Get Data" ID="BtnGetData" OnClick="BtnGetData_Click" runat="server" />
        </p>
    </form>
</body>
</html>
