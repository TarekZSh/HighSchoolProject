<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForPerson/mpPerson.master" AutoEventWireup="true" CodeFile="wfGreetingPerson.aspx.cs" Inherits="PagesForPerson_wfGreetingPerson" %>

<%@ Register src="../wucChangePassword.ascx" tagname="wucChangePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblHello" runat="server"></asp:Label>
&nbsp;<asp:Button ID="btChangePassword" runat="server" OnClick="btChangePassword_Click" Text="Change Password" />
    <br />
    <br />
    <br />
    <uc1:wucChangePassword ID="wucChangePassword" runat="server" />
</asp:Content>

