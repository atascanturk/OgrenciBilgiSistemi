<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="UdemyWeb.Galeri" %>
<%@ Register assembly="DevExpress.Web.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <form id="form1" runat="server">
    <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID ="SqlDataSource1" ImageUrlField ="OGRFOTOGRAF" Theme="Material" >
        <SettingsFolder ImageCacheFolder="~/Thumb/" />
    </dx:ASPxImageGallery>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UdemySiteDBConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [OGRENCI]"></asp:SqlDataSource>
</form>



</asp:Content>
