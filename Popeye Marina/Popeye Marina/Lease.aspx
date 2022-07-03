<%@ Page Title="Lease" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lease.aspx.cs" Inherits="Popeye_Marina.Lease" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Create a new lease</h2>

        <div class="row"> 

            <div class="col-md-3"> 

                <asp:Label ID="selcust" runat="server" Text="Select customer" style="font-weight: 700"></asp:Label><br />
                <asp:DropDownList ID="cusdropdown" runat="server" CssClass="form-control" DataSourceID="SqlLeaseCustomer" DataTextField="Id" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlLeaseCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [Customer]"></asp:SqlDataSource>
                <br />

                <asp:Label ID="selboat" runat="server" Text="Select boat" style="font-weight: 700"></asp:Label><br />
                <asp:DropDownList ID="boatdropdown" runat="server" CssClass="form-control" DataSourceID="SqlLeaseBoat" DataTextField="Id" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlLeaseBoat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [Boats]"></asp:SqlDataSource>
                <br />

                <asp:Label ID="seldock" runat="server" Text="Select dock" style="font-weight: 700"></asp:Label><br />
                <asp:DropDownList ID="dockdropdown" runat="server" CssClass="form-control" DataSourceID="SqlLeaseDock" DataTextField="id" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlLeaseDock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dock]"></asp:SqlDataSource>
                <br />

                <asp:Label ID="selslip" runat="server" Text="Select slip" style="font-weight: 700"></asp:Label><br />
                <asp:DropDownList ID="slipdropdown" runat="server" CssClass="form-control" DataSourceID="SqlLeaseSlip" DataTextField="id" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlLeaseSlip" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Slip]"></asp:SqlDataSource>
                <br />

                <asp:Label ID="selrate" runat="server" Text="Select rate plan" style="font-weight: 700"></asp:Label><br />
                <asp:DropDownList ID="ratedropdown" runat="server" CssClass="form-control" DataSourceID="SqlLeaseRate" DataTextField="Type" DataValueField="Price" OnSelectedIndexChanged="refreshDaysAndCost" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlLeaseRate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rates]"></asp:SqlDataSource>
                <br />

            </div>

            <div class="col-md-3"> 

                <asp:Label ID="selstart" runat="server" Text="Select start date" style="font-weight: 700"></asp:Label><br />
                <asp:Calendar ID="startcal" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Cambria" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="100%" OnSelectionChanged="refreshDaysAndCost">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>

            </div>

            <div class="col-md-3"> 

                <asp:Label ID="selend" runat="server" Text="Select end date" style="font-weight: 700"></asp:Label><br />
                <asp:Calendar ID="endcal" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Cambria" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="100%" OnSelectionChanged="refreshDaysAndCost">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>

             </div>

             <div class="col-md-3"> 

                <strong>Number of days</strong><br />
                <asp:TextBox ID="days" runat="server" CssClass="form-control"></asp:TextBox>
                <br />

                <strong>Total amount (AUD)</strong><br />
                <asp:TextBox ID="amount" runat="server" CssClass="form-control"></asp:TextBox>
                <br />

                <asp:Button ID="leasesub" runat="server" Text="Submit" CssClass="form-control" OnClick="AddLease" />

                <asp:SqlDataSource ID="SqlDataSourceLease" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Lease] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Lease] ([CustomerNo], [BoatNo], [DockNo], [SlipNo], [RatePlan], [StartDate], [EndDate], [NoDays], [TotalAmount]) VALUES (@CustomerNo, @BoatNo, @DockNo, @SlipNo, @RatePlan, @StartDate, @EndDate, @NoDays, @TotalAmount)" SelectCommand="SELECT * FROM [Lease]" UpdateCommand="UPDATE [Lease] SET [CustomerNo] = @CustomerNo, [BoatNo] = @BoatNo, [DockNo] = @DockNo, [SlipNo] = @SlipNo, [RatePlan] = @RatePlan, [StartDate] = @StartDate, [EndDate] = @EndDate, [NoDays] = @NoDays, [TotalAmount] = @TotalAmount WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="cusdropdown" Name="CustomerNo" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="boatdropdown" Name="BoatNo" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="dockdropdown" Name="DockNo" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="slipdropdown" Name="SlipNo" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ratedropdown" Name="RatePlan" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="startcal" Name="StartDate" PropertyName="SelectedDate" Type="String" />
                        <asp:ControlParameter ControlID="endcal" Name="EndDate" PropertyName="SelectedDate" Type="String" />
                        <asp:ControlParameter ControlID="days" Name="NoDays" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="amount" Name="TotalAmount" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerNo" Type="String" />
                        <asp:Parameter Name="BoatNo" Type="String" />
                        <asp:Parameter Name="DockNo" Type="String" />
                        <asp:Parameter Name="SlipNo" Type="String" />
                        <asp:Parameter Name="RatePlan" Type="String" />
                        <asp:Parameter Name="StartDate" Type="String" />
                        <asp:Parameter Name="EndDate" Type="String" />
                        <asp:Parameter Name="NoDays" Type="String" />
                        <asp:Parameter Name="TotalAmount" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

             </div>

        </div>

        <asp:GridView ID="GridViewLease" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLease" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" SortExpression="CustomerNo" />
                <asp:BoundField DataField="BoatNo" HeaderText="BoatNo" SortExpression="BoatNo" />
                <asp:BoundField DataField="DockNo" HeaderText="DockNo" SortExpression="DockNo" />
                <asp:BoundField DataField="SlipNo" HeaderText="SlipNo" SortExpression="SlipNo" />
                <asp:BoundField DataField="RatePlan" HeaderText="RatePlan" SortExpression="RatePlan" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="NoDays" HeaderText="NoDays" SortExpression="NoDays" />
                <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
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


              


    </asp:Content>
