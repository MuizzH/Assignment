<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Try.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="emailTxt" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" BackColor="#CCCCCC" OnTextChanged="txtEmail_TextChanged" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="reqEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is not in valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqEmailField1" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage=" Email is required"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        <br />
        <asp:TextBox ID="txtSubject" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Height="30px" Width="233px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter your subject" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
        <br />
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" placeholder="Your Message" Height="103px" Width="300px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ReqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Body field is required." Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" Height="37px" />
        <br />
        <br />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>



        <br />
        </form>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="GoogleMap">
    <div id="map"></div>
    <script>
        var map;
        function initMap() {


            var collegeLatLng = { lat: 4.885731, lng: 114.931669 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 19,
                center: collegeLatLng
            });

            var contentString1 = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h1 id="firstHeading" class="firstHeading">Laksamana College of Business</h1>' +
                '<div id="bodyContent">' +
                '<p><b>College located here!</b></p>' +
                '</div>' +
                '</div>';

            var infowindow1 = new google.maps.InfoWindow({
                content: contentString1
            });


            var marker1 = new google.maps.Marker({
                position: collegeLatLng,
                map: map,
                title: 'Laksamana College of Business'
            });
            marker1.addListener('click', function () {
                infowindow1.open(map, marker1);
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDp19uaXzLmZhVGIfC4BV0qUaOaNncE6G4&callback=initMap"
    async defer></script>
    </asp:Content>



