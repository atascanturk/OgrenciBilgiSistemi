<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="BasariGrafik.aspx.cs" Inherits="UdemyWeb.BasariGrafik" %>
<%@ Register assembly="DevExpress.XtraCharts.v20.2.Web, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        <br />
        
        
        <br />
        <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
            <DiagramSerializable>
                <dx:XYDiagram>
                    <AxisX VisibleInPanesSerializable="-1">
                    </AxisX>
                    <AxisY VisibleInPanesSerializable="-1">
                    </AxisY>
                </dx:XYDiagram>
            </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
            <SeriesSerializable>
                <dx:Series Name="BasariGrafik">
                </dx:Series>
            </SeriesSerializable>
        </dx:WebChartControl>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UdemySiteDBConnectionString %>" SelectCommand="SELECT (OGRENCI.OGRAD +' ' +OGRENCI.OGRSOYAD) AS 'OGRENCI_ADI', Notlar.ORTALAMA, Dersler.DERSID FROM Notlar INNER JOIN OGRENCI ON Notlar.OGRENCIID = OGRENCI.OGRID INNER JOIN Dersler ON Notlar.DERSNOTID = Dersler.DERSID"></asp:SqlDataSource>
    </form>
</asp:Content>
