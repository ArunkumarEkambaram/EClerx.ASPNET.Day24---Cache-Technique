<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FragmentCacheExample.aspx.cs" Inherits="EClerx.ASPNET.Day24.FragmentCacheExample" %>

<%@ Register Src="~/MyControl.ascx" TagPrefix="abc" TagName="MyControl" %>


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
                         <asp:Button Text="Home Page" runat="server" ID="BtnHome" OnClick="BtnHome_Click" />
                    </td>
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
        <abc:MyControl runat="server" ID="MyControl" />
    </form>
</body>
</html>
