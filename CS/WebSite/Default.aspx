<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to prevent ASPxButton multiple clicks when a postback is sent</title>
    <script type="text/javascript">
        var isPostback = false;
        function btn_OnClick(s, e) {
            e.processOnServer = !isPostback;
            isPostback = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>This ASPxButton sends a postback:</td>
                <td>
                    <dx:ASPxButton ID="simpleButton" runat="server" Text="Do Simple PostBack"></dx:ASPxButton>
                </td>
            </tr>
            <tr>
                <td>This ASPxButton sends a postback and prevents multiple clicks:</td>
                <td>
                    <dx:ASPxButton ID="btn" runat="server" Text="Do PostBack" OnClick="btn_Click">
                        <ClientSideEvents Click="btn_OnClick" />
                    </dx:ASPxButton>
                </td>
            </tr>
            <tr>
                <td>The number of postbacks:</td>
                <td>
                    <dx:ASPxLabel ID="lbl" runat="server"></dx:ASPxLabel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
