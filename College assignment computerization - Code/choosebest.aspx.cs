using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class choosebest : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,staffuname;
    string assgntopic, fname, student;
    protected void Page_Load(object sender, EventArgs e)
    {
        staffuname = Session["staff"].ToString();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        DropDownList2.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        staffuname = Session["staff"].ToString();
        student = GridView1.SelectedRow.Cells[0].Text.ToString();
        fname = GridView1.SelectedRow.Cells[1].Text.ToString();
        assgntopic = GridView1.SelectedRow.Cells[2].Text.ToString();
        data();
        query = "insert into bestassign(assigntopic,fname,sentstaff,stuuname,dept,course,yearr)values('" + assgntopic + "','" + fname + "','" + staffuname + "','" + student + "','" + dropdept.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + dropyear.SelectedItem + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Panel1.Visible = false;
    }
}