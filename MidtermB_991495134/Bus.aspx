<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bus.aspx.cs" Inherits="MidtermB_991495134.Bus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="SeatCount" HeaderText="SeatCount" SortExpression="SeatCount" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnInsert" runat="server" Text="Insert" Style="width:10%" OnClick="btnInsert_Click"/>
        <asp:Button ID="btnSearch" runat="server" Text="Search"  Style="width:10%" OnClick="btnSearch_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bus] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Bus] ([Id], [Class], [SeatCount]) VALUES (@Id, @Class, @SeatCount)" SelectCommand="SELECT * FROM [Bus]" UpdateCommand="UPDATE [Bus] SET [Class] = @Class, [SeatCount] = @SeatCount WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Class" Type="Int32" />
                <asp:Parameter Name="SeatCount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class" Type="Int32" />
                <asp:Parameter Name="SeatCount" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
