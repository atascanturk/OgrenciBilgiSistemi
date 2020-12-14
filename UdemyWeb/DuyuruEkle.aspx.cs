using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack ==false) { 
            DataSetTableAdapters.Duyurular1TableAdapter dt = new DataSetTableAdapters.Duyurular1TableAdapter();
            DropDownList1.DataSource = dt.GetDuyListEk();
            DropDownList1.DataTextField = "OGRETMEN";
            DropDownList1.DataValueField = "DUYURUOGRT";
            DropDownList1.DataBind();

            
        }

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            
            DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
            dt.DuyuruEkle(TxtDuyBaslik.Text, TextArea1.Value.ToString(),Convert.ToInt32(DropDownList1.SelectedValue));

            Response.Redirect("DuyuruListesi.aspx");
           
           
           
        }
        
    }
}