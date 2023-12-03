<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForConsumingTrips/mpMain.master" AutoEventWireup="true" CodeFile="wfAddTrip.aspx.cs" Inherits="PagesForConsumingTrips_wfAddTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 339px;
        }
        .auto-style3 {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Enter Trip ID"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Enter Trip Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Enter Trip Place"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbPlace" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Enter Trip Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbDate" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btAddTrip" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btAddTrip_Click" Text="Add New Trip" />
            </td>
            <td class="auto-style3">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

