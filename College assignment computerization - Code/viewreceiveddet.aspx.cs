using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class viewreceiveddet : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = Session["user"].ToString();
        data();
        query = "select dept,course,yearr from userdet where uname='" + lblusername.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while(rd.Read())
        {
            lbldept.Text = rd[0].ToString();
            lblcourse.Text = rd[1].ToString();
            lblyear.Text = rd[2].ToString();
        }
        rd.Close();
        con.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}