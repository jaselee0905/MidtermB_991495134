<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MidtermB_991495134.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Midterm Hands-On (Set - A)</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Midterm Hands-On (Set - A)
    </h1>
    <div>
        Your Name: Jaesung Lee
    </div>
    <div>
        Your Id: 991495134
    </div>
        <asp:Button ID="btnBus" runat="server" OnClick="btnBus_Click" Text="Bus" style="width:10%"/>
&nbsp;&nbsp;
        <asp:Button ID="btnTour" runat="server" Text="Tour" OnClick="btnTour_Click" style="width:10%"/>
    </form>
</body>
</html>
