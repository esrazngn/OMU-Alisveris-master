<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileForm.aspx.cs" Inherits="omualisveris.Pages.ProfileForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ImageUrl='<%# Eval("Id", "~/AvatarHandler.ashx?Id={0}") %>' runat="server" />
        <asp:Label ID="nameLabel" runat="server" />
        <asp:Label ID="emailLabel" runat="server" />
    </div>
    </form>
</body>
</html>
