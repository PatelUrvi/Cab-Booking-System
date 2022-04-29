using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class add_driver_and_cab_detail : System.Web.UI.Page
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
    protected void btn_add_Click(object sender, EventArgs e)
    {
        Session["dname"] = txt_dname.Text.ToString();
        Session["no"] = txt_phno.Text.ToString();
        String constring = @"Data Source=DESKTOP-O14IQBB\SQLEXPRESS;Initial Catalog=online_cab_booking_system;Integrated Security=True";
        SqlConnection sqlcon = new SqlConnection(constring);
        string a="driver";
        FileUpload1.SaveAs(Server.MapPath("~/photo/") + Path.GetFileName(FileUpload1.PostedFile.FileName));
        String link = "photo/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
        String query = "Insert into tbl_driver(driver_name,address,email_id,phone_no,status,driver_image) values('" + txt_dname.Text + "','" + txt_address.Text + "','" + txt_emailid.Text + "','"+ txt_phno.Text +"','free','" + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); ;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        lbl_mess.Text = "Data Has Been Saved Successfully";

    }
    /*protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }*/
    protected void btn_cab_detail_Click(object sender, EventArgs e)
    {
        Response.Redirect("add_cab_detail.aspx");
    }
    protected void GridView1_RowUpdated1(object sender, GridViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleted1(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
}