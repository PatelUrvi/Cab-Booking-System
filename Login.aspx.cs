using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    static String lockstatus;
    static int attemptcount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static string Encrypt(string value)
    {
        using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
        {
            UTF8Encoding utf8 = new UTF8Encoding();
            byte[] data = md5.ComputeHash(utf8.GetBytes(value));
            return Convert.ToBase64String(data);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id;
        if(txt_uname.Text=="ADMIN" && txt_pass.Text=="ADMIN")
        {
            id = "admin";
            Session["id"] = id;
            Response.Redirect("admin_dashboard.aspx");
        }
        else if(txt_uname.Text=="DRIVER" && txt_pass.Text=="DRIVER")
        {
            id = "driver";
            Session["id"] = id;
            Response.Redirect("Driver_dashboard.aspx");
        }
        else
        {
            lbl_error_mess.Text="please fill all field";
        }

        String mycon = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from registration where emailid='" + txt_uname.Text+ "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        
        String status;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["emailid"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();
            status = ds.Tables[0].Rows[0]["status"].ToString();
            id = ds.Tables[0].Rows[0]["registration_id"].ToString();

            scon.Close();
            if (status == "Open")
            {
                


                if (uname == txt_uname.Text && pass == txt_pass.Text)
                {
                    Session["username"] = uname;
                    Session["id"] = id;
                    Response.Redirect("customer_dashboard.aspx");
                }
               
                else
                {
                    lbl_error_mess.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                    attemptcount = attemptcount + 1;
                }
            }
            else
            {
                lbl_error_mess.Text = "Your Account Locked Already : Contact Administrator";
            }
        }
        else
        {
            lbl_error_mess.Text = "Invalid Username or Password - Relogin with Correct Username Password ";

        }
        if (attemptcount == 3)
        {
            lbl_error_mess.Text = "Your Account Has Been Locked Due to Three Invalid Attempts - Contact Administrator";
            setlockstatus(txt_uname.Text);
            attemptcount = 0;
        }

        }
    private void setlockstatus(String username1)
    {
        String mycon1 = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        String updatedata = "Update registration set status='Locked' where emailid='" + username1 + "'";
        SqlConnection con = new SqlConnection(mycon1);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customer_Registration.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgate_password.aspx");
    }
    protected void txt_pass_TextChanged(object sender, EventArgs e)
    {
        if (txt_pass.Text.Equals("ADMIN") || txt_pass.Text.Equals("DRIVER"))
        {
            
        }
        else
        {
            txt_pass.Text = Encrypt(txt_pass.Text);
        }
    }
}