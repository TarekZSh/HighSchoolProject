<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForVisitor/mpVisitor.master" AutoEventWireup="true" CodeFile="wfLogIn.aspx.cs" Inherits="PagesForVisitor_wfLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
    </p>
</asp:Content>

