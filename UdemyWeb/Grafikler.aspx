<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="UdemyWeb.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register assembly="DevExpress.XtraCharts.v20.2.Web, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                  


                    <dx:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" Height="300px" PaletteName="Flow" Width="500px">
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
                            <dx:Series Name="Notlar">
                                <ViewSerializable>
                                    <dx:PointSeriesView>
                                    </dx:PointSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                  


                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="0.334177573224313;-0.919814871040348;-0.20558684920719;0;-0.927027931370425;-0.360147256797216;0.104466108765049;0;-0.170131020137363;0.155674520826212;-0.973047213424174;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
<Legend Name="Default Legend" visibility="True"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="OgretmenBrans" LegendTextPattern="{A}">
                                <ViewSerializable>
                                    <dx:Doughnut3DSeriesView>
                                    </dx:Doughnut3DSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                        <CalculatedFields>
                            <dx:ChartCalculatedField DisplayName="CalculatedField1" Name="CalculatedField1" />
                        </CalculatedFields>
                    </dx:WebChartControl>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
<Legend Name="Default Legend" visibility="True"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Cinsiyet" LegendTextPattern="{A}">
                                <ViewSerializable>
                                    <dx:Pie3DSeriesView>
                                    </dx:Pie3DSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                        <CalculatedFields>
                            <dx:ChartCalculatedField DisplayName="CalculatedField1" Name="CalculatedField1" />
                        </CalculatedFields>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="300px" Width="500px" PaletteName="Oriel">
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
                            <dx:Series Name="Dersler">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
