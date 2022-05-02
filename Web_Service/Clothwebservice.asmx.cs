using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;

namespace Web_Service
{
    /// <summary>
    /// Summary description for Clothwebservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Clothwebservice : System.Web.Services.WebService
    {

        [WebMethod]
        public string addItems(string Item_ID, string Item_name, string Item_color, string Item_price)
        {
            int temp = 0;
            try
            {
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; database=sabertextiles ; Trusted Connection=True");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("insert into Textile_det values('" + Item_ID + "','" + Item_name + "','" + Item_color + "','" + Item_price + ")", sqlcon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }
    }
}
