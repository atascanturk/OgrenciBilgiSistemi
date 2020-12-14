<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="UdemyWeb.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
<div class="form-group">

        
             <div>
                <asp:label for="TxtDersAd">DersAdı</asp:label>
                <asp:textbox ID="TxtDersAd" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
                        
         <asp:button runat="server" text="Oluştur" CssClass ="btn btn-info" OnClick="Unnamed1_Click"  />
         </form>
</asp:Content>
