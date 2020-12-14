<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="UdemyWeb.Istatistikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
<div class="form-group">

            <div>
               
                <asp:textbox ID="TxtToplamOgr" runat="server" cssclass="form-control" Enabled="False">Toplam Öğrenci Sayısı:</asp:textbox>
         </div>
     
            <br />
         <div>
                
                <asp:textbox ID="TxtToplamOgrt" runat="server" cssclass="form-control" Enabled="false" >Toplam Öğretmen Sayısı:</asp:textbox>
         </div>
     
            <br />
             <div>
                
                <asp:textbox ID="TxtToplamDers" runat="server" cssclass="form-control" Enabled="false" >Toplam Ders Sayısı:</asp:textbox>
         </div>
            <br />
      <div>
                
                <asp:textbox ID="TxtBestStudent" runat="server" cssclass="form-control" Enabled="false" >En Başarılı Öğrenci:</asp:textbox>
         </div>
            <br />
      <div>
                
                <asp:textbox ID="TxtBestLesson" runat="server" cssclass="form-control" Enabled="false" >En Başarılı Ders</asp:textbox>
         </div>
            <br />
      <div>
                
                <asp:textbox ID="TxtMsJSay" runat="server" cssclass="form-control" Enabled="false" >Sistemdeki Mesaj Sayısı:</asp:textbox>
         </div>
            <br />
      <div>
                
                <asp:textbox ID="TxtMatNotOrt" runat="server" cssclass="form-control" Enabled="false" >Matematik Not Ortalaması:</asp:textbox>
         </div>
            <br />
      
            
             
         </form>
</asp:Content>
