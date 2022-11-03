using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Vaccination
{

    public partial class DepartmentLoginForm : System.Web.UI.Page
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

            string DepartmentLogin = "select count(*) from Department_Login where Username='" + txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(DepartmentLogin, sqlCon);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            sqlCon.Close();
            if (temp == 1)
            {
                sqlCon.Open();
                String checkpasswordMatch = "select password from Department_Login where Password='" + txtPassword.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordMatch, sqlCon);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPassword.Text)
                {

                    Response.Redirect("ManageVaccinesForm.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect Username')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect password')", true);
            }
        }
    }
}