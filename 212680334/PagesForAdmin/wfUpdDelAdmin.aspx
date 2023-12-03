<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfUpdDelAdmin.aspx.cs" Inherits="PagesForAdmin_wfUpdDelAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblAdmins] WHERE [IDAdmin] = ?" InsertCommand="INSERT INTO [tblAdmins] ([Name], [Email], [UserName], [Password], [IDAdmin]) VALUES (?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Name], [Email], [UserName], [Password], [IDAdmin] FROM [tblAdmins]" UpdateCommand="UPDATE [tblAdmins] SET [Name] = ?, [Email] = ?, [UserName] = ?, [Password] = ? WHERE [IDAdmin] = ?">
        <DeleteParameters>
            <asp:Parameter Name="IDAdmin" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IDAdmin" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IDAdmin" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellPadding="3" CellSpacing="2" DataKeyNames="IDAdmin" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowEditing="GridView1_RowEditing" PageSize="5">
        <RowStyle BackColor="#FFFFCC" ForeColor="Black" HorizontalAlign="Center" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" Height="50px" ImageUrl="~/Images/Edit.png" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Height="50px" ImageUrl="~/Images/Cancel.jpg" Width="50px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" Height="50px" ImageUrl="~/Images/Edit.png" Text="Edit" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" Height="50px" ImageUrl="~/Images/Delet.jpg" Text="Delete" Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="IDAdmin" HeaderText="IDAdmin" InsertVisible="False" ReadOnly="True" SortExpression="IDAdmin" Visible="False" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wrong Email" Style="direction: ltr" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="191px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99FF66" ForeColor="#99FF66" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CCFF66" Font-Bold="True" ForeColor="Black" />
    </asp:GridView>
</asp:Content>

