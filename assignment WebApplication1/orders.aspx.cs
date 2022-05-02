using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment_WebApplication1
{
    public partial class orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            obj.placeOrder(orderItemID.Text, Convert.ToInt32(orderItemqty.Text));
            obj.OrderItem(orderItemID.Text, orderItemqty.Text);

            orderItemID.Text = "";
            orderItemqty.Text = "";
            Label5.Visible = true;
        }

        protected void btncustsear_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            dllGridView1.DataSource = obj.CustomerSearch(customerSearchtext.Text);
            dllGridView1.DataBind();
        }
    }
}