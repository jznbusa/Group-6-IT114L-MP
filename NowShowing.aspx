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
            <asp:Label ID="Name1" runat="server" CssClass="label">
            Spider-Man: No Way Home</asp:Label><br />
            <asp:Label ID="Time1" runat="server" CssClass="label">
            1:00 PM - 3:30 PM</asp:Label><br />
            <asp:Label ID="Date1" runat="server" CssClass="label">
            FEBRUARY 20 2022</asp:Label><br /><br />
            <asp:Button ID="Movie1" runat="server" Text="Buy ticket" class="button"/>
        </div>
        
        <div class="align">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/junglecruise.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name2" runat="server" CssClass="label">
            Jungle Cruise</asp:Label> <br />
            <asp:Label ID="Time2" runat="server" CssClass="label">
            3:30 PM - 5:10 PM</asp:Label> <br />
            <asp:Label ID="Date2" runat="server" CssClass="label">
            FEBRUARY 20 2022 </asp:Label><br /><br />
            <asp:Button ID="Movie2" runat="server" Text="Buy ticket" class="button"/>
        </div>

        <div class="align">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/lovelybones.jpg" CssClass="shadow" />
            <br /><br />
            <asp:Label ID="Name3" runat="server" CssClass="label">
                The Lovely Bones</asp:Label><br />
            <asp:Label ID="Time3" runat="server" CssClass="label">    
            5:10 PM - 7:30 PM</asp:Label><br />
            <asp:Label ID="Date3" runat="server" CssClass="label">    
            FEBRUARY 20 2022</asp:Label> <br /><br />
            <asp:Button ID="Movie3" runat="server" Text="Buy ticket" class="button"/>
        </div>
        </center>
    </form>
    

</asp:Content>
