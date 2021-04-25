using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
public partial class sendfile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    string destdir1, filename1, onlyfilename1, Onlyext1, orgfilename1, Destpath1;
    string subdate;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["user"].ToString();
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUploader.PostedFile.ContentLength != 0)
        {
            destdir1 = Server.MapPath("./assign");
            filename1 = Path.GetFileName(FileUploader.PostedFile.FileName);
            onlyfilename1 = Path.GetFileNameWithoutExtension(FileUploader.PostedFile.FileName);
            Onlyext1 = Path.GetExtension(FileUploader.PostedFile.FileName);
            orgfilename1 = onlyfilename1 + Onlyext1;
            Destpath1 = Path.Combine(destdir1, orgfilename1);
            FileUploader.PostedFile.SaveAs(Destpath1);

        }

        data();
        query = "select subdate from assigndet where staffname='" + dropstaffuname.SelectedItem + "' and assigtopic='" + droptopic.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            subdate = rd[0].ToString();
        }
        rd.Close();
        con.Close();
        string num = (Convert.ToDateTime(subdate).Subtract(Convert.ToDateTime(lbldate.Text)).Days).ToString();
        int days = Convert.ToInt32(num);
        if (days < 0)
        {
            data();
            query = "insert into fdet(uname,fname,fpath,assigntopic,sdate,stime,staffuname,status,subdate,assignmark)values('" + lbluser.Text + "','" + orgfilename1 + "','" + Destpath1 + "','" + droptopic.SelectedItem + "','" + lbldate.Text + "','" + lbltime.Text + "','" + dropstaffuname.SelectedItem + "','Late Submission','" + System.DateTime.Today.ToShortDateString() + "',0)";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
        else
        {
            data();
            query = "insert into fdet(uname,fname,fpath,assigntopic,sdate,stime,staffuname,assignmark)values('" + lbluser.Text + "','" + orgfilename1 + "','" + Destpath1 + "','" + droptopic.SelectedItem + "','" + lbldate.Text + "','" + lbltime.Text + "','" + dropstaffuname.SelectedItem + "',0)";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
        

       
       
    }
    
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
      
    }
  
}