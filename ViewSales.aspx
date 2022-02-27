<%@ Page Title="" Language="C#" MasterPageFile="~/masterAdmin.Master" AutoEventWireup="true" CodeBehind="ViewSales.aspx.cs" Inherits="Group_6_IT114L_MP.ViewSales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <center> <h1>Sales report</h1> 

        <div class="movcontainer">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="TicketSold" BackColor="#FFFFCC" BorderColor="#CC0000" ForeColor="#660033" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                    <EditRowStyle BackColor="#FFFF66" BorderColor="#993366" BorderStyle="Inset" />
                    <EmptyDataRowStyle BorderColor="#993366" BorderStyle="Inset" ForeColor="#990000" />
                    <HeaderStyle BackColor="#ffcc00" Font-Bold="True" BorderStyle="Inset" />
                    <RowStyle BorderColor="#993366" BorderStyle="Inset" />
                </asp:GridView>

            <asp:GridView ID="GridView2" runat="server" DataSourceID="TotalRevenue" BackColor="#FFFFCC" BorderColor="Red" ForeColor="#660033" >
                    <EditRowStyle BackColor="#FFFF66" BorderColor="#993366" BorderStyle="Inset" />
                    <EmptyDataRowStyle BorderColor="#993366" BorderStyle="Inset" />
                    <HeaderStyle BackColor="#ffcc00" Font-Bold="True" />
                    <RowStyle BorderColor="#993366" BorderStyle="Inset" />
                </asp:GridView>

            <asp:SqlDataSource ID="TicketSold" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString2 %>" 
                ProviderName="<%$ ConnectionStrings:CinemaConnectionString2.ProviderName %>" 
                SelectCommand="SELECT COUNT(*) AS TicketSold FROM MovieChoice"></asp:SqlDataSource>

            <asp:SqlDataSource ID="TotalRevenue" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:CinemaConnectionString3.ProviderName %>" 
                SelectCommand="SELECT SUM(Total) AS TotalRevenue FROM MovieChoice"></asp:SqlDataSource>
        <br />
        </div>
            </center>
    </div>
</asp:Content>
