using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Microsoft.Reporting.WebForms;

public partial class customer_report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GetData();
    }
    private void GetData()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online_cab_booking_systemConnectionString"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select * from registaration where registration_id ='"+Convert.ToInt32(TextBox1.Text)+"'",con);
        DataTable dt = new DataTable("registration");
        da.Fill(dt);
        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("CustomerReport.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("online_cab_booking_system",dt));
        ReportViewer1.LocalReport.Refresh();
    }
}