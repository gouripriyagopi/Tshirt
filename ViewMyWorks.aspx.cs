using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_ViewMyWorks : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Remove")
        {
            con.ExecuteCommand("delete from Gallery where Id='" + Convert.ToInt32(e.CommandArgument.ToString()) + "'");
            Response.Redirect("ViewMyWorks.aspx");
        }
    }
}