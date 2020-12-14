<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="UdemyWeb.DuyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
<div class="form-group">

            <div>
                <asp:label for="DropDownList1">Duyuru Öğretmen</asp:label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass ="form-control" ></asp:DropDownList>
         </div>
     
            <br />
             <div>
                <asp:label for="TxtDuyBaslik">Öğrenci Başlık</asp:label>
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

         <asp:button runat="server" text="Oluştur" CssClass ="btn btn-info" OnClick="Unnamed1_Click1"  />
         </form>
   
</asp:Content>

 <%--<textarea id="TextArea1" runat="server" cols="20" rows="5" cssclass="form-control"></textarea>--%>


