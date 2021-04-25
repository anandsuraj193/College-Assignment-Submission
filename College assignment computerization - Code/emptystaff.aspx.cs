using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emptystaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["staff"].ToString();
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
    }
}