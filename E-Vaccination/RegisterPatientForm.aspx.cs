using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class RegisterPatientForm : System.Web.UI.Page
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Register_Patient values ('" + txtNIC.Text + "', '" + txtEmail.Text + "','" + txtNumber.Text + "','" + txtPassword.Text +"');", sqlCon);

                int noRecord = cmd.ExecuteNonQuery();

                if (noRecord > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Register successfull')", true);
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