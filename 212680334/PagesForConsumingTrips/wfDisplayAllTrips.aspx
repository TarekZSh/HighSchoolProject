<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForConsumingTrips/mpMain.master" AutoEventWireup="true" CodeFile="wfDisplayAllTrips.aspx.cs" Inherits="PagesForConsumingTrips_wfDisplayAllTrips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#FFFFCC" BorderColor="#663300" BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2" EnableModelValidation="True">
            <FooterStyle BackColor="#663300" ForeColor="#000066" />
            <HeaderStyle BackColor="#663300" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#663300" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#663300" />
            <SelectedRowStyle BackColor="#663300" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </p>
    <asp:Button ID="btDisplay" runat="server" Font-Bold="True" Font-Size="X-Large" OnClick="btDisplay_Click" Text="Display All Trips" />
</asp:Content>

