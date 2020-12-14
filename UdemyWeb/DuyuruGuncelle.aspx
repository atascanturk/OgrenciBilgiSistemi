<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="UdemyWeb.DuyuruGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
<div class="form-group">

            <div>
                <asp:label for="TxtDuyID">Duyuru ID</asp:label>
               <asp:textbox ID="TxtDuyID" runat="server" cssclass="form-control"></asp:textbox>
         </div>
     
            <br />
             <div>
                <asp:label for="TxtDuyBaslik">Duyuru Başlık</asp:label>
                <asp:textbox ID="TxtDuyBaslik" runat="server" cssclass="form-control"></asp:textbox>
         </div>
            <br />
            
                               
               <!DOCTYPE html>
<html>
<head>
<style> 
textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}
</style>
</head>
<body>


<asp:label for="TextArea1">Duyuru İçerik</asp:label> 
<form>
  <textarea id="TextArea1" runat="server"> </textarea>
</form>

</body>
</html>

         
         <br />

         <asp:button runat="server" text="Güncelle" CssClass ="btn btn-primary" OnClick ="Unnamed1_Click" />
         </form>
   

</asp:Content>
