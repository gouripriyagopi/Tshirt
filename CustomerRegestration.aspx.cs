using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Registration_CustomerRegestration : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Customer";
        TextBox1.Attributes.Add("placeholder", "Full Name");
        TextBox2.Attributes.Add("placeholder", "Email ID");
        TextBox3.Attributes.Add("placeholder", "House Name/Number");
        TextBox4.Attributes.Add("placeholder", "Landmark");
        TextBox7.Attributes.Add("placeholder", "Phone Number");
        TextBox6.Attributes.Add("placeholder", "Pincode");
        TextBox8.Attributes.Add("placeholder", "Password");
        TextBox9.Attributes.Add("placeholder", "Re-enter Password");
        TextBox11.Attributes.Add("placeholder", "Security Answer");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.reader("select * from Registration where Email='" + TextBox2.Text + "' ");
        if (con.dr.Read())
        {
            Response.Write("<script>alert('The Email ID is already registered')</script>");
            con.dr.Close();
        }
        else
        {
            con.dr.Close();
            string Usertype = "Customer";
            con.ExecuteCommand("insert into Registration values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox3.Text + "','" + DropDownList5.SelectedValue + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + Usertype + "','" + TextBox8.Text + "','" + DropDownList4.Text + "','" + TextBox11.Text + "','" + 0 + "')");

            Response.Redirect("Login.aspx");
            Response.Write("<script>alert('Successfully registered to T-Trends.You can login after admin approval')</script>");

        }
    }

}