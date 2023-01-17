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
    public partial class dropdown : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        string strcountry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cascadingdropdown();
            }
        }
        protected void cascadingdropdown()
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            strcountry = "select * from countries";
            SqlCommand com = new SqlCommand(strcountry, con);
            com.CommandType = CommandType.Text;
            ddlcountry.DataSource = com.ExecuteReader();
            ddlcountry.DataTextField = "countryname";
            ddlcountry.DataValueField = "countryid";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("--Select Country--", "0"));

        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            int countryid =Convert.ToInt32(ddlcountry.SelectedValue);
            SqlConnection con= new SqlConnection(strconn);
            con.Open();
            SqlCommand com = new SqlCommand("select * from states where countryid=" + countryid, con);
            com.CommandType = CommandType.Text;
            ddlstate.DataSource = com.ExecuteReader();
            ddlstate.DataTextField= "statename";
            ddlstate.DataValueField = "stateid";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, new ListItem("--Select State--", "0"));
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid =Convert.ToInt32(ddlstate.SelectedValue);
            SqlConnection con = new SqlConnection(strconn) ;
            con.Open();
            SqlCommand com = new SqlCommand("select * from cities where stateid="+stateid, con);
            com.CommandType= CommandType.Text;
            ddlcapital.DataSource = com.ExecuteReader();
            ddlcapital.DataTextField = "cityname";
            ddlcapital.DataValueField = "cityid";
            ddlcapital.DataBind();
            ddlcapital.Items.Insert(0, new ListItem("--Select City--", "0"));
        }
    }
}