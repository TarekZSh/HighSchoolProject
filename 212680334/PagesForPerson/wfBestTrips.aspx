<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForPerson/mpPerson.master" AutoEventWireup="true" CodeFile="wfBestTrips.aspx.cs" Inherits="PagesForPerson_wfBestTrips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [TripPictures], [TripName], [TripRating] FROM [spBestTrips]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" PageSize="5">
            <Columns>
                <asp:TemplateField HeaderText="TripPictures" SortExpression="TripPictures">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TripPictures") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="74px" ImageUrl='<%# @"../Images/"+Eval("TripPictures") %>' Width="111px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TripName" SortExpression="TripName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TripName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TripName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TripRating" SortExpression="TripRating">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TripRating") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("TripRating") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl='<%# @"../Images/"+Eval("TripPicture") %>' Width="110px" />
            </EmptyDataTemplate>
        </asp:GridView>
    </p>
</asp:Content>

