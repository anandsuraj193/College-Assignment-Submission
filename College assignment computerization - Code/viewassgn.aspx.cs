using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class viewassgn : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    string uname, fname, assigntopic;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        uname = GridView1.SelectedRow.Cells[0].Text.ToString();
        fname = GridView1.SelectedRow.Cells[1].Text.ToString();
        assigntopic = GridView1.SelectedRow.Cells[2].Text.ToString();
        HyperLink7.NavigateUrl = (@"~\assign\" + fname);
        lblstuusername.Text = uname.ToString();
        data();
        query = "select * from userdet where uname='" + lblstuusername.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblrollno.Text = rd[1].ToString();
            lblname.Text = rd[2].ToString();
            lbldepartment.Text = rd[3].ToString();
            lblcousrse.Text = rd[4].ToString();
            lblyear.Text = rd[5].ToString();
        }
        rd.Close();
        con.Close();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView2.Visible = true;
        GridView2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "update fdet set assignmark='" + txtmark.Text + "',rollno='" + lblrollno.Text + "' where assigntopic='" + DropDownList1.SelectedItem + "' and uname='" + lblstuusername.Text + "' ";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}