using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_cab_detail : System.Web.UI.Page
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
    public void insertdata()
    {
        cmd = new SqlCommand("add_cab_detail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar)).Value = txt_name.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@number", SqlDbType.VarChar)).Value = txt_number.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@charge", SqlDbType.Int)).Value = Convert.ToInt32(txt_km.Text.ToString());
        cmd.Parameters.Add(new SqlParameter("@location", SqlDbType.VarChar)).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add(new SqlParameter("@dname", SqlDbType.VarChar)).Value = Session["dname"];
        cmd.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = Session["no"];
        cmd.Parameters.Add(new SqlParameter("@status", SqlDbType.VarChar)).Value = "a";
        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            //lbl_mess.Text = "data inserted successfully";
            Response.Redirect("add_cab_detail.aspx");
        }
        
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        insertdata();
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
}