<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucMorshd.ascx.cs" Inherits="wucMorshd" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#CCFF66" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="15pt">
    <Items>
        <asp:MenuItem Text="Greeting" Value="Greeting" NavigateUrl="~/PagesForMorshd/wfGreetingMorshd.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Update My Info" Value="Update My Info" NavigateUrl="~/PagesForMorshd/wfSelfUpdate.aspx"></asp:MenuItem>
    </Items>
</asp:Menu>

