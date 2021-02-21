using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut4 = new SqlCommand("select * from Tbl_Yemekler where kategoriid=@p1",bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr4 = komut4.ExecuteReader();
            DataListKategoriDetay.DataSource = dr4;
            DataListKategoriDetay.DataBind();

        }
    }
}