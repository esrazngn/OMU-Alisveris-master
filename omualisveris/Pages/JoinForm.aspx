<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JoinForm.aspx.cs" Inherits="omualisveris.Pages.JoinForm" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt | OMÜ Alışveriş</title>

    <link rel="stylesheet" href="/js/notifyit/notifIt.css" />
    <script src="/js/jquery-2.0.3.min.js"></script>
    <script src="/js/notifyit/notifIt.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input name="name" type="text" class="form-control" placeholder="İsim" required>
            <input name="surname" type="text" class="form-control" placeholder="Soyisim" required>
            <input name="emailaddress" type="text" class="form-control" placeholder="E-posta adresi" required>
            <input name="phonenumber" type="text" class="form-control" placeholder="Telefon numarası" required>
            <input name="address" type="text" class="form-control" placeholder="Adres" required>
            <input name="password" type="password" class="form-control" placeholder="Şifre" required>
            <asp:FileUpload ID="ProfileImageUpload" runat="server"/>
            <asp:Button ID="JoinButton" runat="server" Text="Kayıt" OnClick="JoinButton_Click"/>
            <a href="#" class="pull-right need-help">Yardım </a>
            <span class="clearfix"></span>
        </div>
    </form>
</body>
</html>
