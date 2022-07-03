<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rates.aspx.cs" Inherits="Popeye_Marina.Rates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Rate Plan Add Form</h3>
     
    <asp:Label ID="ratetype" runat="server" Text="Rate Type" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="typefield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="rateprice" runat="server" Text="Rate Price" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="pricefield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Button ID="button" runat="server" Text="Add Rate Plan" CssClass="btn btn-primary" OnClick="addRatePlan" />

    <asp:SqlDataSource ID="SqlDataSrcForm" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Rates] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Rates] ([Type], [Price]) VALUES (@Type, @Price)" SelectCommand="SELECT * FROM [Rates]" UpdateCommand="UPDATE [Rates] SET [Type] = @Type, [Price] = @Price WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="typefield" Name="Type" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="pricefield" Name="Price" PropertyName="Text" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h3>Manage Rate Plans</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSrcGrid" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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

    <asp:SqlDataSource ID="SqlDataSrcGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Rates] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Rates] ([Type], [Price]) VALUES (@Type, @Price)" SelectCommand="SELECT * FROM [Rates]" UpdateCommand="UPDATE [Rates] SET [Type] = @Type, [Price] = @Price WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
