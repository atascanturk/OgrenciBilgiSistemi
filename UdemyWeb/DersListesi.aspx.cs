using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class DersListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
            Repeater1.DataSource = dt.GetDersListesi();
            Repeater1.DataBind();
        }
    }
}