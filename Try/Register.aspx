<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Try.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Register Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
        </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
        Register Form
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtRegEmail" runat="server" OnTextChanged="txtRegEmail_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtRegPassword" runat="server"  OnTextChanged="txtRegPassword_TextChanged" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
    <br />
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
