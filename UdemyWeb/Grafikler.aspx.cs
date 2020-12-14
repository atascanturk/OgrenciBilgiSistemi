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
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            //Sorgu1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                WebChartControl2.Series["Dersler"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }

            baglanti.Close();

            //Sorgu2
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("Select OGRCINSIYET, COUNT(*) FROM OGRENCI GROUP BY OGRCINSIYET", baglanti);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while (dr1.Read())
            {
                WebChartControl1.Series["Cinsiyet"].Points.AddPoint(Convert.ToString(dr1[0]), int.Parse(dr1[1].ToString()));
            }

            baglanti.Close();

            //Sorgu3
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select DERSAD, COUNT(*) FROM DERSLER" +
                " INNER JOIN OGRETMEN ON DERSID = OGRTBRANS GROUP BY DERSAD", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                WebChartControl3.Series["OgretmenBrans"].Points.AddPoint(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }

            baglanti.Close();

            //Sorgu4
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("SELECT (OGRENCI.OGRAD + ' ' + OGRENCI.OGRSOYAD) AS 'OGRENCI_ADI',SINAV1 FROM NOTLAR INNER JOIN OGRENCI ON OGRENCIID = OGRID WHERE DERSNOTID = 12", baglanti);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                WebChartControl4.Series["Notlar"].Points.AddPoint(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }

            baglanti.Close();
        }

       
    }
}