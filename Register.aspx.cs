using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lütfen yalnızca rakam belirtiniz')", true);
        }
              OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kullanici.mdb"));

        user_conn.Open();

        string str = "insert into Tablo1(kadi,sifre,ad,soyad,adres,dogumtarihi,sehir) values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox7.Text.ToString() + "')";
        
        OleDbCommand komut = new OleDbCommand();
        komut.Connection = user_conn;
        komut.CommandText = str;
        komut.ExecuteNonQuery();
        user_conn.Close();
       
    
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = ""; 

        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('KAYIT BAŞARI İLE EKLENDİ')", true);
        
    }
}