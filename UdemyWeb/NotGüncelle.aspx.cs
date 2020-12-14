using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class NotGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                int id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSetTableAdapters.OGRNOTLARTableAdapter dt = new DataSetTableAdapters.OGRNOTLARTableAdapter();
                TxtOgrSınav1.Text = dt.GetNotSec(id)[0].SINAV1.ToString();
                TxtOgrSınav2.Text = dt.GetNotSec(id)[0].SINAV2.ToString();
                TxtOgrSınav3.Text = dt.GetNotSec(id)[0].SINAV3.ToString();
                TxtOrtalama.Text = dt.GetNotSec(id)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.GetNotSec(id)[0].DURUM.ToString();
                TxtOgrAdSoyad.Text = dt.GetNotSec(id)[0].OGRENCI_ADI;
                TxtOgrID.Text = dt.GetNotSec(id)[0].OGRENCIID.ToString();
                TxtDersAd.Text = dt.GetNotSec(id)[0].DERSAD;

            }
                                                  
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSetTableAdapters.OGRNOTLARTableAdapter dt = new DataSetTableAdapters.OGRNOTLARTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtOgrSınav1.Text), byte.Parse(TxtOgrSınav2.Text), byte.Parse(TxtOgrSınav3.Text),
                Convert.ToDecimal(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), id);
            Response.Redirect("NotListesi.aspx");

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtOgrSınav1.Text);
            sinav2 = Convert.ToInt32(TxtOgrSınav2.Text);
            sinav3 = Convert.ToInt32(TxtOgrSınav3.Text);

            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrtalama.Text = ortalama.ToString("0.00");

            if (ortalama >= 50)
            {
                TxtDurum.Text = "True";
            }

            else
            {
                TxtDurum.Text = "False";
            }
            
        }
    }
}