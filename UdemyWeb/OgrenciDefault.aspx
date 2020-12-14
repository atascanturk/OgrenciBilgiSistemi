<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="UdemyWeb.OgrenciDefault" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">    
    <div class="row">                                                       
       <figure>
                    <asp:Image ID="Image1" runat="server" class="img-circle img-responsive" Width="200px"
                        Style="margin-left: 170px" />

                </figure>

                <form id="Form1" runat="server" style="margin-left: 50px">
                    <div class="form-group" style="margin-top: 30px;">

                        <div>

                            <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Enabled="False" Width="500px">Numara</asp:TextBox>
                        </div>

                        <br />
                        <div>

                            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control" Enabled="false" Width="500px">Öğrenci Adı</asp:TextBox>
                        </div>

                        <br />
                       

                     
                        <div>

                            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="false" Width="500px">Mail</asp:TextBox>
                        </div>
                        <br />
                        <div>

                            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="false" Width="500px">Telefon</asp:TextBox>
                        </div>
                        <br />

                    </div>

                    <asp:Button runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Unnamed1_Click" />
                </form>
            </div>
      
</asp:Content>
