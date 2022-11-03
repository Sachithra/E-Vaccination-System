using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class AppointmentForm : System.Web.UI.Page
    {
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
                Calendar1.Visible = false;
            }           
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {


            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }

            Calendar1.Attributes.Add("style", "position:absolute");

        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            try
            {
     SqlCommand cmd = new SqlCommand("insert into Appointment values ('" + txtNIC.Text + "', '" + txtName.Text + "','" + txtNumber.Text + "','" +  txtAge.Text + "','" + txtAddress.Text + "','" + txtGender.Text + "','" + txtEmail.Text + "','" + txtVName.Text + "','" + txtLocation.Text + "','" + txtDate.Text + "','" + txtTime.Text + "','" + txtDose.Text + "');", sqlCon);

                int noRecord = cmd.ExecuteNonQuery();

                if (noRecord > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Appointment Successfull Added')", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);
                }

            }
            catch (Exception ex)
            {

            }

        }    
    }
}