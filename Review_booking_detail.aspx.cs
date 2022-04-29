using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Review_booking_detail : System.Web.UI.Page
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
        lbl_name.Text = Session["name"].ToString();
        lbl_pickup_from.Text = Session["pplace"].ToString();
        lbl_drop.Text = Session["dplace"].ToString();
        lbl_date.Text = Session["pdate"].ToString();
        lbl_time.Text = Session["ptime"].ToString();
        lbl_ddate.Text = Session["ddate"].ToString();
        lbl_id.Text = Session["id"].ToString();
        lbl_no.Text = Session["no"].ToString();
    }
    public void insertdata()
    {
        cmd = new SqlCommand("add_booking", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar)).Value = lbl_name.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.VarChar)).Value = lbl_id.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@pplace", SqlDbType.VarChar)).Value = lbl_pickup_from.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@dplace", SqlDbType.VarChar)).Value = lbl_drop.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = lbl_no.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@pdate", SqlDbType.Date)).Value = lbl_date.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@ddate", SqlDbType.Date)).Value = lbl_ddate.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@time", SqlDbType.Time)).Value = lbl_time.Text.ToString();

        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            Response.Redirect("Thank_you_message.aspx");
        }
    }
    protected void btn_conform_booking_Click(object sender, EventArgs e)
    {
        Session["cname"] = lbl_id.Text.ToString();
        insertdata();
    }
}