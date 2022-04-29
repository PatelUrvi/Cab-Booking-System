using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feed_c : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");

    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id"] == null)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
    protected void btn_feedback_Click(object sender, EventArgs e)
    {
        String query = "insert into tbl_feedback (feedback) values ('"+txt_f.Text+"')";
        String mycon = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection con3 = new SqlConnection(mycon);
        con3.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = query;
        cmd2.Connection = con3;
        cmd2.ExecuteNonQuery();
        con3.Close();
    }
}