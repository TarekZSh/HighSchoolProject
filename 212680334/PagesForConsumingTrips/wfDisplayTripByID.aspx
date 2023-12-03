<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForConsumingTrips/mpMain.master" AutoEventWireup="true" CodeFile="wfDisplayTripByID.aspx.cs" Inherits="PagesForConsumingTrips_wfDisplayTripByID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 119px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Enter Trip ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Place"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblPlace" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btTrip" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="btTrip_Click" Text="Display Trip By ID" Width="856px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

