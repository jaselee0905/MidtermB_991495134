<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="MidtermB_991495134.AddBus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Class: "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbClass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbClass" ErrorMessage="Class Cannot be Empty"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Seats: "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbSeats" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbSeats" ErrorMessage="Seat Cannot be Empty"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbSeats" ErrorMessage="Please pick from 35 to 50" MaximumValue="50" MinimumValue="35"></asp:RangeValidator>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </p>
        <asp:Label ID="lbSuccess" runat="server" Text="Success!" Visible="False"></asp:Label>
        <br />
        <br />
    </form>
</body>
</html>
