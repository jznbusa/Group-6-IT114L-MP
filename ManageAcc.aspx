﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterAdmin.Master" AutoEventWireup="true" CodeBehind="ManageAcc.aspx.cs" Inherits="Group_6_IT114L_MP.ManageAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class ="movcontainer">
            <h1 style="text-align: center;">Manage Accounts</h1> 
            </div>
                <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1">
            <HeaderStyle BackColor="#ffcc00" Font-Bold="True" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" Visible="False" />
                <asp:BoundField DataField="xLastname" HeaderText="Lastname" SortExpression="xLastname" />
                <asp:BoundField DataField="xFirstname" HeaderText="Firstname" SortExpression="xFirstname" />
                <asp:BoundField DataField="xEmail" HeaderText="Email" SortExpression="xEmail" />
                <asp:BoundField DataField="xPassword" HeaderText="Password" SortExpression="xPassword" />
                <asp:TemplateField HeaderText="Payment" SortExpression="Payment">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="xPayment" DataValueField="xPayment" SelectedValue='<%# Bind("xPayment") %>'>
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" ProviderName="<%$ ConnectionStrings:CinemaConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [xPayment] FROM [Users]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("xPayment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="xAddress" HeaderText="Address" SortExpression="xAddress" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" ProviderName="<%$ ConnectionStrings:CinemaConnectionString.ProviderName %>" 
                DeleteCommand="DELETE FROM [Users] WHERE [CustomerId] = ?" 
                InsertCommand="INSERT INTO [Users] ([CustomerId], [xLastname], [xFirstname], [xEmail], [xPassword], [xPayment], [xAddress]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [Users]" 
                UpdateCommand="UPDATE [Users] SET [xLastname] = ?, [xFirstname] = ?, [xEmail] = ?, [xPassword] = ?, [xPayment] = ?, [xAddress] = ? WHERE [CustomerId] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                    <asp:Parameter Name="xLastname" Type="String" />
                    <asp:Parameter Name="xFirstname" Type="String" />
                    <asp:Parameter Name="xEmail" Type="String" />
                    <asp:Parameter Name="xPassword" Type="String" />
                    <asp:Parameter Name="xPayment" Type="String" />
                    <asp:Parameter Name="xAddress" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="xLastname" Type="String" />
                    <asp:Parameter Name="xFirstname" Type="String" />
                    <asp:Parameter Name="xEmail" Type="String" />
                    <asp:Parameter Name="xPassword" Type="String" />
                    <asp:Parameter Name="xPayment" Type="String" />
                    <asp:Parameter Name="xAddress" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
