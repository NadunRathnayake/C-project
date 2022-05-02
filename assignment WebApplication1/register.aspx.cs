using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment_WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label18.Visible = false;


        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            obj.register(First_name.Text, Last_name.Text, Email.Text, User_name.Text, Password.Text, Confirm_password.Text);
           First_name.Text = "";
            Last_name.Text = "";
            Email.Text = "";
            User_name.Text = "";
            Password.Text = "";
            Confirm_password.Text = "";
            Label18.Visible = true;
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            First_name.Text = "";
            Last_name.Text = "";
            Email.Text = "";
            User_name.Text = "";
            Password.Text = "";
            Confirm_password.Text = "";

        }
    }
}