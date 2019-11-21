using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblAmoubnt.Text = Session["amount"].ToString();
            lblMurchant.Text = "BeLive";
            lblTID.Text = "602AXE9L3UAM9";
            lblDate.Text = DateTime.Now.Date.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


         Response.Redirect("~/Customer/MyOrders.aspx");

      //  Response.Redirect("../UserHome.aspx");


        

    }
}
