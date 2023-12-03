<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucAdmin.ascx.cs" Inherits="wucAdmin" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#CCFF66" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Italic="False" Font-Size="15pt">
    <Items>
        <asp:MenuItem NavigateUrl="~/PagesForAdmin/wfGreetingAdmin.aspx" Text="Greeting" Value="Greeting"></asp:MenuItem>
        <asp:MenuItem Text="Guiders" Value="Guiders">
            <asp:MenuItem Text="Add" Value="Add" NavigateUrl="~/PagesForAdmin/wfAddMorshd.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Up/Del" Value="Up/Del" NavigateUrl="~/PagesForAdmin/wfUpdDelMorshd.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Trips" Value="Trips">
            <asp:MenuItem Text="Add" Value="Add" NavigateUrl="~/PagesForAdmin/wfAddTrip.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Up/Del" Value="Up/Del" NavigateUrl="~/PagesForAdmin/wfUpdDelTrip.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Administrators" Value="Administrators">
            <asp:MenuItem Text="Add" Value="Add" NavigateUrl="~/PagesForAdmin/wfAddAdmin.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Up/Del" Value="Up/Del" NavigateUrl="~/PagesForAdmin/wfUpdDelAdmin.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Customer" Value="Customer">
            <asp:MenuItem Text="Up/Del" Value="Up/Del" NavigateUrl="~/PagesForAdmin/wfUpdDelPerson.aspx"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>


