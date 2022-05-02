using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment_WebApplication1
{
    public partial class manage_stock : System.Web.UI.Page
      
    {
        textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            dlorderview.DataSource = obj.ViewList();
            dlorderview.DataBind();

            Label12.Visible = false;
            Label13.Visible = false;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            obj.addItems(Item_ID.Text,Item_name.Text,Item_color.Text,Item_price.Text,Item_quantity.Text);

            //clear fields
            Item_ID.Text = "";
            Item_name.Text = "";
            Item_color.Text = "";
            Item_price.Text = "";
            Item_quantity.Text = "";
            dlorderview.DataSource = obj.ViewList();
            dlorderview.DataBind();
            Label12.Visible = true;

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Item_ID.Text = "";
            Item_name.Text = "";
            Item_color.Text = "";
            Item_price.Text = "";
            Item_quantity.Text = "";
        }

        protected void btnsearchclear_Click(object sender, EventArgs e)
        {
            item_idsearch.Text = "";
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            obj.updatestock(item_idsearch.Text, Convert.ToInt32(addqty.Text));
            dlitems.DataSource = obj.SearchItems(item_idsearch.Text);
            dlitems.DataBind();

            //clear after updating
            item_idsearch.Text = "";
            addqty.Text = "";
            dlorderview.DataSource = obj.ViewList();
            dlorderview.DataBind();
            Label13.Visible = true;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            textile_ref.textileserviceSoapClient obj = new textile_ref.textileserviceSoapClient();
            dlitems.DataSource = obj.SearchItems(item_idsearch.Text);
            dlitems.DataBind();
        }
    }
}