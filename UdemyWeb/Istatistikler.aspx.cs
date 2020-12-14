using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
            TxtToplamOgr.Text = "Toplam Öğrenci Sayısı: " + (Convert.ToString(dt.Istatistik1()));
            TxtToplamOgrt.Text = "Toplam Öğretmen Sayısı: " + (Convert.ToString(dt.Istatistik2()));
            TxtToplamDers.Text = "Toplam Ders Sayısı: " + (Convert.ToString(dt.Istatistik3()));
            TxtBestStudent.Text = "En Başarılı Öğrenci: " + (Convert.ToString(dt.Istatistik4()));
            TxtMsJSay.Text = "Toplam Atılan Mesaj Sayısı: " + (Convert.ToString(dt.Istatistik5()));
            TxtBestLesson.Text = "En Başarılı Ders: " + (Convert.ToString(dt.Istatistik6()));
            TxtMatNotOrt.Text = "Matematik Dersi Not Ortalaması: " + (Convert.ToString(dt.Istatistik7()));

        }
    }
}