using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class assign : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        lblusername.Text = Session["staff"].ToString();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into assigndet(assigtopic,dept,course,yearr,subname,sdate,stime,staffname,subdate)values('" + txtassign.Text + "','" + dropdept.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + dropyear.SelectedItem + "','" + txtsubjname.Text + "','" + lbldate.Text + "','" + lbltime.Text + "','" + lblusername.Text + "','" + txtdate.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
        txtsubjname.Text = "";
        txtassign.Text = "";
        txtdate.Text = "";
    }
}