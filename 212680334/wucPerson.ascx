<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucPerson.ascx.cs" Inherits="wucPerson" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#CCFF66" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="15pt">
    <Items>
        <asp:MenuItem Text="Greeting" Value="Greeting" NavigateUrl="~/PagesForPerson/wfGreetingPerson.aspx"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForPerson/wfOrderTrip.aspx" Text="Order Trip" Value="Order Trip"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForPerson/wfBestTrips.aspx" Text="Best Trips" Value="Best Trips"></asp:MenuItem>
        <asp:MenuItem Text="Update My Info" Value="Update My Info" NavigateUrl="~/PagesForPerson/wfSelfUpdate.aspx"></asp:MenuItem>
    </Items>
</asp:Menu>

