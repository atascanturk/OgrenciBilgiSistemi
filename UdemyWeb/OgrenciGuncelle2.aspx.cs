using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();
                TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                
            }
           
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            

            if (TxtOgrSifre.Text == TxtOgrSifre2.Text)
                
            {
                DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();
                int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());

                dt.OgrenciGuncelle2(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrMail.Text, TxtOgrTelefon.Text, TxtOgrSifre.Text, id);
                Response.Redirect("OgrenciDefault.aspx?Numara=" + dt.OgrenciSec(id)[0].NUMARA);
            }

            else
            {
                
                label1.Text = "Şifreler aynı değil tekrar deneyin ";


            }
                
           
        }
    }
}