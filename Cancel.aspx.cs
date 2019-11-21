using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Cancel : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        EmailBox.Text = Session["OID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ExecuteCommand("update order_table set status='Cancelled', cancel_date='" + System.DateTime.Today.ToShortDateString() + "',cancel_reason='" + NameBox.Text + "' where order_id='" + EmailBox.Text + "' ");
        Response.Redirect("MyOrders.aspx");
    }
}