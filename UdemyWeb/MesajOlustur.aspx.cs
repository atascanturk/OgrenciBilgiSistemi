using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtMsjGonderen.Text = Session["Ogrnumara"].ToString();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarTableAdapter dt = new DataSetTableAdapters.MesajlarTableAdapter();
            dt.MesajOlustur(TxtMsjGonderen.Text, TxtMsjAlıcı.Text, TxtDuyBaslik.Text, TextArea1.Value);
            Response.Redirect("GonderilenMesajlar.aspx");
        }
    }
}