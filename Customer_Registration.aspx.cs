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
using System.Security.Cryptography;


public partial class Customer_Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True");
    SqlCommand cmd;
    static string Encrypt(string value)
    {
        using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
        {
            UTF8Encoding utf8 = new UTF8Encoding();
            byte[] data = md5.ComputeHash(utf8.GetBytes(value));
            return Convert.ToBase64String(data);
        }

    }
    public void Bind_cmb_State()
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("select * from tbl_state", con);
            SqlDataReader dr = cmd.ExecuteReader();
            cmb_state.DataSource = dr;
            cmb_state.Items.Clear();
            cmb_state.Items.Add("--Please Select state--");
            cmb_state.DataTextField = "state_name";
            cmb_state.DataValueField = "state_id";
            cmb_state.DataBind();
            con.Close();
        }
        catch (Exception exe)
        {
            lbl_mess.Text = exe.ToString();
        }
    }
    public void Bind_City()
    {
        try
        {
            int sid = Convert.ToInt32(cmb_state.SelectedIndex);
            con.Open();
            cmd = new SqlCommand("select city_id,city_name from tbl_city where state_id =" + sid, con);
            SqlDataReader dr = cmd.ExecuteReader();
            cmb_city.DataSource = dr;
            cmb_city.Items.Clear();
            cmb_city.Items.Add("--Please Select city--");
            cmb_city.DataTextField = "city_name";
            cmb_city.DataValueField = "city_id";
            cmb_city.DataBind();
            con.Close();
        }
        catch (Exception exe)
        {
            lbl_mess.Text = exe.ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_cmb_State();
        }  
    }
    protected void btn_sign_up_Click(object sender, EventArgs e)
    {
             string destinationaddr = "91" + txt_phone.Text;
             string message = "Hi " + txt_name.Text + " , You Have Been Registered For UN Cab's. Thanks!!";

             String message1 = HttpUtility.UrlEncode(message);
             using (var wb = new WebClient())
             {
                 byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "IlcR/wr/iwk-BcFyfph7JFjPMtaod7zFY3Rt7XsZT3"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                 string result = System.Text.Encoding.UTF8.GetString(response);
                 lbl_mess.Text = "Data Successfully Inserted....";
             }
            insertdata();
    }
    public void insertdata()
    {
        cmd = new SqlCommand("customer_registration",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar)).Value = txt_name.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@address", SqlDbType.VarChar)).Value = txt_address.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@city_id", SqlDbType.Int)).Value =Convert.ToInt32(cmb_city.SelectedValue);
        cmd.Parameters.Add(new SqlParameter("@state_id", SqlDbType.Int)).Value =Convert.ToInt32(cmb_state.SelectedValue);
        cmd.Parameters.Add(new SqlParameter("@phoneno", SqlDbType.VarChar)).Value = txt_phone.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@emailid", SqlDbType.VarChar)).Value = txt_email.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = txt_pass.Text.ToString();
        cmd.Parameters.Add(new SqlParameter("@type", SqlDbType.VarChar)).Value = "Customer";
        cmd.Parameters.Add(new SqlParameter("@status", SqlDbType.VarChar)).Value = "Open";

        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void cmb_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_City();
    }
    protected void txt_pass_TextChanged(object sender, EventArgs e)
    {
        txt_pass.Text = Encrypt(txt_pass.Text);
    }
}