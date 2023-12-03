<%@ Page Title="" Language="C#" MasterPageFile="~/PagesForAdmin/mpAdmin.master" AutoEventWireup="true" CodeFile="wfUpdDelTrip.aspx.cs" Inherits="PagesForAdmin_wfUpdDelTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblTrip] WHERE [IDTrip] = ?" InsertCommand="INSERT INTO [tblTrip] ([IDTrip], [TripTypeCode], [TripName], [TripPrice], [TripDate], [TripPlace], [IDMorshd], [TripPictures]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDTrip], [TripTypeCode], [TripName], [TripPrice], [TripDate], [TripPlace], [IDMorshd], [TripPictures] FROM [tblTrip]" UpdateCommand="UPDATE [tblTrip] SET [TripTypeCode] = ?, [TripName] = ?, [TripPrice] = ?, [TripDate] = ?, [TripPlace] = ?, [IDMorshd] = ?, [TripPictures] = ? WHERE [IDTrip] = ?">
        <DeleteParameters>
            <asp:Parameter Name="IDTrip" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDTrip" Type="Int32" />
            <asp:Parameter Name="TripTypeCode" Type="Int32" />
            <asp:Parameter Name="TripName" Type="String" />
            <asp:Parameter Name="TripPrice" Type="Int32" />
            <asp:Parameter Name="TripDate" Type="DateTime" />
            <asp:Parameter Name="TripPlace" Type="String" />
            <asp:Parameter Name="IDMorshd" Type="Int32" />
            <asp:Parameter Name="TripPictures" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TripTypeCode" Type="Int32" />
            <asp:Parameter Name="TripName" Type="String" />
            <asp:Parameter Name="TripPrice" Type="Int32" />
            <asp:Parameter Name="TripDate" Type="DateTime" />
            <asp:Parameter Name="TripPlace" Type="String" />
            <asp:Parameter Name="IDMorshd" Type="Int32" />
            <asp:Parameter Name="TripPictures" Type="String" />
            <asp:Parameter Name="IDTrip" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#663300" BorderColor="Black" BorderWidth="2px" CellPadding="3" CellSpacing="2" DataKeyNames="IDTrip" DataSourceID="SqlDataSource1"  EnableModelValidation="True"  PageSize="5">
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
            <asp:BoundField DataField="IDTrip" HeaderText="IDTrip" InsertVisible="False" ReadOnly="True" SortExpression="IDTrip" Visible="False" />
            <asp:TemplateField HeaderText="TripTypeCode" SortExpression="TripTypeCode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TripTypeCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TripTypeCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripName" SortExpression="TripName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TripName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TripName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPrice" SortExpression="TripPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TripPrice") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TripPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripDate" SortExpression="TripDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TripDate") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" Width="191px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Wrong date" Operator="DataTypeCheck" Type="Date" Width="235px"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TripDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPlace" SortExpression="TripPlace">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TripPlace") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("TripPlace") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TripPictures" SortExpression="TripPictures">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("TripPictures") %>'></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="PicName" DataValueField="PicName" SelectedValue='<%# Bind("TripPictures") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FillFiles" TypeName="PicList"></asp:ObjectDataSource>
                    &nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# @"../Images/"+Eval("TripPictures") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDMorshd" SortExpression="IDMorshd">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("IDMorshd") %>'></asp:TextBox>
                    <asp:DropDownList ID="ddlMorshd" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="IDMorshd">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Trips.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [tblMorshd] WHERE [IDMorshd] = ?" InsertCommand="INSERT INTO [tblMorshd] ([IDMorshd], [Name]) VALUES (?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [IDMorshd], [Name] FROM [tblMorshd]" UpdateCommand="UPDATE [tblMorshd] SET [Name] = ? WHERE [IDMorshd] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="IDMorshd" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IDMorshd" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="IDMorshd" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("IDMorshd") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99FF66" ForeColor="#99FF66" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CCFF66" Font-Bold="True" ForeColor="Black" />
    </asp:GridView>
</asp:Content>

