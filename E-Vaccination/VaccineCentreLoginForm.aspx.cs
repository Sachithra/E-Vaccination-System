using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{
    public partial class VaccineCentreLoginForm : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection();

            string CenterLogin = "select count(*) from Manage_Center where CenterNo='" + txtCNo.Text + "'";
            SqlCommand com = new SqlCommand(CenterLogin, sqlCon);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            sqlCon.Close();
            if (temp == 1)
            {
                sqlCon.Open();
                String checkpasswordMatch = "select Password from Manage_Center where Password='" + txtPassword.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordMatch, sqlCon);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPassword.Text)
                {

                    Response.Redirect("VaccineCenterDashboardForm.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect Center no')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect password')", true);
            }
        }
    }
}