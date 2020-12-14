using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.OGRENCITableAdapter dt =
                new DataSetTableAdapters.OGRENCITableAdapter();
            Repeater1.DataSource = dt.GetOgrenciListesi();
            Repeater1.DataBind();
;        }
    }
}