using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class tarifler : System.Web.UI.Page
    {
        
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            //onaysız tariflerin çekilmesi
            Panel1.Visible = false;
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifdurum=0", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataListOneri.DataSource = dr;
            DataListOneri.DataBind();
            //onaylı tarifler
            SqlCommand komut2 = new SqlCommand("select * from tbl_tarifler where tarifdurum=1", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataListOneri0.DataSource = dr2;
            DataListOneri0.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

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