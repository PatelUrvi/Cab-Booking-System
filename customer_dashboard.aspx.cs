using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class customer_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // string uname = Session["Username"].ToString();

        if (Session["id"] == null )
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}