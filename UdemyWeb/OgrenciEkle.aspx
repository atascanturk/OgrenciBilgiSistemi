<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="UdemyWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:label for="TxtOgrAd">Öğrenci Adı</asp:label>
                <asp:textbox ID="TxtOgrAd" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
             <div>
                <asp:label for="TxtOgrSoyad">Öğrenci Soyadı</asp:label>
                <asp:textbox ID="TxtOgrSoyad" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
            <div>
                <asp:label for="TxtOgrTelefon">Telefon</asp:label>
                <asp:textbox ID="TxtOgrTelefon" runat="server" cssclass="form-control"></asp:textbox>
           </div>
            <br />
         <div>
                <asp:label for="TxtOgrMail">Mail</asp:label>
                <asp:textbox ID="TxtOgrMail" runat="server" cssclass="form-control"></asp:textbox>
           </div>
            <br />
         <div>
                <asp:label for="TxtOgrSifre">Şifre</asp:label>
                <asp:textbox ID="TxtOgrSifre" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <br />
         <div>
                <asp:label for="TxtOgrFotograf">Öğrenci Fotoğraf Linki</asp:label>
                <asp:textbox ID="TxtOgrFotograf" runat="server" cssclass="form-control"></asp:textbox>
        
       
            </div>

         <br />

         <asp:button runat="server" text="Kaydet" CssClass ="btn btn-info" OnClick="Unnamed1_Click"/>
    </form>
</asp:Content>
