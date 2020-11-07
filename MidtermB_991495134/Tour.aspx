<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tour.aspx.cs" Inherits="MidtermB_991495134.Tour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="StaffName" HeaderText="StaffName" SortExpression="StaffName" />
                    <asp:BoundField DataField="BusClass" HeaderText="BusClass" SortExpression="BusClass" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tour] WHERE ([Cost] &gt;= @Cost)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5000" Name="Cost" Type="Double" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Bus] WHERE ([SeatCount] &gt;= @SeatCount)">
            <SelectParameters>
                <asp:Parameter DefaultValue="40" Name="SeatCount" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
