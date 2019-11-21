using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment_Default : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Username"].ToString();
        string s = "Select accno,cvv from Payment  where accno ='" + TextBox1.Text + "' and cvv='" + TextBox2.Text + "' ";
        con.reader(s);
        //con.execute(s);
        if (con.dr.Read())
        {

            if (CheckBox1.Checked == true)
            {
                Session["accno"] = TextBox1.Text;
                Response.Redirect("Second.aspx");
            }
            else
            {
                Label1.Text = "Please accept the Terms & Conditions";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            Label1.Text = "wrong account number or confirmation pin";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}