using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrMail.Text, TxtOgrTelefon.Text, TxtOgrSifre.Text,TxtOgrFotograf.Text);

            Response.Redirect("Default.aspx");

          
        }
    }
}