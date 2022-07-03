<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Slips.aspx.cs" Inherits="Popeye_Marina.Slips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Slip Add Form</h3>
     
    <asp:Label ID="sliptype" runat="server" Text="Slip Type" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="typefield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="slipdoor" runat="server" Text="Slip Door" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="doorfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="slipwidth" runat="server" Text="Slip Width" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="widthfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />
    
    <asp:Label ID="sliplength" runat="server" Text="Slip Length" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="lengthfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Label ID="slipheight" runat="server" Text="Slip Height" style="font-weight: 700" Font-Names="Cambria"></asp:Label> <br />
    <asp:TextBox ID="heightfield" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />

    <asp:Button ID="button" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="addSlip" />

    <asp:SqlDataSource ID="SqlDataSrcForm" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Slip] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Slip] ([Type], [Door], [Width], [Length], [Height]) VALUES (@Type, @Door, @Width, @Length, @Height)" SelectCommand="SELECT * FROM [Slip]" UpdateCommand="UPDATE [Slip] SET [Type] = @Type, [Door] = @Door, [Width] = @Width, [Length] = @Length, [Height] = @Height WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="typefield" Name="Type" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="doorfield" Name="Door" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="widthfield" Name="Width" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lengthfield" Name="Length" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="heightfield" Name="Height" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Door" Type="String" />
            <asp:Parameter Name="Width" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h3>Manage Slips</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSrcGrid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Door" HeaderText="Door" SortExpression="Door" />
            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
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

    <asp:SqlDataSource ID="SqlDataSrcGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Slip] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Slip] ([Type], [Door], [Width], [Length], [Height]) VALUES (@Type, @Door, @Width, @Length, @Height)" SelectCommand="SELECT * FROM [Slip]" UpdateCommand="UPDATE [Slip] SET [Type] = @Type, [Door] = @Door, [Width] = @Width, [Length] = @Length, [Height] = @Height WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Door" Type="String" />
            <asp:Parameter Name="Width" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Door" Type="String" />
            <asp:Parameter Name="Width" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
