using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        con.Open();
        SqlCommand cmd = null;
        SqlCommand cmd1 = null;
        String source = Session["source"].ToString();
        String sourcequery = "select latitude,longitude from tbl_area where area_name ='"+source+"'";
        cmd = new SqlCommand(sourcequery, con);
        
        double s_lat=0.0, s_long=0.0;
        
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            s_lat = Convert.ToDouble(ds.Tables[0].Rows[0]["latitude"]);
            s_long = Convert.ToDouble(ds.Tables[0].Rows[0]["longitude"]);
        }
           /* SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                s_lat = Convert.ToDouble(dr[0]);
                s_long = Convert.ToDouble(dr[1]);
            }*/
          con.Close();
          con.Open();

        String destination = Session["destination"].ToString();
        String destinationquery = "select latitude,longitude from tbl_area where area_name='" + destination + "'";
        cmd1 = new SqlCommand(destinationquery,con);
        cmd1 = new SqlCommand(sourcequery, con);
        
        double d_lat=0.0, d_long=0.0;
        
        SqlDataAdapter da1 = new SqlDataAdapter();
        da.SelectCommand = cmd1;
        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            s_lat = Convert.ToDouble(ds1.Tables[0].Rows[0]["latitude"]);
            s_long = Convert.ToDouble(ds1.Tables[0].Rows[0]["longitude"]);
        }
        Response.Write(s_lat);
        // distance between latitudes and longitudes 
        double dLat = (Math.PI / 180) * (d_lat - s_lat);
        double dLon = (Math.PI / 180) * (d_long - s_long);

        // convert to radians 

        double lat1 = (Math.PI / 180) * (s_lat);
        double lat2 = (Math.PI / 180) * (d_lat);

        // apply formulae 
        double a = Math.Pow(Math.Sin(dLat / 2), 2) +
                   Math.Pow(Math.Sin(dLon / 2), 2) *
                   Math.Cos(lat1) * Math.Cos(lat2);
        double rad = 6371;
        double c = 2 * Math.Asin(Math.Sqrt(a));
        double totalKiloMeter =  Convert.ToDouble(rad * c);
        totalKiloMeter = totalKiloMeter / 1000;
        lbl_totalKL.Text = totalKiloMeter.ToString();
        int km = Convert.ToInt32(totalKiloMeter);
        Session["km"] = km;
        con.Close();


        con.Open();
        int kl = Convert.ToInt32(totalKiloMeter);
        int amt = 0;
        int rate= 0;
        String selectRate = null ;
        if (kl <= 5)
        {
            selectRate = "select amount from rate where kilometer=5";
        }
        else if (kl < 10 && kl > 5)
        {
            selectRate = "select amount from rate where kilometer=10";
        }
        else if (kl < 20 && kl > 10)
        {
            selectRate = "select amount from rate where kilometer=20";
        }
        else if (kl < 30 && kl > 20)
        {
            selectRate = "select amount from rate where kilometer=30";
        }
        else if (kl < 40 && kl > 30)
        {
            selectRate = "select amount from rate where kilometer=40";
        }
        else if (kl < 50 && kl > 40)
        {
            selectRate = "select amount from rate where kilometer=50";
        }
        else
        {
            rate = 0;
        }
        SqlCommand rate1 = new SqlCommand(selectRate, con);
        SqlDataAdapter da2 = new SqlDataAdapter();
        da2.SelectCommand = rate1;
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count > 0)
        {
            rate = Convert.ToInt32(ds2.Tables[0].Rows[0]["amount"]);
        }
        amt = rate * kl;
        lbl_billamt.Text = amt.ToString();
        Session["amt"] = amt;
        lbl_cabName.Text =  Session["cab_name"].ToString();
        lbl_cabno.Text = Session["cab_no"].ToString();
        //lbl_cabType.Text = Session["cabtype"].ToString();

       // Session["payBy"] = txt_payBy.Text;
        con.Close();
        
    }
    protected void  btn_continue_Click(object sender, EventArgs e)
    {
        int km = Convert.ToInt32(Session["km"]);
        //offerid
        con.Open();
        SqlCommand offer = new SqlCommand("select offer_id from tbl_offer where promocode='" + txt_promo.Text + "'", con);
        int offerId = 0;
        SqlDataAdapter da2 = new SqlDataAdapter();
        da2.SelectCommand = offer;
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count > 0)
        {
            offerId = Convert.ToInt32(ds2.Tables[0].Rows[0]["offer_id"]);
        }
        con.Close();
        //select customer id retriver from session
        String id = Session["id"].ToString();

        //AMT
        int billAmt = Convert.ToInt32(lbl_billamt.Text);
        //insert into bill table
        String query = "insert into tbl_bill(TotalKm,offer_id,registration_id,TotalAmt) values('" + lbl_totalKL.Text + "','" + offerId + "','" + id + "','" + billAmt + "')";
        String mycon = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection con3 = new SqlConnection(mycon);
        con3.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = query;
        cmd2.Connection = con3;
        cmd2.ExecuteNonQuery();
        con3.Close();
        Response.Redirect("Thank_you_message.aspx");
    }
}
   