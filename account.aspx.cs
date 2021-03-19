using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class eshop_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["kad"] == null)
            Response.Redirect("Login.aspx");
        Label1.Text = "" + Session["kad"];


        {
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("~/App_Data/kullanici.mdb"));
            OleDbCommand komut = new OleDbCommand("SELECT * FROM Tablo1", user_conn);

            user_conn.Open();

            OleDbDataReader oku = komut.ExecuteReader();

            user_conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string kad = Label1.Text;
        string sfr = TextBox1.Text;
        try
        {

            //veritabanında string olan bir alana 123 gönderince string olarak görmüyor. eğer ki a123 olsaydı bu hata olmayacaktı. 
            //ama yine de bu tür çok mantıklı olmaz. parametre yöntemini kullanmak her zaman sağlıklıdrı.
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("~/App_Data/kullanici.mdb"));
            user_conn.Open();
            OleDbCommand komut = NewMethod(kad, sfr, user_conn);

            komut.ExecuteNonQuery();
            user_conn.Close();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ŞİFRE BAŞARIYLA DEĞİŞTİRİLDİ')", true);

        }
        catch (Exception)

        {
            
        }

    }

    private static OleDbCommand NewMethod(string kad, string sfr, OleDbConnection user_conn)
    {
        return new OleDbCommand("UPDATE Tablo1 SET sifre  ='" + sfr + "' WHERE kadi='" + kad.ToString() + "'", user_conn)
        {
            Connection = user_conn
        };
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Başarıyla Çıkış Yaptınız.')", true);
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    

}

