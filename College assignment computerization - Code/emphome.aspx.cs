using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class emphome : System.Web.UI.Page
{ 
   SqlConnection con;
    SqlCommand cmd;
    string query;
    int code;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["user"].ToString();
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        data();
        query = "select * from userdet where uname='" + lbluser.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
           
            lbldept.Text = rd[3].ToString();
            lblcourse.Text = rd[4].ToString();
            lblyear.Text = rd[5].ToString();
        }
        rd.Close();
        con.Close();
        data();
        query = "select assigntopic from bestassign where dept='" + lbldept.Text + "' and course='" + lblcourse.Text + "' and yearr='" + lblyear.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        if (red.Read())
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
        red.Close();
        con.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "select stuuname,fname,assigntopic from bestassign where assigntopic='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblstudentname.Text = rd[0].ToString();
            lblassignmenttopic.Text = rd[2].ToString();
            HyperLink1.NavigateUrl = (@"~\assign\" + rd[1].ToString());
        }
        rd.Close();
        con.Close();
    }
}