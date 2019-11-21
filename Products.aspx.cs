using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Products : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "View")
        {
            Response.Redirect("~/Uploads/"+ e.CommandArgument.ToString());
        }
        if (e.CommandName.ToString() == "Book")
        {
            Session["ProductID"] = e.CommandArgument.ToString();
            Response.Redirect("BookNow.aspx");  
        }
    }
}