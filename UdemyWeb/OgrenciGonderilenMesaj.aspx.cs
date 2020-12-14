using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGonderilenMesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarEkTableAdapter dt = new DataSetTableAdapters.MesajlarEkTableAdapter();
            Repeater1.DataSource = dt.GetOgrenciGonderilen(Session["numara"].ToString());
            Repeater1.DataBind();
        }
    }
}