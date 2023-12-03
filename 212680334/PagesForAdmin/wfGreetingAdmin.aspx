<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfGreetingAdmin.aspx.cs" Inherits="PagesForAdmin_wfGreetingAdmin" %>

<%@ Register src="../wucChangePassword.ascx" tagname="wucChangePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblHello" runat="server"></asp:Label>
&nbsp;<asp:Button ID="btChangePassword" runat="server" OnClick="btChangePassword_Click" Text="Change Password" />
    <br />
    <br />
    <br />
    <uc1:wucChangePassword ID="wucChangePassword" runat="server" />
&nbsp;
</asp:Content>

