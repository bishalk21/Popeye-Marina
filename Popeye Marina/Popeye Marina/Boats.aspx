<%@ Page Title="Boats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Boats.aspx.cs" Inherits="Popeye_Marina.Boats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3> Boat Add Form </h3>
    
    <asp:Label ID="rego" runat="server" Text="Registration number" Font-Names="Cambria" style="font-weight: 700"></asp:Label> <br />
    <asp:TextBox ID="regofield" runat="server" CssClass="form-control"></asp:TextBox>     <br />
    
    <asp:Label ID="boat" runat="server" Text="Boat" Font-Names="Cambria" style="font-weight: 700"></asp:Label>     <br />
    <asp:TextBox ID="boatfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />
    
    <asp:Label ID="boatlength" runat="server" Text="Boat length" Font-Names="cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="blfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />
   
    <asp:Label ID="manu" runat="server" Text="Manufacturer" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="manufield" runat="server" CssClass="form-control"></asp:TextBox>  <br />
    
    <asp:Label ID="yr" runat="server" Text="Year" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="yrfield" runat="server" CssClass="form-control"></asp:TextBox>     <br />
     
    <asp:Label ID="type" runat="server" Text="Type of boat" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:DropDownList ID="typedropdown" runat="server" CssClass="form-control" Width="154px">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Sailboat</asp:ListItem>
        <asp:ListItem>Powerboat</asp:ListItem>
    </asp:DropDownList>    <br />
  
    <asp:Label ID="kpdepth" runat="server" Text="Keep depth" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="kpdepthfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />

    <asp:Label ID="sails" runat="server" Text="Number of sails" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="sailsfield" runat="server" CssClass="form-control"></asp:TextBox>     <br />
  
    <asp:Label ID="motor" runat="server" Text="Type of motor" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="motorfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />
   
    <asp:Label ID="engines" runat="server" Text="Number of engines" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="engfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />

    <asp:Label ID="fuel" runat="server" Text="Type of fuel" Font-Names="Cambria" style="font-weight: 700"></asp:Label>    <br />
    <asp:TextBox ID="fuelfield" runat="server" CssClass="form-control"></asp:TextBox>    <br />

    <asp:Button ID="boatsubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="addBoat" />

    <asp:SqlDataSource ID="Sqldatasrcboats" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Boats] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Boats] ([Registrationnumber], [Boat], [Boatlength], [Manufacturer], [Year], [Keepdepth], [Numberofsails], [Motortype], [Numberofengines], [Fueltype], [Typeofboat]) VALUES (@Registrationnumber, @Boat, @Boatlength, @Manufacturer, @Year, @Keepdepth, @Numberofsails, @Motortype, @Numberofengines, @Fueltype, @Typeofboat)" SelectCommand="SELECT * FROM [Boats]" UpdateCommand="UPDATE [Boats] SET [Registrationnumber] = @Registrationnumber, [Boat] = @Boat, [Boatlength] = @Boatlength, [Manufacturer] = @Manufacturer, [Year] = @Year, [Keepdepth] = @Keepdepth, [Numberofsails] = @Numberofsails, [Motortype] = @Motortype, [Numberofengines] = @Numberofengines, [Fueltype] = @Fueltype, [Typeofboat] = @Typeofboat WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="regofield" Name="Registrationnumber" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="boatfield" Name="Boat" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="blfield" Name="Boatlength" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="manufield" Name="Manufacturer" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="yrfield" Name="Year" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="kpdepthfield" Name="Keepdepth" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="sailsfield" Name="Numberofsails" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="motorfield" Name="Motortype" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="engfield" Name="Numberofengines" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="fuelfield" Name="Fueltype" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="typedropdown" Name="Typeofboat" PropertyName="SelectedValue" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Registrationnumber" Type="String" />
            <asp:Parameter Name="Boat" Type="String" />
            <asp:Parameter Name="Boatlength" Type="String" />
            <asp:Parameter Name="Manufacturer" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Keepdepth" Type="String" />
            <asp:Parameter Name="Numberofsails" Type="String" />
            <asp:Parameter Name="Motortype" Type="String" />
            <asp:Parameter Name="Numberofengines" Type="String" />
            <asp:Parameter Name="Fueltype" Type="String" />
            <asp:Parameter Name="Typeofboat" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h3>Manage Boats</h3>
    
    <asp:GridView ID="GridViewBoats" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="Sqlgridviewboats" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Registrationnumber" HeaderText="Registrationnumber" SortExpression="Registrationnumber" />
            <asp:BoundField DataField="Boat" HeaderText="Boat" SortExpression="Boat" />
            <asp:BoundField DataField="Boatlength" HeaderText="Boatlength" SortExpression="Boatlength" />
            <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Keepdepth" HeaderText="Keepdepth" SortExpression="Keepdepth" />
            <asp:BoundField DataField="Numberofsails" HeaderText="Numberofsails" SortExpression="Numberofsails" />
            <asp:BoundField DataField="Motortype" HeaderText="Motortype" SortExpression="Motortype" />
            <asp:BoundField DataField="Numberofengines" HeaderText="Numberofengines" SortExpression="Numberofengines" />
            <asp:BoundField DataField="Fueltype" HeaderText="Fueltype" SortExpression="Fueltype" />
            <asp:BoundField DataField="Typeofboat" HeaderText="Typeofboat" SortExpression="Typeofboat" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

    <asp:SqlDataSource ID="Sqlgridviewboats" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Boats] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Boats] ([Registrationnumber], [Boat], [Boatlength], [Manufacturer], [Year], [Keepdepth], [Numberofsails], [Motortype], [Numberofengines], [Fueltype], [Typeofboat]) VALUES (@Registrationnumber, @Boat, @Boatlength, @Manufacturer, @Year, @Keepdepth, @Numberofsails, @Motortype, @Numberofengines, @Fueltype, @Typeofboat)" SelectCommand="SELECT * FROM [Boats]" UpdateCommand="UPDATE [Boats] SET [Registrationnumber] = @Registrationnumber, [Boat] = @Boat, [Boatlength] = @Boatlength, [Manufacturer] = @Manufacturer, [Year] = @Year, [Keepdepth] = @Keepdepth, [Numberofsails] = @Numberofsails, [Motortype] = @Motortype, [Numberofengines] = @Numberofengines, [Fueltype] = @Fueltype, [Typeofboat] = @Typeofboat WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Registrationnumber" Type="String" />
            <asp:Parameter Name="Boat" Type="String" />
            <asp:Parameter Name="Boatlength" Type="String" />
            <asp:Parameter Name="Manufacturer" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Keepdepth" Type="String" />
            <asp:Parameter Name="Numberofsails" Type="String" />
            <asp:Parameter Name="Motortype" Type="String" />
            <asp:Parameter Name="Numberofengines" Type="String" />
            <asp:Parameter Name="Fueltype" Type="String" />
            <asp:Parameter Name="Typeofboat" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Registrationnumber" Type="String" />
            <asp:Parameter Name="Boat" Type="String" />
            <asp:Parameter Name="Boatlength" Type="String" />
            <asp:Parameter Name="Manufacturer" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Keepdepth" Type="String" />
            <asp:Parameter Name="Numberofsails" Type="String" />
            <asp:Parameter Name="Motortype" Type="String" />
            <asp:Parameter Name="Numberofengines" Type="String" />
            <asp:Parameter Name="Fueltype" Type="String" />
            <asp:Parameter Name="Typeofboat" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </asp:Content>
