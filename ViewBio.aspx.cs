using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewBio : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["CurrentUser"].ToString();
        con.reader("select * from designer_bio where designerid='" + Session["CurrentUser"].ToString() + "' ");
        if (con.dr.Read())
        {
            About.Text = con.dr.GetValue(1).ToString();
            Qualification.Text = con.dr.GetValue(3).ToString();
            Experience.Text = con.dr.GetValue(4).ToString();
            Image1.ImageUrl = "~/Uploads/" + con.dr.GetValue(2).ToString();
        }
    }
}