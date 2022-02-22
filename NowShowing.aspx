<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="NowShowing.aspx.cs" Inherits="Group_6_IT114L_MP.Movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="nsform" runat="server" class="movcontainer">
    <center>
        <h2 class="css-reflects">NOW SHOWING</h2>
    
        <div class="align">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/spiderman.jpg" CssClass="shadow" /> 
            <br /><br />
            <asp:Label ID="Name1" runat="server" CssClass="label">Spider-Man: No Way Home</asp:Label><br />
            <asp:Label ID="Time1" runat="server" CssClass="label">1:00 PM - 3:30 PM</asp:Label><br />
            <asp:Label ID="Date1" runat="server" CssClass="label">FEBRUARY 20 2022</asp:Label><br /><br />
        </div>
        
        <div class="align">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/junglecruise.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name2" runat="server" CssClass="label">Jungle Cruise</asp:Label> <br />
            <asp:Label ID="Time2" runat="server" CssClass="label">3:30 PM - 5:10 PM</asp:Label> <br />
            <asp:Label ID="Date2" runat="server" CssClass="label">FEBRUARY 20 2022 </asp:Label><br /><br />
        </div>

        <div class="align">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/lovelybones.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name3" runat="server" CssClass="label">The Lovely Bones</asp:Label><br />
            <asp:Label ID="Time3" runat="server" CssClass="label">5:10 PM - 7:30 PM</asp:Label><br />
            <asp:Label ID="Date3" runat="server" CssClass="label">FEBRUARY 20 2022</asp:Label> <br /><br />
            
        </div>
    

        <div id="BuyTix" runat="server">
            <h2 class="css-reflects">Buy Ticket</h2>
            </center>
            <div class="container">
                
                <asp:Label ID="Label4" runat="server" Text="Movie" CssClass="labelz"></asp:Label>
                <asp:DropDownList ID="MovieDDL" runat="server" CssClass="dropdown">
                    <asp:ListItem>Select a movie</asp:ListItem>
                    <asp:ListItem>Spider-Man: No Way Home</asp:ListItem>
                    <asp:ListItem>Jungle Cruise</asp:ListItem>
                    <asp:ListItem>The Lovely Bones</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Quantity [1-20]" CssClass="labelz"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="QuantityTB"><span style="color: red;">*</span></asp:RequiredFieldValidator>
                <asp:TextBox ID="QuantityTB" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="QuantityTB" Type="Integer" MaximumValue="20" MinimumValue="1">
                    <span style="color: red;">Invalid value</span></asp:RangeValidator>
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

            <center>
                <asp:Button ID="Purchase" runat="server" Text="Purchase" class="button" OnClick="Purchase_Click"/>
                <asp:Button ID="Cancel" runat="server" Text="Cancel" class="button"/>
            </center>
            </div>
        </div>
    </form>

</asp:Content>
