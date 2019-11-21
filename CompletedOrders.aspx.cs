using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_CompletedOrders : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DateTime dt = System.DateTime.Today;
        string status="";
        if(e.CommandName.ToString()=="Replace")
        {
         con.reader("select delivery_date,status from order_table where order_id='" + e.CommandArgument.ToString() + "' ");
         if (con.dr.Read())
         {
             dt = Convert.ToDateTime(con.dr.GetValue(0));
             status = con.dr.GetValue(1).ToString();
         }

         con.dr.Close();
         if (status == "Delivered")
         {
             dt = dt.AddDays(7);
             if (dt < System.DateTime.Today)
             {
                 Response.Write("<script>alert('The replacement period is over! ')</script>");
             }
             else
             {
                 con.ExecuteCommand("update order_table set status='Replaced',replacement_date='" + System.DateTime.Today.ToShortDateString() + "', delivery_date= '" + System.DateTime.Today.AddDays(7).ToShortDateString() + "' where order_id='" + e.CommandArgument.ToString() + "' ");
                 Response.Redirect("CompletedOrders.aspx");
             }
         }
         else
         {
             Response.Write("<script>alert('Your product is already replaced ')</script>");
         }

        }
    }
}