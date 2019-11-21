using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Care_Executive_executivebio : System.Web.UI.Page
{
    connection con = new connection();
    public int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.reader("select * from executive_bio where executive_id='" + Session["Username"] + "' ");
        if (con.dr.Read())
        {
            flag = 0;
            NameBox.Text = con.dr.GetValue(1).ToString();
            QBox.SelectedValue = con.dr.GetValue(3).ToString();
            ExpBox.Text = con.dr.GetValue(4).ToString();

    }
        else
        {
            flag = 1;
        }
        con.dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            con.ExecuteCommand("insert into executive_bio values('" + Session["Username"].ToString() + "','" + NameBox.Text + "','" + Session["Photo"].ToString() + "','" + QBox.SelectedValue.ToString() + "','" + ExpBox.Text + "' )");
            Response.Redirect("executivebio.aspx");
        }
        if (flag == 0)
        {
            con.ExecuteCommand("update executive_bio set bio='" + NameBox.Text + "', photo='" + Session["Photo"].ToString() + "',qualification='" + QBox.SelectedValue.ToString() + "',exp='" + ExpBox.Text + "' where designerid='" + Session["Username"].ToString() + "' ");
            Response.Redirect("executivebio.aspx");
        }

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