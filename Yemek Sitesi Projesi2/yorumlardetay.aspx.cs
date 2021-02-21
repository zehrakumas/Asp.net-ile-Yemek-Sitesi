using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class yorumlardetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.yemekid=Tbl_Yemekler.yemekid where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
           

        }

        //yorum onaylama butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_Yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p2", "True");
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}