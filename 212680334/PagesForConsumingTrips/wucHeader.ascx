<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucHeader.ascx.cs" Inherits="PagesForConsumingTrips_wucHeader" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#00FFCC" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="15pt" Orientation="Horizontal">
    <Items>
        <asp:MenuItem NavigateUrl="~/PagesForConsumingTrips/wfAddTrip.aspx" Text="Add Trip" Value="Add Trip"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForConsumingTrips/wfUpdateTrip.aspx" Text="Update Trip" Value="Update Trip"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForConsumingTrips/wfDeleteTrip.aspx" Text="Delete Trip" Value="Delete Trip"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForConsumingTrips/wfDisplayAllTrips.aspx" Text="All Trips" Value="All Trips"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForConsumingTrips/wfDisplayTripByID.aspx" Text="Trip By ID" Value="Trip By ID"></asp:MenuItem>
    </Items>
    <StaticMenuItemStyle BorderColor="Black" BorderWidth="2px" />
</asp:Menu>

