<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="STUDENT_SCHOOL_MANAGEMENT.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MainPage</title>
    <link href="MainPage_css/StyleSheet1.css?version=1" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <p>StudentsManagement</p>
        </div>
        <div class="main">
            <h1>SchoolManagement</h1>   
            <h2>Never Give Up</h2>
        </div>
        <div class="nav">
            <ul>
                <li>
                    <asp:Button ID="Login" runat="server" Text="כניסה" OnClick="Login_Click" /></li>
                <li>
                    <asp:Button ID="Soon1" runat="server" Text="Soon" /></li>
                <li>
                    <asp:Button ID="Soon2" runat="server" Text="Soon" /></li>
            </ul>
            </div>
    </form>
</body>
</html>
