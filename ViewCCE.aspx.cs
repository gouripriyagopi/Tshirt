using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewCCE : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Approve")
        {
            con.ExecuteCommand("update Registration set Status=1 where Email='" + e.CommandArgument.ToString() + "' ");
            Response.Redirect("ViewCCE.aspx");
        }
        if (e.CommandName.ToString() == "Reject")
        {
            con.ExecuteCommand("update Registration set Status=2 where Email='" + e.CommandArgument.ToString() + "' ");
            Response.Redirect("ViewCCE.aspx");
        }


    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Reject")
        {
            con.ExecuteCommand("update Registration set Status=2 where Email='" + e.CommandArgument.ToString() + "' ");
            Response.Redirect("ViewCCE.aspx");
        }
    }
}