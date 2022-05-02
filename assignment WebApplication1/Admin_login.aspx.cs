using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services;
using System.Data;

namespace assignment_WebApplication1
{
    public partial class Admin_login : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void adminlogin_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("select * from admin where Admin_ID = '" + admin_user.Text + "' and Admin_pass = '" + admin_pass.Text + "'", sqlcon);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("manage stock.aspx");
            }
            else
            {
                Response.Write("Incorrect Username or Password");
            }
            sqlcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }

   
    }
