<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheExample1.aspx.cs" Inherits="EClerx.ASPNET.Day24.CacheExample1" %>
<%@ OutputCache Duration="60" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My Home Page</h1>
            <table>
                <tr>
                    <td>
                        <asp:Button Text="Cache Example 1" ID="BtnEx1" runat="server" OnClick="BtnEx1_Click" />
                    </td>
                     <td>
                        <asp:Button Text="Cache Example 2" ID="BtnEx2" runat="server" OnClick="BtnEx2_Click" />
                    </td>
                     <td>
                        <asp:Button Text="Cache Example 3" ID="BtnEx3" runat="server" OnClick="BtnEx3_Click" />
                    </td>
                </tr>
            </table>
            
        </div>
        <hr />
        <div>
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
        </div>
    </form>
</body>
</html>
