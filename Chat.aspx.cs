using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Care_Executive_Chat : System.Web.UI.Page
{

    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ExecuteCommand("insert into Chat values('" + Session["Username"].ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + NameBox.Text + "','" + System.DateTime.Today.ToShortDateString() + "' ,'" + System.DateTime.Now.ToShortTimeString() + "','Executive' )");
        Response.Redirect("Chat.aspx");
    }
}