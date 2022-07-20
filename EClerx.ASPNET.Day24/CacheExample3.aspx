<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheExample3.aspx.cs" Inherits="EClerx.ASPNET.Day24.CacheExample3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <label>Enter Department Name :</label>
                <asp:TextBox ID="TxtDepartmentName" runat="server" />
                <asp:Button Text="Redirect" ID="BtnGoto" runat="server" OnClick="BtnGoto_Click" />
            </p>
        </div>
    </form>
</body>
</html>
