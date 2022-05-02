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
    public partial class Customer_Login : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("select * from register_det where User_name = '" + custuser.Text + "' and Password = '" + custpass.Text + "'",sqlcon);
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                Response.Redirect("orders.aspx");
            }
            else
            {
                Response.Write("Incorrect Username or Password");
            }
            sqlcon.Close();

        }

        protected void btnsign_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void Custhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}