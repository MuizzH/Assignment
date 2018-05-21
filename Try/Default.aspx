<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Try.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Welcome to my Home page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    My Home Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        List of
        Gaming Chairs:<br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        
        <HeaderTemplate><ul id="styleB"></HeaderTemplate>

        <ItemTemplate>
            <li>
                <a href="<%#Eval("ProductID","Product.aspx?Id={0}") %>">
                    <%#Eval("ProductName") %>
                    <asp:Image ID="dspImg" runat="server"  Height="200" ImageUrl='<%# Eval("ProductImages") %>' Alt="productimages" Width="200" />
                </a>
            </li>
        </ItemTemplate>

        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626496_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    <br />
</form>

</asp:Content>
