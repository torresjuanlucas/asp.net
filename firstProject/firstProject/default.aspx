<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="firstProject._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Name:<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            </h2>
        </div>
        <asp:Label ID="lbOutput" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Submit" />
    </form>
</body>
</html>
