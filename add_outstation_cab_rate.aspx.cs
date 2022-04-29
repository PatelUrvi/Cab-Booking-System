using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_outstation_cab_rate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void insertdata()
    {
        cmd = new SqlCommand("add_outstation_rate", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@mode", SqlDbType.VarChar)).Value = "Outstation Cab";
        cmd.Parameters.Add(new SqlParameter("@min_bill", SqlDbType.Float)).Value = Convert.ToDouble(txt_minbill.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@free_kms", SqlDbType.Int)).Value = Convert.ToInt32(txt_free_kms.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@waiting_charge", SqlDbType.Float)).Value = Convert.ToDouble(txt_waiting.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@extra", SqlDbType.Float)).Value = Convert.ToDouble(txt_extra_charge.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@cab_type", SqlDbType.VarChar)).Value = cmb_type.SelectedItem.ToString();
        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            Response.Redirect("add_outstation_cab_rate.aspx");
        }
    }
    protected void btn_add_Click1(object sender, EventArgs e)
    {
        insertdata();
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();   
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
}