using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_MyWorks : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ExecuteCommand("insert into Gallery values('" +  Session["Username"].ToString() +"','" + Session["Photo"].ToString() +"','" + NameBox.Text +"')");
        Response.Write("<script>alert('Design inserted successfully')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!con.fileValidate(FileUpload1))
        {
            Session["Photo"] = null;
            Response.Write("<script>alert('Please choose image file')</script>");
        }
        else
        {
            Session["Photo"] = FileUpload1.FileName;
            string fpath = Server.MapPath("~/Uploads/") + FileUpload1.FileName;
            FileUpload1.SaveAs(fpath);
            Image1.ImageUrl = "~/Uploads/" + Session["Photo"].ToString();

        }
    }
}