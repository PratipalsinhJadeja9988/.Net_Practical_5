<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Practical_5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Login Form</h2>

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server"
                        Text="Login"
                        OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>