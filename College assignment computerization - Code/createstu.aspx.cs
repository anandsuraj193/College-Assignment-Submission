using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class createstu : System.Web.UI.Page
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        int len = txtname.Text.Length;
        if (len > 2)
        {

            int u = randomnumber(100, 888);
            int p = randomnumber(11112, 67898);
            txteusername.Text = txtname.Text.Substring(0, 3) + u.ToString();
            txtepassword.Text = p.ToString();
        }
        else
        {
            
        }

    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            a = "Male";
        }
        else
        {
            a = "Female";
        }
        data();
        query = "insert into userdet(rollnum,name,dept,course,yearr,age,gender,uname,pwd)values('" + txtrollnum.Text + "','" + txtname.Text + "','" + dropdept.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + dropyear.SelectedItem + "','" + txtage.Text + "','" + a.ToString() + "','" + txteusername.Text + "','" + txtepassword.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        
        txtrollnum.Text = "";
       
        txtname.Text = "";
        txtage.Text = "";
        txteusername.Text = "";
        txtepassword.Text = "";
    }
    protected void txtrollnum_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select rollnum from userdet where rollnum='" + txtrollnum.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblerr.Visible = true;
        }
        else
        {
            lblerr.Visible = false;
        }
        rd.Close();
        con.Close();
    }
}