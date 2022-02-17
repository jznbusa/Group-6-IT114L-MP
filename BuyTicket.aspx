<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="BuyTicket.aspx.cs" Inherits="Group_6_IT114L_MP.BuyTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="buyTicketform" runat="server" class="container">
        <div class="movcontainer">
            <center>
            <h1>Buy Ticket</h1>
        </center>
            <asp:Label ID="Label3" runat="server" Text="Quantity [1-20]" CssClass="labelz"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Quantity"><span style="color: red;">*</span></asp:RequiredFieldValidator>
            <asp:TextBox ID="Quantity" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="QuantityTB" Type="Integer" MaximumValue="20" MinimumValue="1">
                <span style="color: red;">Invalid value</span>
        </asp:RangeValidator>
            <br />
            <div class="rectangle">
                <asp:Label ID="Label1" runat="server" Text="SCREEN"></asp:Label>
            </div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Lot 1" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Lot 2" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Lot 3" CssClass="parkingspaceCB"/> 
            <asp:CheckBox ID="CheckBox4" runat="server" Text="Lot 4" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox5" runat="server" Text="Lot 5" CssClass="parkingCB"/> 
            <br />
            <asp:CheckBox ID="CheckBox6" runat="server" Text="Lot 6" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox7" runat="server" Text="Lot 7" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox8" runat="server" Text="Lot 8" CssClass="parkingspaceCB"/> 
            <asp:CheckBox ID="CheckBox9" runat="server" Text="Lot 9" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox10" runat="server" Text="Lot 10" CssClass="parkingCB"/> 
            <br /><br />
            <asp:CheckBox ID="CheckBox11" runat="server" Text="Lot 11" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox12" runat="server" Text="Lot 12" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox13" runat="server" Text="Lot 13" CssClass="parkingspaceCB"/> 
            <asp:CheckBox ID="CheckBox14" runat="server" Text="Lot 14" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox15" runat="server" Text="Lot 15" CssClass="parkingCB"/> 
            <br />
            <asp:CheckBox ID="CheckBox16" runat="server" Text="Lot 16" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox17" runat="server" Text="Lot 17" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox18" runat="server" Text="Lot 18" CssClass="parkingspaceCB"/> 
            <asp:CheckBox ID="CheckBox19" runat="server" Text="Lot 19" CssClass="parkingCB"/> 
            <asp:CheckBox ID="CheckBox20" runat="server" Text="Lot 20" CssClass="parkingCB"/> 
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Total" CssClass="labelz"></asp:Label>
            <asp:TextBox ID="Total" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Register" runat="server" Text="Purchase" class="button"/>
            <asp:Button ID="Cancel" runat="server" Text="Cancel" class="button"/>
        </div>
        </form>
</asp:Content>
