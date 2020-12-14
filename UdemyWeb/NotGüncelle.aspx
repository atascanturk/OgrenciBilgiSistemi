<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGüncelle.aspx.cs" Inherits="UdemyWeb.NotGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">
            
             <div>
                <asp:label for="TxtDersAd">Ders Adı</asp:label>
                <asp:textbox ID="TxtDersAd" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
              <div>
                <asp:label for="TxtOgrID">Öğrenci ID</asp:label>
                <asp:textbox ID="TxtOgrID" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <%--<br />--%>
         <div>
                <asp:label for="TxtOgrAdSoyad">Öğrenci Ad Soyad</asp:label>
                <asp:textbox ID="TxtOgrAdSoyad" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
        
       
            <div>
                <asp:label for="TxtOgrSınav1">Sınav 1</asp:label>
                <asp:textbox ID="TxtOgrSınav1" runat="server" cssclass="form-control"></asp:textbox>
           </div>
            <br />
         <div>
                <asp:label for="TxtOgrSınav2">Sınav2</asp:label>
                <asp:textbox ID="TxtOgrSınav2" runat="server" cssclass="form-control"></asp:textbox>
           </div>
            <br />
         <div>
                <asp:label for="TxtOgrSınav3">Sınav3</asp:label>
                <asp:textbox ID="TxtOgrSınav3" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <br />
         <div>
                <asp:label for="TxtOrtalama">Ortalama</asp:label>
                <asp:textbox ID="TxtOrtalama" runat="server" cssclass="form-control"></asp:textbox>
        
       
            </div>
              <br />
         <div>
                <asp:label for="TxtDurum">Durum</asp:label>
                <asp:textbox ID="TxtDurum" runat="server" cssclass="form-control"></asp:textbox>
        
       
            </div>

         <br />

         <asp:button runat="server" text="Hesapla" CssClass ="btn btn-toolbar" OnClick="Unnamed1_Click" />
         <asp:button runat="server" text="Güncelle" CssClass ="btn btn-primary" OnClick="Unnamed2_Click" />
    </form>
</asp:Content>
