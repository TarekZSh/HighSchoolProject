<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForVisitor/mpVisitor.master" AutoEventWireup="true" CodeFile="wfRegistration.aspx.cs" Inherits="PagesForVisitor_wfRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 77%;
            height: 166px;
        }
        .auto-style4 {
            width: 357px;
            height: 20px;
        }
        .auto-style5 {
            width: 555px;
            height: 20px;
        }
        .auto-style2 {
            width: 357px;
        }
        .auto-style3 {
            width: 555px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 472px;
            height: 20px;
        }
        .auto-style9 {
            width: 472px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">New Customer</td>
            <td class="auto-style8">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblTZ" runat="server" Text="TZ"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbTZ" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbTZ" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbTZ" ErrorMessage="Wrong TZ" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblFirstName" runat="server" Text="FirstName"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbFirstName" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbFirstName" ErrorMessage="Wrong First Name" ValidationExpression="\D{1}\D+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLastName" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="tbLastName" ErrorMessage="Wrong Last Name" ValidationExpression="\D{1}\D+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblBirthday" runat="server" Text="Birthday"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbBirthday" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblMBirthday" runat="server"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbBirthday" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbBirthday" ErrorMessage="Wrong Date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbAddress" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="tbPhone" ErrorMessage="Wrong Phone" ValidationExpression="0\d{1,2}-?\d{7}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbEmail" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tbEmail" ErrorMessage="Wrong Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbUserName" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tbUserName" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblMUserNamePassword" runat="server"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbPassword" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="tbPassword" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:ImageButton ID="ibtAdd" runat="server" OnClick="ibtAdd_Click" Height="50px" ImageUrl="~/Images/Add.png" Width="50px" />
            </td>
            <td class="auto-style9">
                &nbsp;&nbsp;<asp:ImageButton ID="ibtClear" runat="server" OnClick="ibtClear_Click" Height="50px" Width="50px" ImageUrl="~/Images/Clear.png"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" CssClass="auto-style7" Height="32px" Width="257px" />
            </td>
        </tr>
    </table>
</asp:Content>

