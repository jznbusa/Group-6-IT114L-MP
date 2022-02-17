<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Group_6_IT114L_MP.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="movform" runat="server" class="bg-image2">
        <div class="bg-text">
            <h2 class="css-reflects">CATEGORIES</h2>
            <h3>View movies</h3>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" OnClick="LinkButton1_Click">NOW SHOWING</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link" OnClick="LinkButton2_Click">UPCOMING</asp:LinkButton>
         </div>
    </form>
</asp:Content>
