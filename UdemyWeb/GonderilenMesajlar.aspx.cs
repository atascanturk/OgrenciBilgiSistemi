using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class GonderilenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarTableAdapter dt = new DataSetTableAdapters.MesajlarTableAdapter();
            Repeater1.DataSource = dt.GetGonderilen(Session["Ogrnumara"].ToString());
            Repeater1.DataBind();
        }
    }
}