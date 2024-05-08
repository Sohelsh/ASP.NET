<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="First_Project.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_Click" runat="server" Height="71px" OnClick="btn_Click_Click" Text="Click" Width="132px" />
            <asp:Label ID="lbl_Output" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
