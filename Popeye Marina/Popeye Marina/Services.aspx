<%@ Page Title="Services" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Popeye_Marina.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<div class="row"> 

  <div class="col-md-5"> 

    <h2>Our rates for leasing a slip</h2>

    <asp:Table ID="Table1" runat="server" style="width: 100%">
        <asp:TableHeaderRow 
                runat="server" 
                ForeColor="white"
                BackColor="#8bdcf4"
                Font-Bold="true"
                >
                <asp:TableHeaderCell>Length of slip</asp:TableHeaderCell>
                <asp:TableHeaderCell>Width of slip</asp:TableHeaderCell>
                <asp:TableHeaderCell>Daily rate</asp:TableHeaderCell>
                <asp:TableHeaderCell>Weekly rate</asp:TableHeaderCell>
                <asp:TableHeaderCell>Monthly rate</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow 
                ID="TableRow1" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>10 metres</asp:TableCell>
                <asp:TableCell>5 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow 
                ID="TableRow2" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>10 metres</asp:TableCell>
                <asp:TableCell>7 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow 
                ID="TableRow3" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>15 metres</asp:TableCell>
                <asp:TableCell>5 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow 
                ID="TableRow4" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>15 metres</asp:TableCell>
                <asp:TableCell>7 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow 
                ID="TableRow5" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>20 metres</asp:TableCell>
                <asp:TableCell>5 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow 
                ID="TableRow6" 
                runat="server" 
                BackColor="#a5d8ff"
                >
                <asp:TableCell>20 metres</asp:TableCell>
                <asp:TableCell>7 metres</asp:TableCell>
                <asp:TableCell>$100</asp:TableCell>
                <asp:TableCell>$80</asp:TableCell>
                <asp:TableCell>$60</asp:TableCell>
            </asp:TableRow>
    </asp:Table>

    <p>&nbsp;</p>
    <p>The rates are inclusive whether or not the slip has a cover, power, and water. Rates are subject to change. </p>

    <p>Boat hires are subject to availability. Enquire for rates.</p>
 </div>

    <div class="col-md-7"> 
        
        <h4>North Dock</h4>
         <img src="/Images/marinamap.jpg" alt="marina map" style="width: 100%" /> 
    </div>

</div>

</asp:Content>
