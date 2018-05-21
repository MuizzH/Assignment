<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="Try.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Complete Purchase
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Purchase Complete
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:Button ID="btnConfirmPurchase" runat="server" OnClick="btnConfirmPurchase_Click" Text="Confirm" />
        <br />
        <asp:Literal ID="litInformation" runat="server"></asp:Literal>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
