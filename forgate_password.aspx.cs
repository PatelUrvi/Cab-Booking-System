using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text;

public partial class forgate_password : System.Web.UI.Page
{
    static String decryptedpwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String password;
        String mycon = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        String myquery = "Select * from registration where name='" + txt_name.Text + "' and emailid='" + txt_email.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            password = ds.Tables[0].Rows[0]["password"].ToString();
            sendpassword(password, txt_email.Text);
            lbl_error_mess.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

        }
        else
        {
            lbl_error_mess.Text = "Your Username is Not Valid or Email Not Registered";

        }
        con.Close();
    }
    private void sendpassword(String password, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("17bmiit143@gmail.com", "99795urvi");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password ( UN Cab's )";
        msg.Body = "Dear " + txt_name.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nUN Cab's";
        string toaddress = txt_email.Text;
        msg.To.Add(toaddress);
        string fromaddress = "UN Cab's <17bmiit143@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
    }
    
}