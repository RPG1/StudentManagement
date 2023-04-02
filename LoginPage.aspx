<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="STUDENT_SCHOOL_MANAGEMENT.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginPage</title>
    <link href="MainPage_css/StyleSheet1.css?version=1" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <p>StudentsManagement</p>
        </div>

        <div class="logform">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="name" runat="server" Text="שם משתמש:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="nametext" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="password" runat="server" Text="סיסמה:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="passtext" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="logbtn" runat="server" Text="כניסה" OnClick="logbtn_Click" /></td>
                    <td>
                        <asp:Button ID="adminbtn" runat="server" Text="מנהל" OnClick="adminbtn_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="error" runat="server" Text="Label" Visible="False"></asp:Label></td>                    
                </tr>
            </table>
        </div>

        <div class="loginNav">
            <ul>
                <li>
                    <asp:Button ID="home" runat="server" Text="בית" /></li>
            </ul>
            </div>
    </form>
</body>
</html>
