<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCacheExample2.aspx.cs" Inherits="EClerx.ASPNET.Day24.DataCacheExample2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="" ID="LblMessage" runat="server" />            
        </div>
        <div>
            <asp:Button Text="Get Data" ID="BtnGetData" OnClick="BtnGetData_Click" runat="server" />
        </div>
    </form>
</body>
</html>
