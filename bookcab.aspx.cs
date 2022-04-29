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

public partial class bookcab : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    SqlCommand cmd;
    bool flag = false;
    bool flag1 = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
    protected void btn_low_Click(object sender, EventArgs e)
    {
        
                cmd = new SqlCommand("SELECT * from cab_detail where cab_per_km = (select MIN(cab_per_km) from cab_detail where cab_location ='" + txt_from.Text + "' and cab_status = 'a')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr[5].ToString()== "a")
                    {
                        flag = true;
                        string name = (string)dr["cab_name"].ToString();
                        txt_name.Text = name;

                        string number = (string)dr["cab_number"].ToString();
                        txt_number.Text = number;

                        string loc = (string)dr["cab_location"].ToString();
                        txt_location.Text = loc;

                        string dname = (string)dr["driver_name"].ToString();
                        txt_dname.Text = dname;

                        string dno = (string)dr["driver_no"].ToString();
                        txt_no.Text = dno;
                        break;
                    }
                }
                if (flag == true)
                {
                    lbl_mess.Text = "Cab is available";
                }
                else
                {
                    lbl_mess.Text = "sorry cab is not available";
                }
                con.Close();
           
    }
    protected void btn_high_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT * from cab_detail where cab_per_km = (select MAX(cab_per_km) from cab_detail where cab_location ='" + txt_from.Text + "' and cab_status = 'a')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr[5].ToString() == "a")
            {
                flag1 = true;
                string name = (string)dr["cab_name"].ToString();
                txt_name.Text = name;

                string number = (string)dr["cab_number"].ToString();
                txt_number.Text = number;

                string loc = (string)dr["cab_location"].ToString();
                txt_location.Text = loc;

                string dname = (string)dr["driver_name"].ToString();
                txt_dname.Text = dname;

                string dno = (string)dr["driver_no"].ToString();
                txt_no.Text = dno;
                break;
            }
        }
        if (flag1 == true)
        {
            lbl_mess.Text = "Cab is available";
        }
        else
        {
            lbl_mess.Text = "sorry cab is not available";
        }
        con.Close();
    }
    protected void btn_book_cab_Click(object sender, EventArgs e)
    {
        Session["source"] = txt_from.Text.ToString();
        Session["destination"] = txt_to.Text.ToString();
        Session["cab_name"] = txt_name.Text.ToString();
        Session["cab_no"] = txt_number.Text.ToString();
        String id = Session["id"].ToString();
        String query = "insert into tbl_booking(taxi_name,pplace,dplace,ptime,taxi_number,driver_name,driver_number,registration_id) values('"+txt_name.Text+"','"+txt_from.Text+"','"+txt_to.Text+"','"+txt_time.Text+"','"+txt_number.Text+"','"+txt_dname.Text+"','"+txt_no.Text+"','"+id+"')";
        String mycon = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection con3 = new SqlConnection(mycon);
        con3.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = query;
        cmd2.Connection = con3;
        cmd2.ExecuteNonQuery();
        con3.Close();
        String query1 = "update cab_detail set cab_status='b' where cab_number='"+txt_number.Text+"'";
        String mycon1 = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection con1 = new SqlConnection(mycon1);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = query1;
        cmd1.Connection = con1;
        cmd1.ExecuteNonQuery();
        con1.Close();
        String query2 = "update tbl_driver set status='b' where phone_no='" + txt_no.Text + "'";
        String mycon2 = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection con4 = new SqlConnection(mycon2);
        con4.Open();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = query2;
        cmd3.Connection = con4;
        cmd3.ExecuteNonQuery();
        con4.Close();

        lbl_mess.Text = "Data Has Been Saved Successfully";
        Response.Redirect("bill.aspx");
    }
}