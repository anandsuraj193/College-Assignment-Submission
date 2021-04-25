using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class managestu : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
 
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string roll = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from userdet where rollnum='" + roll + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtrollnum = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtdept = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtage = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtusername = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtpassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        string roll = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "update userdet set name='" + txtname.Text + "',dept='" + txtdept.Text + "',age='" + txtage.Text + "',gender='" + txtgender.Text + "',uname='" + txtusername.Text + "',pwd='" + txtpassword.Text + "' where rollnum='" + roll + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        con.Close();
        GridView1.DataBind();
    }
}