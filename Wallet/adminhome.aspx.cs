using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Wallet
{
    public partial class adminhome : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand com = new SqlCommand("SELECT SUM(Quantity) FROM OrderItem", con);
            SqlDataReader reader = com.ExecuteReader();
            if(reader.Read())
            {
                Label1.Text = reader[0].ToString();
            }
            con.Close();
        }
    }
}