<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfUpdDelPerson.aspx.cs" Inherits="PagesForAdmin_wfUpdDelPerson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblPerson] WHERE [IDPerson] = ?" InsertCommand="INSERT INTO [tblPerson] ([IDPerson], [TZ], [FirstName], [LastName], [Birthday], [Address], [Phone], [Email], [Password], [UserName]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDPerson], [TZ], [FirstName], [LastName], [Birthday], [Address], [Phone], [Email], [Password], [UserName] FROM [tblPerson]" UpdateCommand="UPDATE [tblPerson] SET [TZ] = ?, [FirstName] = ?, [LastName] = ?, [Birthday] = ?, [Address] = ?, [Phone] = ?, [Email] = ?, [Password] = ?, [UserName] = ? WHERE [IDPerson] = ?">
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
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TZ" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Birthday" Type="DateTime" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="IDPerson" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellPadding="3" CellSpacing="2" DataKeyNames="IDPerson" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowEditing="GridView1_RowEditing" PageSize="5" >
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
            <asp:BoundField DataField="IDPerson" HeaderText="IDPerson" InsertVisible="False" ReadOnly="True" SortExpression="IDPerson" Visible="False" />
            <asp:TemplateField HeaderText="TZ" SortExpression="TZ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TZ") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" Width="189px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wrong ID" ValidationExpression="\d{9}" Width="200px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TZ") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" Width="191px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wrong First Name" ValidationExpression="\D{1}\D+" Width="209px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" Width="191px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Wrong First Name" ValidationExpression="\D{1}\D+" Width="209px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" Width="191px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Wrong date" Operator="DataTypeCheck" Type="Date" Width="235px"></asp:CompareValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="The student too young" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Birthday") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field" Style="direction: ltr" Width="195px"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Wrong Phone" ValidationExpression="0\d{1,2}-?\d{7}" Width="249px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Wrong Email" Style="direction: ltr" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="191px"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Required Field" Style="direction: ltr" Width="191px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="UserName and Password already exist" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required Field" Style="direction: ltr" Width="195px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="4-10 letters and digits" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="UserName and Password already exist" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99FF66" ForeColor="#99FF66" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CCFF66" Font-Bold="True" ForeColor="Black" />
    </asp:GridView>
</asp:Content>

