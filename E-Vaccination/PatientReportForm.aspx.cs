using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;





namespace E_Vaccination
{
    public partial class PatientReportForm : System.Web.UI.Page
    {


        private void fillChart()
        {
            sqlCon = new SqlConnection("data source =LAPTOP-GDBJNOQJ; initial catalog=E_Vaccination; Integrated Security=True;");


            DataSet ds = new DataSet();



            sqlCon.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("Select Age,Dose from Appointment", sqlCon);
            adapt.Fill(ds);
            Chart1.DataSource = ds;
            Chart1.Series["Patient"].XValueMember = "Age";           
            Chart1.Series["Patient"].YValueMembers = "Dose";
            Chart1.Titles.Add("Patient Report");
            sqlCon.Close();




        }

        SqlConnection sqlCon;



        

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                sqlCon = new SqlConnection("data source =LAPTOP-GDBJNOQJ; initial catalog=E_Vaccination; Integrated Security=True;");
                sqlCon.Open();

            }
            catch (Exception ex)
            {


            }

            if (!IsPostBack)
            {
                Gview();
            }

            fillChart();


        }

        protected void Gview()
        {


            SqlCommand cmd = new SqlCommand("select * from Appointment", sqlCon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

        protected void btnPie_Click(object sender, EventArgs e)
        {
            Chart1.Series["Patient"].ChartType = SeriesChartType.Pie;
        }

        protected void btnBar_Click(object sender, EventArgs e)
        {
            Chart1.Series["Patient"].ChartType = SeriesChartType.Bar;
        }

        protected void btnArea_Click(object sender, EventArgs e)
        {
            Chart1.Series["Patient"].ChartType = SeriesChartType.Area;
        }

        protected void btnLine_Click(object sender, EventArgs e)
        {
            Chart1.Series["Patient"].ChartType = SeriesChartType.Line;
        }
    }
}