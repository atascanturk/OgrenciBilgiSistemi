using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
                TxtDersAd.Text = dt.GetDersGetir(id)[0].DERSAD;
            }
         
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
            dt.DersGuncelle(TxtDersAd.Text, id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}