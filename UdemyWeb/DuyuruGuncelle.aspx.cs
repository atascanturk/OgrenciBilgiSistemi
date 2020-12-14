using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    
    public partial class DuyuruGüncelle : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {

                int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
                DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
                
                TxtDuyID.Text = id.ToString();
                TxtDuyBaslik.Text = dt.GetDuyuruGüncelle(id)[0].DUYURUBASLIK;
                TextArea1.Value = dt.GetDuyuruGüncelle(id)[0].DUYURUICERIK;



            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
            dt.DuyuruGüncelle(TxtDuyBaslik.Text, TextArea1.Value, Convert.ToInt32(id));
            Response.Redirect("DuyuruListesi.aspx");

        }
    }
}