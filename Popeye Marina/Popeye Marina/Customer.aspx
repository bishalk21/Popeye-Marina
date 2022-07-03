<%@ Page Title="Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Popeye_Marina.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
     
    <asp:Label ID="fname" runat="server" Text="Full Name" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="namefield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="email" runat="server" Text="Email" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="emailfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="phone" runat="server" Text="Phone" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="phonefield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />
    
    <asp:Label ID="address" runat="server" Text="Address" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="addfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="dob" runat="server" Text="Date of birth" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="dobfield" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox> 
    <br />

    <asp:Label ID="password" runat="server" Text="Password" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="passwordfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Button ID="button" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="addContact" />  

    <asp:SqlDataSource ID="Sqldatasrcform" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Customer] ([Name], [Email], [Phone], [Address], [Dateofbirth], [Password]) VALUES (@Name, @Email, @Phone, @Address, @Dateofbirth, @Password)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [Address] = @Address, [Dateofbirth] = @Dateofbirth, [Password] = @Password WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="namefield" Name="Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="emailfield" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="phonefield" Name="Phone" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="addfield" Name="Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="dobfield" DbType="Date" Name="Dateofbirth" PropertyName="Text" />
            <asp:ControlParameter ControlID="passwordfield" Name="Password" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="Dateofbirth" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   <br />

    <h3>Manage customers</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqldatasrcgridview" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Cambria" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Dateofbirth" HeaderText="Dateofbirth" SortExpression="Dateofbirth" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <br />

    <asp:SqlDataSource ID="sqldatasrcgridview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Customer] ([Name], [Email], [Phone], [Address], [Date of birth], [Password]) VALUES (@Name, @Email, @Phone, @Address, @Date_of_birth, @Password)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [Address] = @Address, [Date of birth] = @Date_of_birth, [Password] = @Password WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="Date_of_birth" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="Date_of_birth" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
   
</asp:Content>
