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
    public partial class _Default : Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        string str;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            str = "select * from walletdata";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                Label1.Text = reader["dynamictext"].ToString();

                reader.Read();
                Label2.Text = reader["dynamictext"].ToString();

                reader.Read();
                Label3.Text = reader["dynamictext"].ToString();

                reader.Read();
                Label4.Text = reader["dynamictext"].ToString();

                reader.Read();
                Label5.Text = reader["dynamictext"].ToString();

            reader.Close();
            con.Close();
        }        
    }
}