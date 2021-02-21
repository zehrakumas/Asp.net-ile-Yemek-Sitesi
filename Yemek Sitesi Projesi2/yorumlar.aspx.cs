using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
   
    public partial class yorumlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        //veri tabanı bağlantısı ve panel görünürlüğü işlemleri
        protected void Page_Load(object sender, EventArgs e)
        {
            //onaylı yorumlar listesi
            Panel1.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataListYorum.DataSource = dr;
            DataListYorum.DataBind();
            //onaysız yorumlar listesi
            Panel2.Visible = false;
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataListYorum2.DataSource = dr2;
            DataListYorum2.DataBind();
        }

        //panel görünür butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        //panel görünmez butonu
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}