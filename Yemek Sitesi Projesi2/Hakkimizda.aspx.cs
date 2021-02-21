using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataListHakkimizda.DataSource = dr;
            DataListHakkimizda.DataBind();


        }

        protected void DataListHakkimizda_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataListHakkimizda_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}