<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practical_5.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar & Leave Management</title>
</head>
<body style="font-family: Arial, sans-serif;">
    <form id="form1" runat="server">
        <h2>Academic Calendar & Leave Application</h2>

        <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>

        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999"
            CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
            ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar><br />

        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Selected Date: None"></asp:Label><br /><br />

        <asp:Button ID="Button1" runat="server" Text="Apply Leave" OnClick="Button1_Click" />
    </form>
</body>
</html>