using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class ManageVaccinesForm : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into Manage_Vaccine values ('" + txtVNo.Text + "', '" + txtVName.Text + "','" + txtMDate.Text + "','" + txtEDate.Text + "','" + txtQuantity.Text + "','" + txtPrice.Text + "');", sqlCon);

                int noRecord = cmd.ExecuteNonQuery();

                if (noRecord > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vaccine Added Successfull Added')", true);
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
                SqlCommand cmd = new SqlCommand("Select * from Manage_Vaccine where VaccineNo='" + txtVNo.Text + "'", sqlCon);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtVName.Text = dr[1].ToString();
                    txtMDate.Text = dr[2].ToString();
                    txtEDate.Text = dr[3].ToString();
                    txtQuantity.Text = dr[4].ToString();
                    txtPrice.Text = dr[5].ToString();
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
                SqlCommand cmd = new SqlCommand("Update Manage_Vaccine set VaccineNo= '" + txtVNo.Text + "', VaccineName = '" + txtVName.Text + "' , MDate = '" + txtMDate.Text + "' , EDate = '" + txtEDate.Text + "' , Quantity = '" + txtQuantity.Text + "' , Price = '" + txtPrice.Text + "' where VaccineNo= '" + txtVNo.Text + "'", sqlCon);

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


            SqlCommand delete = new SqlCommand("DELETE FROM Manage_Vaccine WHERE VaccineNo = '" + txtVNo.Text + "'", sqlCon);
            delete.ExecuteNonQuery();

            sqlCon.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Recoad Delete successfull')", true);


        }
    }
}



