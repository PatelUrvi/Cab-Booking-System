using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Traveller_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["name"] = txt_name.Text.ToString();
        Session["no"] = txt_no.Text.ToString();
        Session["id"] = txt_id.Text.ToString();
        Response.Redirect("Review_booking_detail.aspx");
    }
}