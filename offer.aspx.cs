using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class offer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void insertdata()
    {
        cmd = new SqlCommand("add_offer", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@sdate", SqlDbType.Date)).Value = Convert.ToDateTime(txt_sdate.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@edate", SqlDbType.Date)).Value = Convert.ToDateTime(txt_edate.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@promocode", SqlDbType.VarChar)).Value = txt_code.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@description", SqlDbType.VarChar)).Value = txt_description.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar)).Value = txt_oname.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@amount", SqlDbType.Int)).Value = txt_amount.Text.ToString();
        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            Response.Redirect("offer.aspx");
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        insertdata();
    }
}