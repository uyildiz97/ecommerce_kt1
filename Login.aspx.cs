using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        string kad = TextBoxUser.Text;
        string sifre = TextBoxPassword.Text;
        OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("~/App_Data/kullanici.mdb"));
        OleDbCommand komut = new OleDbCommand("SELECT * FROM Tablo1 WHERE kadi ='" + kad + "' and sifre ='" + sifre + "'", user_conn);

        user_conn.Open();
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Session["kad"] = oku["kadi"].ToString();
            
            Response.Redirect("account.aspx");


        }
        else
        {
            
            
        }

        oku.Close();
        user_conn.Close();
        }
        catch {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Girdiğiniz bilgiler hatalı olabilir, lütfen tekrar kontrol ediniz.')", true);
        }
    }
}