using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_booking : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btn_view_Click(object sender, EventArgs e)
    {
        String drivername = txt_drivername.Text;
        String source=null,destination=null,time=null,cid=null;
        String s = "select * from tbl_booking where driver_name='" + drivername + "'";
        SqlCommand cmd = new SqlCommand(s,con);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";

            source = ds.Tables[0].Rows[0]["pplace"].ToString();
            destination = ds.Tables[0].Rows[0]["dplace"].ToString();
            time = ds.Tables[0].Rows[0]["ptime"].ToString();
            cid = ds.Tables[0].Rows[0]["registration_id"].ToString();
        }
        String c = "select * from registration where registration_id='"+cid+"'";
        SqlCommand cmd1 = new SqlCommand(c, con);
        SqlDataAdapter da1 = new SqlDataAdapter();
        da1.SelectCommand = cmd;
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        String cname=null, cono=null;
        if (ds1.Tables[0].Rows.Count > 0)
        {

            cname = ds1.Tables[0].Rows[0]["name"].ToString();
            cono = ds1.Tables[0].Rows[0]["phoneno"].ToString();
        }
        String b = "select * from tbl_bill where registration_id='" + cid + "'";
        SqlCommand cmd2 = new SqlCommand(b, con);
        SqlDataAdapter da2 = new SqlDataAdapter();
        da2.SelectCommand = cmd;
        DataSet ds2 = new DataSet();
        da1.Fill(ds2);
        String billAmt=null;
        if (ds2.Tables[0].Rows.Count > 0)
        {

            billAmt = ds2.Tables[0].Rows[0]["TotalAmt"].ToString();
        }
        lbl_s.Text = source;
        lbl_d.Text = destination;
        lbl_t.Text = time;
        lbl_cn.Text = cname;
        lbl_cn.Text = cono;
        lbl_bill.Text = billAmt;
    }
}