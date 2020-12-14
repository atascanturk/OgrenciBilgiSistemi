using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                TxtNumara.Text = Session["Numara"].ToString();
                DataSetTableAdapters.OGRENCIEKTableAdapter dt = new DataSetTableAdapters.OGRENCIEKTableAdapter();
                TxtOgrAd.Text = "Adınız: " + dt.GetOgrenciPanel(TxtNumara.Text)[0].OGRENCI_ADI;                
                TxtMail.Text = "Mail: " + dt.GetOgrenciPanel(TxtNumara.Text)[0].OGRMAIL;
                TxtTelefon.Text = "Telefon: " + dt.GetOgrenciPanel(TxtNumara.Text)[0].OGRTELEFON;
                Image1.ImageUrl = dt.GetOgrenciPanel(TxtNumara.Text)[0].OGRFOTOGRAF;
            }
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.OGRENCIEKTableAdapter dt = new DataSetTableAdapters.OGRENCIEKTableAdapter();
            Response.Redirect("OgrenciGuncelle2.aspx?OGRID=" + dt.GetOgrenciPanel(TxtNumara.Text)[0].OGRID);
        }
    }
}