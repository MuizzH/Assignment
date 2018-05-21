<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Try.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Upload image
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="imageFileUploadControl" runat="server" Height="38px" Width="305px" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" Height="32px" Width="82px" />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <div>
            <asp:Image ID="CurrentImage" runat="server" Height="151px" Width="150px" ImageAlign="Middle" />
            <br />
            <asp:Button ID="btnBkList" runat="server" OnClick="btnBkList_Click" Text="Back to List" />
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
