<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForVisitor/mpVisitor.master" AutoEventWireup="true" CodeFile="wfMorshd.aspx.cs" Inherits="PagesForVisitor_wfMorshd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Name], [Picture] FROM [tblMorshd]"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                &nbsp;<asp:Image ID="Image1" runat="server" Height="113px" ImageUrl='<%# @"../Images/"+Eval("Picture") %>' Width="111px" />
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

