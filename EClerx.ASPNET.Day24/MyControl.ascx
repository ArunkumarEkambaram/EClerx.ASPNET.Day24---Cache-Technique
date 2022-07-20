<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyControl.ascx.cs" Inherits="EClerx.ASPNET.Day24.MyControl" %>
<%@ OutputCache Duration="60" VaryByControl="DdlCity" %>

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
            <b>User Control - Server Date and Time :</b>
            <asp:Label Text="" ID="LblServer" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <b>User Control - Client Side Date and Time :</b>
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
