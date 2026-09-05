<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="Practical_5.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>
<body style="font-family: Arial, sans-serif;">
    <form id="form1" runat="server">
        <h2>Leave Application Details</h2>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Selected Date:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Selected Type:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select Leave Type</asp:ListItem>
                    <asp:ListItem>Casual Leave</asp:ListItem>
                    <asp:ListItem>Sick Leave</asp:ListItem>
                    <asp:ListItem>Earned Leave</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Reason:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnBack" runat="server" Text="Back to Calendar" OnClick="btnBack_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
    </form>
</body>
</html>