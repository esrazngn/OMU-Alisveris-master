<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="omualisveris.Pages.LoginForm" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş | OMÜ Alışveriş</title>

    <link rel="stylesheet" href="/js/notifyit/notifIt.css" />
    <script src="/js/jquery-2.0.3.min.js"></script>
    <script src="/js/notifyit/notifIt.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-md-offset-4">
                        <h1 class="text-center login-title">OMÜ Alışveriş</h1>
                        <div class="account-wall">
                            <form class="form-signin">
                                <input name="emailaddress" type="text" class="form-control" placeholder="E-posta adresi" required>
                                <input name="password" type="password" class="form-control" placeholder="Şifre" required>
                                <asp:Button ID="LoginButton" Text="Giriş" runat="server" OnClick="LoginButton_Click" />
                                <label class="checkbox pull-left">
                                    <input type="checkbox" value="remember-me">
                                    Beni hatırla 
                                </label>
                                <a href="#" class="pull-right need-help">Yardım </a>
                                <span class="clearfix"></span>
                            </form>
                        </div>
                        <a href="#" class="text-center new-account">Yeni hesap oluştur </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
