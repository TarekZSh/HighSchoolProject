<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucChangePassword.ascx.cs" Inherits="wucChangePassword" %>
<style type="text/css">
    .auto-style1 {
        width: 100px;
        height: 27px;
    }
</style>

<asp:Label ID="lblMessage" runat="server"></asp:Label>
<p>
    &nbsp;</p>
<p>
    Change Password</p>
<p>
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblPassword" runat="server" Width="251px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Height="23px" Text="New Password" Width="206px"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblNewPassword" runat="server" Width="252px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="Confirm New Password" Width="208px"></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="tbConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblConfirmNewPassword" runat="server" Width="253px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100px"></td>
            <td style="width: 100px">
                <asp:ImageButton ID="ibtCheck" runat="server" AlternateText="Change Password" OnClick="ibtCheck_Click" />
            </td>
            <td style="width: 100px"></td>
        </tr>
    </table>
</p>
<p>
    &nbsp;</p>

