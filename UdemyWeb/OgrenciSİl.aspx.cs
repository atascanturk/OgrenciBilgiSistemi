using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciSİl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());

            DataSetTableAdapters.OGRENCITableAdapter dt = new DataSetTableAdapters.OGRENCITableAdapter();

            dt.OgrenciSİl(id);
            Response.Redirect("Default.aspx");
        }
    }
}