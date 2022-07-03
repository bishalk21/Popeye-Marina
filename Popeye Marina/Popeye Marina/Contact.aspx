<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Popeye_Marina.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
    <div class="row">
        <div class="col-md-4">
            <h3>Contact us</h3>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Subject" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Comment" CssClass="form-control" Height="146px" Rows="5" TextMode="MultiLine" style="width: 100%"></asp:TextBox>
            <br />
            <asp:Button ID="contactbutton" runat="server" CssClass="btn btn-primary" Text="Submit" />
        </div>

        <div class="col-md-7" style="font-size: 17px; text-align: left; margin-left: 30px;">
            <h3> Testimonials </h3>
            <p><em>&quot;I have rented boats from different marinas in the Brutus area and Popeye Marina is by far the best. With the greatest range of sailboats and powerboats to choose from, and the largest docks, what more could a sailor want?"</em></p>
            <p>&nbsp;<span style="font-style: normal">- Nickky Shiv</span></p>
            <p>&nbsp;</p>
            <p><em>"Every holiday in Olive Oyl Lakes has been enhanced by the professional services of Popeye Marina.We are always looking forward to our vacation thanks to Popeye!&quot; </em></p>
            <p>- Christina San</p>
            <p>&nbsp;</p>
            <p><em>&quot;I would recommend Popeye for amateurs and seasoned sailors. They are ready to help at any time&quot;</em> </p>
            <p><span style="font-style: normal">- Divya Rabz</span></p>
        </div>

    </div>


 


</asp:Content>
