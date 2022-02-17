<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Group_6_IT114L_MP.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="cartform" runat="server" class="container">
        <center>
            <h1>My Cart</h1>
            <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid"></asp:GridView>
            
        </center>
        <asp:Button ID="Purchase" runat="server" Text="Purchase" class="button"/>
        <asp:Button ID="Back" runat="server" Text="Back to Main" class="button"/>
        </form>
</asp:Content>
