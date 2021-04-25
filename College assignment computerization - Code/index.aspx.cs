using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class stafflogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
 
   protected void Button6_Click(object sender, EventArgs e)
    {
        data();
        query = "select uname,pwd from staffdet where uname='" + txtstaffusername.Text + "' and pwd='" + txtstaffpassword.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["staff"] = txtstaffusername.Text.ToString();
            Response.Redirect("emptystaff.aspx");
        }
        else
        {
            
        }
        rd.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "select uname,pwd from userdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["user"] = txtusername.Text.ToString();
            Response.Redirect("emphome.aspx");
        }
        else
        {

        }
        rd.Close();
    }
}