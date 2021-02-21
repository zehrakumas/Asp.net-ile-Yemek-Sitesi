using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //yemek listesi
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                //kategori listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //yemek silme işlemi
            if(islem=="sil")
            {
                SqlCommand komut5 = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut5.Parameters.AddWithValue("@p1", id);
                komut5.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        //tarif ekleme butonu
        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

            //kategori sayısını arttırma
            SqlCommand komut4 = new SqlCommand("update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}