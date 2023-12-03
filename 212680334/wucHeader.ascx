<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucHeader.ascx.cs" Inherits="wucHeader" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<table class="auto-style1">
    <tr>
        <td>
            <asp:ImageButton ID="ibtLogo" runat="server" Height="166px" ImageUrl="~/Images/Logo.png" PostBackUrl="~/wfHomePage.aspx" Width="259px" />
        </td>
        <td>
<asp:Menu ID="Menu1" runat="server" Font-Size="25pt" ForeColor="#663300" BorderColor="Black" Orientation="Horizontal" BorderStyle="Solid" BorderWidth="10px" BackColor="#FFFFCC" EnableTheming="True">
    <DynamicHoverStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" />
    <Items>
        <asp:MenuItem NavigateUrl="~/wfHomePage.aspx" Text="Home Page  " Value="Home Page"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForVisitor/wfRegistration.aspx" Text="Registration" Value="Registration"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForVisitor/wfLogIn.aspx" Text="Log In" Value="Log In"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForVisitor/wfMorshd.aspx" Text="Guiders" Value="Guiders"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForVisitor/wfTrip.aspx" Text="Trips" Value="Trips"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/PagesForVisitor/wfSignOut.aspx" Text="Sign Out" Value="Sign Out"></asp:MenuItem>
        <asp:MenuItem Text="Visitors" Value="Visitors">
            <asp:MenuItem NavigateUrl="~/PagesForPerson/wfGreetingPerson.aspx" Text="Customer" Value="Customer"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/PagesForMorshd/wfGreetingMorshd.aspx" Text="Guider" Value="Guider"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
    <StaticHoverStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
    <StaticMenuItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
    <StaticMenuStyle BorderColor="Black" BorderWidth="3px" />
    <StaticSelectedStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" BackColor="#FFFFCC" ForeColor="#663300" />
</asp:Menu>

        </td>
    </tr>
</table>


