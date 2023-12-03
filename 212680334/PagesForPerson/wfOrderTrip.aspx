<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForPerson/mpPerson.master" AutoEventWireup="true" CodeFile="wfOrderTrip.aspx.cs" Inherits="PagesForPerson_wfOrderTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDTrip], [TripTypeCode], [TripName], [TripPrice], [TripDate], [TripPlace], [MaxPlaces], [TripPictures] , [IDPerson], [Name] FROM [spOrder] WHERE ([IDPerson] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="IDPerson" SessionField="IDPerson" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="168px" Width="668px" AllowPaging="True" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellPadding="3" CellSpacing="2" PageSize="7">
        <Columns>
            <asp:TemplateField HeaderText="IDTrip" InsertVisible="False" SortExpression="IDTrip">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IDTrip") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDTrip") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripTypeCode" SortExpression="TripTypeCode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TripTypeCode") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TripTypeCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripName" SortExpression="TripName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TripName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TripName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPrice" SortExpression="TripPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TripPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TripPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripDate" SortExpression="TripDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TripDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("TripDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPlace" SortExpression="TripPlace">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TripPlace") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("TripPlace") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MaxPlaces" SortExpression="MaxPlaces">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MaxPlaces") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("MaxPlaces") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPictures" SortExpression="TripPictures">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# @"../Images/"+Eval("TripPictures") %>' Width="100px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("TripPictures") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDPerson" InsertVisible="False" SortExpression="IDPerson" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("IDPerson") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("IDPerson") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pick Trip">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99FF66" ForeColor="#99FF66" />
        <HeaderStyle BackColor="#CCFF66" BorderColor="Black" Font-Bold="True" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFFCC" BorderColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    &nbsp;<asp:Label ID="lblOrder" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#663300" Text="Order --&gt;"></asp:Label>
    
    <asp:ImageButton ID="ibtOrder" runat="server" OnClick="ibtOrder_Click" Height="75px" ImageUrl="~/Images/Order.png" Width="75px" />
    <br />
</asp:Content>

