<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Group_6_IT114L_MP.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="cartform" runat="server" class="container">
        <center>
            <h1>My Cart</h1>
            <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" AutoGenerateColumns="False" DataSourceID="CinemaDataSource">
                <Columns>
                    <asp:BoundField DataField="Mov_name" HeaderText="Movie" SortExpression="Mov_name" />
                    <asp:BoundField DataField="Mov_time" HeaderText="Time" SortExpression="Mov_time" />
                    <asp:BoundField DataField="Mov_date" HeaderText="Date" SortExpression="Mov_date" />
                    <asp:BoundField DataField="Parkingspace" HeaderText="Parking Lot" SortExpression="Parkingspace" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="CinemaDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" ProviderName="<%$ ConnectionStrings:CinemaConnectionString.ProviderName %>" SelectCommand="SELECT [Mov_name], [Mov_time], [Mov_date], [Parkingspace], [Total] FROM [MovieChoice]"></asp:SqlDataSource>
            <br />
        <asp:Button ID="Purchase" runat="server" Text="Purchase" class="button"/>
        <asp:Button ID="Back" runat="server" Text="Back to Main" class="button"/>
            </center>
        </form>
</asp:Content>
