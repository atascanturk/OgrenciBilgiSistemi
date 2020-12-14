<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciMesajOlustur.aspx.cs" Inherits="UdemyWeb.OgrenciMesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <form id="Form1" runat="server">
<div class="form-group">

            <div>
                <asp:label for="TxtMsjGonderen">Gonderen</asp:label>
                <asp:textbox ID="TxtMsjGonderen" runat="server" cssclass="form-control" Enabled="False"></asp:textbox>
         </div>
     
            <br />
         <div>
                <asp:label for="TxtMsjAlıcı">Alıcı</asp:label>
                <asp:textbox ID="TxtMsjAlıcı" runat="server" cssclass="form-control"></asp:textbox>
         </div>
     
            <br />
             <div>
                <asp:label for="TxtMsjBaslik">Mesaj Başlık</asp:label>
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


<asp:label for="TextArea1">Mesaj </asp:label> 
<form>
  <textarea id="TextArea1" runat="server"> </textarea>
</form>

</body>
</html>

         
         <br />

         <asp:button runat="server" text="Gönder" CssClass ="btn btn-info" OnClick="Unnamed1_Click"   />
         </form>
</asp:Content>
