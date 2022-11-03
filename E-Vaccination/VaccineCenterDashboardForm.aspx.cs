using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class VaccineCenterDashboardForm : System.Web.UI.Page
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

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            try
            {
   SqlCommand cmd = new SqlCommand("insert into Appointment values ('" + txtNIC.Text + "', '" + txtName.Text + "','" + txtNumber.Text + "','" + txtAge.Text + "','" + txtAddress.Text + "','" + txtGender.Text + "','" + txtEmail.Text + "','" + txtVName.Text + "','" + txtLocation.Text + "','" + txtDate.Text + "','" + txtTime.Text + "','" + txtDose.Text + "');", sqlCon);

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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from Appointment where NIC='" + txtNIC.Text + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    //lblText.Text = "";
                    txtName.Text = dr[1].ToString();
                    txtNumber.Text = dr[2].ToString();
                    txtAge.Text = dr[3].ToString();
                    txtAddress.Text = dr[4].ToString();
                    txtGender.Text = dr[5].ToString();
                    txtEmail.Text = dr[6].ToString();
                    txtVName.Text = dr[7].ToString();
                    txtLocation.Text = dr[8].ToString();
                    txtDate.Text = dr[9].ToString();
                    txtTime.Text = dr[10].ToString();
                    txtDose.Text = dr[11].ToString();
                }
                else
                {
                   
                }
                dr.Close();
            }
            catch (Exception ex)
            {       
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("Update Appointment set NIC= '" + txtNIC.Text + "', FullName = '" + txtName.Text + "' , Number = '" + txtNumber.Text + "' , Age = '" + txtAge.Text + "' , Address = '" + txtAddress.Text + "' , Gender = '" + txtGender.Text + "', Email = '" + txtEmail.Text + "', VaccineName = '" + txtVName.Text + "', Location = '" + txtLocation.Text + "', VaccinationDate = '" + txtDate.Text + "', Time = '" + txtTime.Text + "', Dose = '" + txtDose.Text + "' where NIC= '" + txtNIC.Text + "'", sqlCon);

                int numberOfRecord = cmd.ExecuteNonQuery();
                if (numberOfRecord > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Recoad Update successfull')", true);

                }
            }
            catch (Exception ex)
            {              
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            SqlCommand delete = new SqlCommand("DELETE FROM Appointment WHERE NIC = '" + txtNIC.Text + "'", sqlCon);
            delete.ExecuteNonQuery();

            sqlCon.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Recoad Delete successfull')", true);
        }
    }
}