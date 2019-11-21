using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_ViewOrders : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Deliver")
        {
            con.ExecuteCommand("update order_table set status='Delivered', delivery_date='" + System.DateTime.Today.ToShortDateString() + "' where order_id='" + e.CommandArgument.ToString() + "' ");
            Response.Redirect("ViewOrders.aspx");
        }
        
        if (e.CommandName.ToString() == "Customer")
        {
            Session["CID"] = e.CommandArgument.ToString();
            Response.Redirect("ViewCustomer.aspx");
        }
    }
}