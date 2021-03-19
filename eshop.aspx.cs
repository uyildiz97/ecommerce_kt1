using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Başarıyla Çıkış Yapıldı.')", true);
        //Response.Redirect("Default.aspx");
        //   if (Session["kad"] == null)
        //     buttonLogout.Enabled = false;
    }

    protected void buttonLogout_Click(object sender, EventArgs e)
    {
        //Session.Clear();
        //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Başarıyla Çıkış Yapıldı.')", true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "btn btn-disabled";
    }
}