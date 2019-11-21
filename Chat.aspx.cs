using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Chat : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string reciever = "";
        con.reader("select Email from Registration where Usertype='Customer Care Executive'");
        if (con.dr.Read())
        {
            reciever = con.dr.GetValue(0).ToString();
        }
        con.dr.Close();
        con.ExecuteCommand("insert into Chat values('" + Session["Username"].ToString() + "','" + reciever + "','" + NameBox.Text + "','" + System.DateTime.Today.ToShortDateString() + "' ,'" + System.DateTime.Now.ToShortTimeString() + "','Customer' )");
        Response.Redirect("Chat.aspx");
    }
}