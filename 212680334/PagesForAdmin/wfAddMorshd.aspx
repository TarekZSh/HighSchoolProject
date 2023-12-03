<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfAddMorshd.aspx.cs" Inherits="PagesForAdmin_wfAddMorshd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 449px; height: 169px">
            <tr>
                <td style="width: 137px"></td>
                <td style="width: 353px">New Guide</td>
                <td style="width: 48px">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Width="243px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; text-align: left">
                    <asp:Label ID="lblMorshd" runat="server" Font-Bold="True" Font-Italic="True" Text="Guider"></asp:Label>
                </td>
                <td style="width: 353px">
                    <asp:TextBox ID="tbName" runat="server" Font-Bold="True" Font-Italic="True"> </asp:TextBox>
                </td>
                <td style="width: 48px; text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Required Field" Width="189px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; height: 31px; text-align: left">
                    <asp:Label ID="lblBirthday" runat="server" Font-Bold="True" Font-Italic="True" Text="Birthday" Width="134px"></asp:Label>
                </td>
                <td style="width: 353px; height: 31px">
                    <asp:TextBox ID="tbBirthday" runat="server"></asp:TextBox>
                </td>
                <td style="width: 48px; height: 31px; text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tbBirthday" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbBirthday" ErrorMessage="Wrong Date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; text-align: left">
                    <asp:Label ID="lblPic" runat="server" Font-Bold="True" Font-Italic="True" Height="22px" Text="Upload Picture" Width="145px"></asp:Label>
                </td>
                <td style="width: 353px">
                    <asp:FileUpload ID="fuPic" runat="server" />
                    <br />
                    <asp:Image ID="imgPic" runat="server" Style="width: 40px; height: 40px" />
                </td>
                <td style="width: 48px; text-align: left">
                    <br />
                    <asp:Label ID="lblMUpload" runat="server" Font-Bold="True" ForeColor="LightSeaGreen" Width="285px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; height: 46px; text-align: left">
                    <asp:Label ID="lblUserName" runat="server" Font-Bold="True" Font-Italic="True" Text="User Name" Width="118px"></asp:Label>
                </td>
                <td style="width: 353px; height: 46px">
                    <asp:TextBox ID="tbUserName" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox>
                </td>
                <td style="width: 48px; height: 46px; text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbUserName" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblMUserNamePassword" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; text-align: left">
                    <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Italic="True" Text="Password"></asp:Label>
                </td>
                <td style="width: 353px">
                    <asp:TextBox ID="tbPassword" runat="server" Font-Bold="True" Font-Italic="True"></asp:TextBox>
                </td>
                <td style="width: 48px; text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbPassword" ErrorMessage="Required Field" Style="direction: ltr" Width="195px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 137px; height: 91px"></td>
                <td style="width: 353px; height: 91px">
                    <asp:ImageButton ID="ibtAdd" runat="server" AlternateText="Add" ImageUrl="~/Images/Add.png" OnClick="ibtAdd_Click" Height="50px" Width="50px" />
                </td>
                <td style="width: 48px; height: 91px">&nbsp;<asp:ImageButton ID="ibtClear" runat="server" AlternateText="Clear" ImageUrl="~/Images/Clear.png" OnClick="ibtClear_Click" Height="50px" Width="50px" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="DimGray" ShowMessageBox="True" ShowSummary="False" Width="220px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

