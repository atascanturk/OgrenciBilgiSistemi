using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UdemyWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {






            baglanti.Open();
            SqlCommand command = new SqlCommand("Select * from Ogrenci where Numara=@p1 and Ogrsifre=@p2", baglanti);
            command.Parameters.AddWithValue("@p1", TxtNumara.Text);
            command.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = command.ExecuteReader();




            if (dr.Read())
            {
                Session.Add("numara", TxtNumara.Text);
                Response.Redirect("Ogrencidefault.aspx");
            }

            else
            {


                Label1.Text = "Sifreniz ve/veya Kullanıcı Adınız Hatalıdır.";



            }



            baglanti.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand command = new SqlCommand("Select * from Ogretmen where Ogrnumara=@p1 and Ogrtsifre=@p2", baglanti);
            command.Parameters.AddWithValue("@p1", TxtNumara.Text);
            command.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = command.ExecuteReader();




            if (dr.Read())
            {
                Session.Add("ogrnumara", TxtNumara.Text);
                Response.Redirect("default.aspx");
                
            }

            else
            {


                Label1.Text = "Sifreniz ve/veya Kullanıcı Adınız Hatalıdır.";



            }



            baglanti.Close();


        }
    }
}