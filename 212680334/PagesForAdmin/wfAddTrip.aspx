<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfAddTrip.aspx.cs" Inherits="PagesForAdmin_wfAddTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>New Trip</td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripType" runat="server" Text="Trip Type "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTripType" runat="server" DataSourceID="SqlDataSource2" DataTextField="TripType" DataValueField="TripTypeCode">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [TripTypeCode], [TripType] FROM [tblTripType]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripName" runat="server" Text="Trip Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTripName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbTripName" ErrorMessage="Required Field" Width="287px"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbTripName" ErrorMessage="Wrong Name" ValidationExpression="\D{1}\D+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripPrice" runat="server" Text="Trip Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTripPrice" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbTripPrice" ErrorMessage="Required Field" Width="303px"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripDate" runat="server" Text="Trip Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTripDate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblMTripDate" runat="server"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbTripDate" ErrorMessage="Required Field" Width="251px"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbTripDate" ErrorMessage="Wrong Date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripPlace" runat="server" Text="Trip Place"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTripPlace" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbTripPlace" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripPictures" runat="server" Text="Trip Pictures"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fuPicture" runat="server" />
                <br />
                <asp:Image ID="imgPicture" runat="server" />
            </td>
            <td>
                <asp:Label ID="lblMUpload" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTripRating" runat="server" Text="Trip Rating"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTripRating" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbTripRating" ErrorMessage="Required Field" Width="287px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblIDMorshd" runat="server" Font-Bold="False" Font-Italic="False" Text="Guider"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMorshd" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="IDMorshd">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDMorshd], [Name] FROM [tblMorshd]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ImageButton ID="ibtAdd" runat="server" OnClick="ibtAdd_Click" Height="50px" ImageUrl="~/Images/Add.png" Width="50px"/>
            </td>
            <td>
                <asp:ImageButton ID="ibtClear" runat="server" OnClick="ibtClear_Click" Height="50px" ImageUrl="~/Images/Clear.png" Width="50px"/>
&nbsp;
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

