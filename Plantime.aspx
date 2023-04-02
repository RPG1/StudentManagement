<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantime.aspx.cs" Inherits="STUDENT_SCHOOL_MANAGEMENT.AdminPanel.Plantime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminPanel</title>
    <link href="../MainPage_css/AdminPanel.css?version=1" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="plantime">
            <h1><b>AdminPanel</b></h1>
        </div>

        <div class="Editplantime">
            <h2>עדכון מערכת שעות סטודנט</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Lasson1L" runat="server" Text="שיעור 1"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson1text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson2L" runat="server" Text="שיעור 2"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson2text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson3L" runat="server" Text="שיעור 3"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson3text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson4L" runat="server" Text="שיעור 4"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson4text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson5L" runat="server" Text="שיעור 5"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson5text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson6L" runat="server" Text="שיעור 6"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson6text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lasson7L" runat="server" Text="שיעור 7"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Lasson7text" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Updatebtn" runat="server" Text="עדכן מערכת שעות" OnClick="Updatebtn_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="msg" runat="server" Text="Label" Visible="false"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
