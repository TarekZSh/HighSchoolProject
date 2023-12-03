<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfUpdDelMorshd.aspx.cs" Inherits="PagesForAdmin_wfUpdDelMorshd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblMorshd] WHERE [IDMorshd] = ?" InsertCommand="INSERT INTO [tblMorshd] ([IDMorshd], [Name], [Birthday], [Picture], [UserName], [Password]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDMorshd], [Name], [Birthday], [Picture], [UserName], [Password] FROM [tblMorshd]" UpdateCommand="UPDATE [tblMorshd] SET [Name] = ?, [Birthday] = ?, [Picture] = ?, [UserName] = ?, [Password] = ? WHERE [IDMorshd] = ?">
        <DeleteParameters>
            <asp:Parameter Name="IDMorshd" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDMorshd" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Birthday" Type="DateTime" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Birthday" Type="DateTime" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IDMorshd" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellPadding="3" CellSpacing="2" DataKeyNames="IDMorshd" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowEditing="GridView1_RowEditing" PageSize="5" >
        <RowStyle BackColor="#FFFFCC" ForeColor="Black" HorizontalAlign="Center" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" Height="50px" ImageUrl="~/Images/Edit.png" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Height="50px" ImageUrl="~/Images/Cancel.jpg" Width="50px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" Height="50px" ImageUrl="~/Images/Edit.png" Text="Edit" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" Height="50px" ImageUrl="~/Images/delet.jpg" Text="Delete" Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="IDMorshd" HeaderText="IDMorshd" InsertVisible="False" ReadOnly="True" SortExpression="IDMorshd" Visible="False" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" Width="189px"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" Width="189px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wrong Date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Birthday") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="PicName" DataValueField="PicName" SelectedValue='<%# Bind("Picture") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FillFiles" TypeName="PicList"></asp:ObjectDataSource>
                    &nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# @"../Images/"+Eval("Picture") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="UserName and Password already exist" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="UserName and Password already exist" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99FF66" ForeColor="#99FF66" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CCFF66" Font-Bold="True" ForeColor="Black" />
    </asp:GridView>
</asp:Content>

