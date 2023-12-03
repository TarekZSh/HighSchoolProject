<%@ Page Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfAddAdmin.aspx.cs" Inherits="PagesForAdmin_wfAddAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 449px; height: 169px">
        <tr>
            <td style="width: 137px">
            </td>
            <td style="width: 353px">
                New Administrator</td>
            <td style="width: 48px">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Black" Width="243px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 137px; text-align: left">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Italic="True" Text="Name"></asp:Label></td>
            <td style="width: 353px">
                <asp:TextBox ID="tbName" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox></td>
            <td style="width: 48px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName"
                    ErrorMessage="Required Field" Width="189px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 137px; text-align: left">
                <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Italic="True" Text="Email"></asp:Label></td>
            <td style="width: 353px">
                <asp:TextBox ID="tbEmail" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox></td>
            <td style="width: 48px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbEmail"
                    ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Wrong Email"
                        Style="direction: ltr" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="191px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 137px; height: 46px; text-align: left">
                <asp:Label ID="lblUserName" runat="server" Font-Bold="True" Font-Italic="True" Text="User Name"
                    Width="118px"></asp:Label></td>
            <td style="width: 353px; height: 46px">
                <asp:TextBox ID="tbUserName" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox></td>
            <td style="width: 48px; height: 46px; text-align: left">
                <asp:Label ID="lblMUserNamePassword" runat="server" ForeColor="Black" Width="375px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbUserName"
                    ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbUserName" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px; text-align: left">
                <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Italic="True" Text="Password"></asp:Label></td>
            <td style="width: 353px">
                <asp:TextBox ID="tbPassword" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox></td>
            <td style="width: 48px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbPassword"
                    ErrorMessage="Required Field" Style="direction: ltr" Width="195px"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px; text-align: left">
            </td>
            <td style="width: 353px">
                <asp:ImageButton ID="ibtAdd" runat="server" AlternateText="Add" OnClick="ibtAdd_Click" Height="50px" ImageUrl="~/Images/Add.png" Width="50px" /></td>
            <td style="width: 48px; text-align: left">
                <asp:ImageButton ID="ibtClear" runat="server" AlternateText="Clear" OnClick="ibtClear_Click" Height="50px" ImageUrl="~/Images/Clear.png" Width="50px" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="MediumPurple"
                    ShowMessageBox="True" Width="220px" />
            </td>
        </tr>
    </table>
</asp:Content>

