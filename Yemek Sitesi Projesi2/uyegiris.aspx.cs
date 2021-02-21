using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace Yemek_Sitesi_Projesi2
{
    
    public partial class uyegiris : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        //giris yapma butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("SELECT * FROM tbl_kullanicilar WHERE uyekullaniciadi='" + TextBox1.Text + "' AND uyesifre='" + TextBox2.Text + "'", bgl.baglanti());
           
            SqlDataReader oku = komut.ExecuteReader();
            //komut.ExecuteNonQuery();
            if (oku.Read())
            {
                Session["kullaniciid"] = oku["kullaniciid"].ToString();

                Session["AdiSoyadi"] = oku["uyead"].ToString() + " " + oku["uyesoyad"].ToString();

                //Session.Add("uyekullaniciadi", kad);
                //Session.Add("uyesifre", ksifre);
                
                if(TextBox1.Text=="admin" && TextBox2.Text =="admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Anasayfa.aspx");
                }
            }
            else
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "Kullanıcı adı ve şifrenizi kontrol ediniz...", false);
            }
            
            bgl.baglanti().Close();


        }

        //üye olma işlemleri
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_kullanicilar (uyead,uyesoyad,uyekullaniciadi,uyesifre,uyemail) values(@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", TextBox4.Text);
            komut.Parameters.AddWithValue("@p5", TextBox5.Text);
            komut.Parameters.AddWithValue("@p3", TextBox6.Text);
            komut.Parameters.AddWithValue("@p4", TextBox7.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Panel1.Visible = true;
        }
    }
}