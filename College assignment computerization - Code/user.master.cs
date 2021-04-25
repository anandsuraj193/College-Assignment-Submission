using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    string user1;
    protected void Page_Load(object sender, EventArgs e)
    {
        user1 = Session["user"].ToString();
        
            Panel1.Visible = true;
        
        
    }
   
}
