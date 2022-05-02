using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for textileservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class textileservice : System.Web.Services.WebService
    {

        [WebMethod]
        public string addItems(string Item_ID, string Item_name, string Item_color, string Item_price, string Item_quantity)
        {
            int temp = 0;
            try
            {
                //make sql connection
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                // add query
                SqlCommand cmd = new SqlCommand("insert into cloth_det values('" + Item_ID + "','" + Item_name + "','" + Item_color + "','" + Item_price + "','" + Item_quantity + "')", sqlcon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }
        [WebMethod]
        public string register(string First_name, string Last_name, string Email, string User_name, string Password, string Confirm_password)
        {
            int temp = 0;
            try
            {
                //make Sql Connection
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                //input query
                SqlCommand cmd = new SqlCommand("insert into register_det values('" + First_name + "','" + Last_name + "','" + Email + "','" + User_name + "','" + Password + "','" + Confirm_password + "')", sqlcon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
            }

        [WebMethod]

        public bool updatestock(string Item_ID, int newquantity) {

            bool records = false;
            try
            {
                //locating the data base
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                //data base query
                SqlCommand cmd = new SqlCommand("update cloth_det set Item_quantity=Item_quantity+" + newquantity + "where Item_ID='" + Item_ID + "'", sqlcon);
                SqlDataReader dr = cmd.ExecuteReader(); //reader
                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error with Update" + ex);
            }
            return records;

        }

        [WebMethod]

        public DataSet SearchItems(string Item_ID)
        {
            DataSet ds = new DataSet();
            try
            {
        SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
        sqlcon.Open();
                SqlCommand cmd = new SqlCommand("Select * from cloth_det where Item_ID = '" + Item_ID + "'", sqlcon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds, "cloth_det");

            }
            catch(Exception ex)
            {
                Console.WriteLine("Error With Searching Product" + ex);
            }
            return ds;
        }

        [WebMethod]

        public bool placeOrder(string Item_name, int newquantity)
        {

            bool records = false;
           
            try
            {

                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("update cloth_det set Item_quantity=Item_quantity-" + newquantity + "where Item_name='" + Item_name + "'", sqlcon);
                SqlDataReader dr = cmd.ExecuteReader();
                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error with Update" + ex);
            }
            return records;

        }

        [WebMethod]

        public string OrderItem(string Order_ID, string Order_Quantity)
        {
            int temp = 0;
            try
            {
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("insert into orders values('" + Order_ID + "','" + Order_Quantity +  "')", sqlcon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]

        public DataSet ViewList()
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("Select * from cloth_det ", sqlcon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds, "cloth_det");

            }
            catch (Exception ex)
            {
                Console.WriteLine("Error With Searching Product" + ex);
            }
            return ds;
        }

        [WebMethod]

        public DataSet CustomerSearch(string Item_Name)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection sqlcon = new SqlConnection("data source =DESKTOP-SOJ5BNS; initial catalog=sabertextiles; integrated security = SSPI; persist security info= False; Trusted_Connection=Yes");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("Select * from cloth_det where Item_name = '" + Item_Name + "'", sqlcon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds, "cloth_det");

            }
            catch (Exception ex)
            {
                Console.WriteLine("Error With Searching Product" + ex);
            }
            return ds;
        }



    }
    }

