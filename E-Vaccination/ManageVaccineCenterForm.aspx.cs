using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class ManageVaccineCenterForm : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into Manage_Center values ('" + txtVCNo.Text + "', '" + txtPassword.Text + "','" + txtLocation.Text + "','" + txtDName.Text + "','" + txtDID.Text + "','" + txtONumber.Text + "');", sqlCon);

                int noRecord = cmd.ExecuteNonQuery();

                if (noRecord > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vaccine Center Added Successfull')", true);
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

        protected void btUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand ("Update Manage_Center set CenterNo = '" + txtVCNo.Text + "', CenterName = '" + txtPassword.Text + "' , Location = '" + txtLocation.Text + "' , DoctorName = '" + txtDName.Text + "' , DoctorID = '" + txtDID.Text + "' , OfficeNumber = '" + txtONumber.Text + "' where CenterNo= '" + txtVCNo.Text + "'", sqlCon);

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



        protected void btnSearch_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("Select * from Manage_Center where CenterNo='" + txtVCNo.Text + "'", sqlCon);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {              
                    txtPassword.Text= dr[1].ToString();
                    txtLocation.Text = dr[2].ToString();
                    txtDName.Text = dr[3].ToString();
                    txtDID.Text = dr[4].ToString();
                    txtONumber.Text = dr[5].ToString();
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




        protected void btnDelete_Click(object sender, EventArgs e)
        {



            SqlCommand delete = new SqlCommand("DELETE FROM Manage_Center WHERE CenterNo = '" + txtVCNo.Text + "'", sqlCon);
            delete.ExecuteNonQuery();

            sqlCon.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Recoad Delete successfull')", true);

        }
    }
}