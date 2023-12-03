<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForConsumingTrips/mpMain.master" AutoEventWireup="true" CodeFile="wfDeleteTrip.aspx.cs" Inherits="PagesForConsumingTrips_wfDeleteTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 473px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter The Trip ID for Deleting a Trip"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btDeletetrip" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="btDeleteTrip_Click" Text="Delete a Trip" />
                </td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

