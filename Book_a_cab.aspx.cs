using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Text;

public partial class Book_a_cab : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_cmb_City();
        }  
    }
    public void Bind_cmb_City()
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("select * from working_city", con);
            SqlDataReader dr = cmd.ExecuteReader();
            com_city.DataSource = dr;
            com_city.Items.Clear();
            com_city.Items.Add("--Please Select city--");
            com_city.DataTextField = "city_name";
            com_city.DataValueField = "city_name";
            com_city.DataBind();
            con.Close();
        }
        catch (Exception exe)
        {
            lbl_mess.Text = exe.ToString();
        }
    }
    public void Bind_PArea()
    {
        try
        {
            int sid = Convert.ToInt32(com_city.SelectedIndex);
            con.Open();
            cmd = new SqlCommand("select area_id,area_name from tbl_add_area where city_id =" + sid, con);
            SqlDataReader dr = cmd.ExecuteReader();
            com_parea.DataSource = dr;
            com_parea.Items.Clear();
            com_parea.Items.Add("--Please Select Pickup Area--");
            com_parea.DataTextField = "area_name";
            com_parea.DataValueField = "area_name";
            com_parea.DataBind();
            con.Close();
        }
        catch (Exception exe)
        {
            lbl_mess.Text = exe.ToString();
        }
    }
    protected void com_type_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from tbl_rental_cab_rate where cab_type = '" + com_type.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string min = (string)dr["minimum_bill_charge"].ToString();
            lbl_min.Text = min;

            string free = (string)dr["free_kms"].ToString();
            lbl_free.Text = free;

            string extra = (string)dr["extra_per_km_charge"].ToString();
            lbl_extra.Text = extra;

            string waiting = (string)dr["waiting_charge"].ToString();
            lbl_waiting.Text = waiting;
        }

        con.Close();
    }
    protected void btn_detail_Click(object sender, EventArgs e)
    {
        Session["pplace"] = com_parea.SelectedItem.ToString();
        Session["dplace"] = txt_darea.Text.ToString();
        Session["pdate"] = txt_date.Text.ToString();
        Session["ptime"] = txt_time.Text.ToString();
        Session["ddate"] = txt_ddate.Text.ToString();
        Response.Redirect("Traveller_detail.aspx");
    }
    protected void com_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_PArea();
        
    }
    
}