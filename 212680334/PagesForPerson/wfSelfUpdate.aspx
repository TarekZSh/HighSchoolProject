<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForPerson/mpPerson.master" AutoEventWireup="true" CodeFile="wfSelfUpdate.aspx.cs" Inherits="PagesForPerson_wfSelfUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblPerson] WHERE [IDPerson] = ?" InsertCommand="INSERT INTO [tblPerson] ([IDPerson], [TZ], [FirstName], [LastName], [Birthday], [Address], [Phone], [Email], [UserName], [Password]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDPerson], [TZ], [FirstName], [LastName], [Birthday], [Address], [Phone], [Email], [UserName], [Password] FROM [tblPerson] WHERE ([IDPerson] = ?)" UpdateCommand="UPDATE [tblPerson] SET [TZ] = ?, [FirstName] = ?, [LastName] = ?, [Birthday] = ?, [Address] = ?, [Phone] = ?, [Email] = ?, [UserName] = ?, [Password] = ? WHERE [IDPerson] = ?">
    <DeleteParameters>
        <asp:Parameter Name="IDPerson" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IDPerson" Type="Int32" />
        <asp:Parameter Name="TZ" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Birthday" Type="DateTime" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="IDPerson" SessionField="IDPerson" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="TZ" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Birthday" Type="DateTime" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="IDPerson" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="IDPerson" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#663300" Height="50px" OnModeChanging="DetailsView1_ModeChanging"  Width="125px" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellSpacing="2">
    <FooterStyle BackColor="#99FF66" Font-Bold="True" ForeColor="#99FF66" />
    <CommandRowStyle BackColor="#CCFF66" Font-Bold="True" />
    <RowStyle BackColor="#FFFFCC" ForeColor="Black" Font-Bold="False" HorizontalAlign="Center" />
        <EmptyDataRowStyle BackColor="#CCFF66" />
    <FieldHeaderStyle BackColor="#CCFF66" Font-Bold="True" />
        <InsertRowStyle BackColor="#663300" />
    <PagerStyle BackColor="#663300" ForeColor="#663300" HorizontalAlign="Center" />
    <Fields>
        <asp:BoundField DataField="IDPerson" HeaderText="IDPerson" InsertVisible="False" ReadOnly="True" SortExpression="IDPerson" Visible="False" />
        <asp:TemplateField HeaderText="TZ" SortExpression="TZ">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TZ") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TZ") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TZ") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Birthday") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address" SortExpression="Address">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Password" SortExpression="Password">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" Height="50px" Width="50px" ImageUrl="~/Images/Edit.png" />
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Height="50px" Width="50px" ImageUrl="~/Images/Cancel.jpg" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/Images/Edit.png" Text="Edit" Height="50px" Width="50px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Fields>
    <HeaderStyle BackColor="#663300" Font-Bold="True" ForeColor="Black" />
    <EditRowStyle BackColor="#CCFF66" />
    <AlternatingRowStyle BackColor="#FFFFCC" ForeColor="Black" />
</asp:DetailsView>
</asp:Content>

