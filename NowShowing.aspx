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
            <asp:Label ID="Date1" runat="server" CssClass="label">FEBRUARY 20, 2022</asp:Label><br /><br />
        </div>
        
        <div class="align">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/junglecruise.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name2" runat="server" CssClass="label">Jungle Cruise</asp:Label> <br />
            <asp:Label ID="Time2" runat="server" CssClass="label">3:30 PM - 5:10 PM</asp:Label> <br />
            <asp:Label ID="Date2" runat="server" CssClass="label">FEBRUARY 20, 2022 </asp:Label><br /><br />
        </div>

        <div class="align">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/lovelybones.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name3" runat="server" CssClass="label">The Lovely Bones</asp:Label><br />
            <asp:Label ID="Time3" runat="server" CssClass="label">5:10 PM - 7:30 PM</asp:Label><br />
            <asp:Label ID="Date3" runat="server" CssClass="label">FEBRUARY 20, 2022</asp:Label> <br /><br />
            
        </div>
    

        <div>
            <h2 class="css-reflects">Buy Ticket</h2>
            </div>
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
                <asp:TextBox ID="QuantityTB" runat="server" CssClass="textbox" OnTextChanged="QuantityTB_TextChanged"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="QuantityTB" Type="Integer" MaximumValue="20" MinimumValue="1">
                    <span style="color: red;">Invalid value</span></asp:RangeValidator>
            <br />
            <center>
                <div class="rectangle">
                    <asp:Label ID="Label1" runat="server" Text="SCREEN"></asp:Label>
                </div>
            <asp:CheckBoxList ID="ParkingLotCBL" runat="server" AutoPostBack="True" 
                RepeatColumns="4" Width="554px" OnSelectedIndexChanged="ParkingLotCBL_SelectedIndexChanged">
                <asp:ListItem>Lot 1</asp:ListItem>
                <asp:ListItem>Lot 2</asp:ListItem>
                <asp:ListItem>Lot 3</asp:ListItem>
                <asp:ListItem>Lot 4</asp:ListItem>
                <asp:ListItem>Lot 5</asp:ListItem>
                <asp:ListItem>Lot 6</asp:ListItem>
                <asp:ListItem>Lot 7</asp:ListItem>
                <asp:ListItem>Lot 8</asp:ListItem>
                <asp:ListItem>Lot 9</asp:ListItem>
                <asp:ListItem>Lot 10</asp:ListItem>
                <asp:ListItem>Lot 11</asp:ListItem>
                <asp:ListItem>Lot 12</asp:ListItem>
                <asp:ListItem>Lot 13</asp:ListItem>
                <asp:ListItem>Lot 14</asp:ListItem>
                <asp:ListItem>Lot 15</asp:ListItem>
                <asp:ListItem>Lot 16</asp:ListItem>
                <asp:ListItem>Lot 17</asp:ListItem>
                <asp:ListItem>Lot 18</asp:ListItem>
                <asp:ListItem>Lot 19</asp:ListItem>
                <asp:ListItem>Lot 20</asp:ListItem>
                </asp:CheckBoxList>
        </center>
            <asp:Label ID="Label2" runat="server" Text="Total" CssClass="labelz"></asp:Label>
            <asp:TextBox ID="Total" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
            <br /><br />
            <center>
                <asp:Button ID="Purchase" runat="server" Text="Purchase" class="button" OnClick="Purchase_Click"/>
                <asp:Button ID="Cancel" runat="server" Text="Cancel" class="button" OnClick="Cancel_Click"/>
            </center>
            </div>
    </form>

</asp:Content>
