<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Docks.aspx.cs" Inherits="Popeye_Marina.Docks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Dock Add Form</h3>
     
    <asp:Label ID="docklocation" runat="server" Text="Dock Location" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="locationfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="dockelectricity" runat="server" Text="Dock Electricity" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="electricityfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="dockwater" runat="server" Text="Dock Water" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="waterfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Button ID="button" runat="server" Text="Add Dock" CssClass="btn btn-primary" OnClick="addDock" />

    <asp:SqlDataSource ID="SqlDataSrcForm" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Dock] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Dock] ([Location], [Electricity], [Water]) VALUES (@Location, @Electricity, @Water)" SelectCommand="SELECT * FROM [Dock]" UpdateCommand="UPDATE [Dock] SET [Location] = @Location, [Electricity] = @Electricity, [Water] = @Water WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="locationfield" Name="Location" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="electricityfield" Name="Electricity" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="waterfield" Name="Water" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Electricity" Type="String" />
            <asp:Parameter Name="Water" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h3>Manage Docks</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSrcGrid" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Electricity" HeaderText="Electricity" SortExpression="Electricity" />
            <asp:BoundField DataField="Water" HeaderText="Water" SortExpression="Water" />
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

    <asp:SqlDataSource ID="SqlDataSrcGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Dock] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Dock] ([Location], [Electricity], [Water]) VALUES (@Location, @Electricity, @Water)" SelectCommand="SELECT * FROM [Dock]" UpdateCommand="UPDATE [Dock] SET [Location] = @Location, [Electricity] = @Electricity, [Water] = @Water WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Electricity" Type="String" />
            <asp:Parameter Name="Water" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Electricity" Type="String" />
            <asp:Parameter Name="Water" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
