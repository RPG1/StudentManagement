<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="STUDENT_SCHOOL_MANAGEMENT.Pages.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentPage</title>
    <link href="../MainPage_css/StyleSheet1.css?version=1" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <p>StudentsManagement</p>
        </div>

        <div class="StudetnNav">
            <ul>
                <li>
                    <asp:Button ID="Ppage" runat="server" Text="אזור אישי"/></li>
                <li>
                    <asp:Button ID="plantime" runat="server" Text="מערכת שעות" /></li>
                <li>
                    <asp:Button ID="grades" runat="server" Text="ציונים" /></li>
                <li>
                    <asp:Button ID="quit" runat="server" Text="התנתק" OnClick="quit_Click" /></li>
            </ul>
            </div>

        <div class="image-container">
            <img src="../img/img1.jpg" class="animated-image"/>
            <img src="../img/img2.jpg" class="animated-image"/>
            <img src="../img/img3.jpg" class="animated-image"/>
        </div>
    </form>

    <script src="../js/Animatedimages.js"></script>
</body>
</html>
