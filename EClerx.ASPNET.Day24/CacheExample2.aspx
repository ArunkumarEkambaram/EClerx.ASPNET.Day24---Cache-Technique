<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheExample2.aspx.cs" Inherits="EClerx.ASPNET.Day24.CacheExample2" %>
<%@ OutputCache Duration="60" VaryByControl="DdlCity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>Select a City</label>
                        <asp:DropDownList ID="DdlCity" AutoPostBack="true" OnSelectedIndexChanged="DdlCity_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridEmployee" runat="server"></asp:GridView>
                    </td>
                </tr>
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
        </div>
    </form>
</body>
</html>
