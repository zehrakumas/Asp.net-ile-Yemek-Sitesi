using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yemekler where durum=1", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList3.DataSource = oku2;
            DataList3.DataBind();
        }
    }
}