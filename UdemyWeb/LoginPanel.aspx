<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWeb.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <link href="Bootstrap%20Dosyalar1/Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px; 
            margin:auto;            
            height: 180px;

            
            
        }
        .auto-style2 {
            width: 1359px;
            height: 623px;
            margin-right: 0px;
           
        }
        .newStyle1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2"  style="background-image: none; background-repeat: repeat; background-color: #66FFFF;"  >
        
        <div class="auto-style1" >
           <div class =" text-center"  >
                <br />
                <br />
                <br />
                <br />
                <br />
            <h4><b class="newStyle1">Sınav Sistemi Giriş Ekranı </b> </h4> 
            </div>
             <div >
                 <b>
                <asp:label for="TxtNumara" >Kullanıcı Adı</asp:label> </b>
                <asp:textbox ID="TxtNumara" runat="server" cssclass="form-control"  ></asp:textbox>

         </div>
            <br />
             <div>
                 <b>
                <asp:label for="TxtSifre">Şifre</asp:label></b>
                <asp:textbox ID="TxtSifre" runat="server" cssclass="form-control" TextMode="Password"></asp:textbox>
                 <asp:Label ID="Label1" runat="server" ></asp:Label>
         </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass ="btn btn-warning" Width="700px" OnClick="Button1_Click"  />
            <div class ="text-center">

            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass ="btn alert-info" Width="300px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass ="btn alert-dismissible" Width="300px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass ="btn alert-danger" Width="300px" />
                </div>
        </div>
    </form>
</body>
</html>
