using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UdemyWeb
{
    public partial class BasariGrafik : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
                DropDownList1.DataSource = dt.GetDersListesi();
                DropDownList1.DataTextField = "DERSAD";
                DropDownList1.DataValueField = "DERSID";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Ders Seçiniz", string.Empty));

            }




        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            WebChartControl1.Series["BasariGrafik"].Points.Clear();
            Getir(DropDownList1.SelectedValue);




        }



        private void Getir(string id)
        {


            try
            {
                baglanti.Open();
                SqlCommand komut3 = new SqlCommand("SELECT (OGRENCI.OGRAD + ' ' + OGRENCI.OGRSOYAD) AS 'OGRENCI_ADI',SINAV1 FROM NOTLAR INNER JOIN OGRENCI ON OGRENCIID = OGRID WHERE DERSNOTID =" + id, baglanti);
                SqlDataReader dr3 = komut3.ExecuteReader();
                while (dr3.Read())
                {
                    WebChartControl1.Series["BasariGrafik"].Points.AddPoint(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
                }

                baglanti.Close();
            }

            catch
            {

            }

        }

    }
}