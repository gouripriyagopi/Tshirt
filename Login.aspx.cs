using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Registration_Login : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "UserName");
        TextBox2.Attributes.Add("placeholder", "Password");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.reader("select Status,Usertype from Registration where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ");
        if (con.dr.Read())
        {
            if (Convert.ToInt32(con.dr.GetValue(0)) == 0)
            {
                Response.Write("<script>alert('The account under verification.Please try later')</script>");
                con.dr.Close();
            }
            else if (Convert.ToInt32(con.dr.GetValue(0)) == 2)
            {
                Response.Write("<script>alert('The account is currently deactivated')</script>");
                con.dr.Close();
            }
            else
            {
                Session["Username"] = TextBox1.Text;
                if (con.dr.GetValue(1).ToString() == "Customer")
                {
                    con.dr.Close();
                    Response.Redirect("../../Customer/Home.aspx");
                   // Response.Write("<script>alert('Customer Logged In')</script>");

                }
                else if (con.dr.GetValue(1).ToString() == "Customer Care Executive")
                {
                    con.dr.Close();
                    Response.Redirect("../../Customer Care Executive/Home.aspx");
                 //   Response.Write("<script>alert('Customer Care Executive Logged In')</script>");

                }
                else if (con.dr.GetValue(1).ToString() == "Designer")
                {
                    con.dr.Close();
                    Response.Redirect("../../Designer/Home.aspx");
                   // Response.Write("<script>alert('Designer Logged In')</script>");

                }
                else if (con.dr.GetValue(1).ToString() == "Admin")
                {
                    con.dr.Close();
                    Response.Redirect("../../Admin/Home.aspx");
                    // Response.Write("<script>alert('Designer Logged In')</script>");

                }
                else
                {
                    con.dr.Close();

                }
            }

        }
        else
        {
            Response.Write("<script>alert('Incorrect username or password')</script>");
            con.dr.Close();
        }
    }
}