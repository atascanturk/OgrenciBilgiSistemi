using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());

                try
                {
                    TxtOgrId.Text = id.ToString();

                    DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();

                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrFotograf.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;
                }
                catch
                {
                    TxtOgrFotograf.Text = "Link girin";

                }
            }
           
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrMail.Text, TxtOgrTelefon.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text,Convert.ToInt32(TxtOgrId.Text));
            Response.Redirect("Default.aspx");
        }
    }
}