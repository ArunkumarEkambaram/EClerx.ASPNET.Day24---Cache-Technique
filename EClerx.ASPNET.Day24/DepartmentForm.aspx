<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentForm.aspx.cs" Inherits="EClerx.ASPNET.Day24.DepartmentForm" %>
<%@ OutputCache Duration="120" VaryByParam="DepartName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridDepartment" runat="server"></asp:GridView>
        </div>
        <table>
             <tr>
                    <td>
                        <b>Server Date and Time :</b>
                        <asp:Label Text="" ID="LblServer" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Client Side Date and Time :</b>
                        <script>
                            document.write(Date());
                        </script>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Refresh Date" ID="BtnRefresh" runat="server" />
                    </td>
                </tr>
        </table>
    </form>
</body>
</html>
