using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void Button1_Click1(object sender, EventArgs e)

    {
        //try
        {
            var from = TextEmail.Text.ToString();
            var to = "username@gmail.com";
            const string password = "password";
            string mail_subject = TextAdres.Text.ToString();
            string mail_message = "From : " + TextName.Text + "\n";
            mail_message += "Email: " + TextEmail.Text + "\n";
            mail_message += "Telefon: " + TextPhone.Text.ToString() + "\n";
            mail_message += "Adres : " + TextAdres.Text +"\n"; 
            mail_message += "Sipariş: " + TextMessage.Text +"\n";

            
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, password);
                smtp.Timeout = 20000;
            }
            smtp.Send(from, to, mail_subject, mail_message);
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mesajınız başarıyla gönderildi.')", true);

            TextName.Text = "";
            TextEmail.Text = "";
            TextPhone.Text = "";
            TextAdres.Text = "";
            TextMessage.Text = "";

        }

        /*catch(Exception)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bir hata oluştu...')", true);
        }*/
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        TextMessage.Text = TextMessage + "<p>Mesaj </p>";
    }
}
