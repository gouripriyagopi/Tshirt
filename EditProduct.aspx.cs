using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_EditProduct : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.reader("select * from tbl_productdetails where productid='" + Session["Pid"].ToString() + "' ");
        if (con.dr.Read())
        {
            Image1.ImageUrl = "~/Uploads/" + con.dr.GetValue(3).ToString();
            ProductBox.Text = con.dr.GetValue(2).ToString();
            DescriptionBox.Text = con.dr.GetValue(4).ToString();
            CategoryBox.SelectedValue = con.dr.GetValue(5).ToString();
            SizeBox.SelectedValue = con.dr.GetValue(6).ToString();
            MaxQtyBox.Text = con.dr.GetValue(7).ToString();
            MinQtyBox.Text = con.dr.GetValue(8).ToString();
            PriceBox.Text = con.dr.GetValue(9).ToString();
            DiscountBox.Text = con.dr.GetValue(10).ToString();
        }
        con.dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((Convert.ToInt32(MaxQtyBox.Text) >= 1) && (Convert.ToInt32(MinQtyBox.Text) >= 1) && (Convert.ToInt32(MaxQtyBox.Text) >= Convert.ToInt32(MinQtyBox.Text)))
        {
            if ((Convert.ToInt32(DiscountBox.Text) < 0) || (Convert.ToInt32(DiscountBox.Text) >= 100))
            {
                Response.Write("<script>alert('The discount percentage should be a valid amount')</script>");
            }
            else
            {
                if ((Convert.ToInt32(PriceBox.Text) < 0))
                {
                    Response.Write("<script>alert('The price should be a valid amount')</script>");
                }
                else
                {
                   con.ExecuteCommand("update tbl_productdetails set productname='" + ProductBox.Text + "', description='" + DescriptionBox.Text + "',category='" + CategoryBox.SelectedValue + "',size='" + SizeBox.SelectedValue + "',maxqty='" + MaxQtyBox.Text + "',minqty='" + MinQtyBox.Text + "',price='" + PriceBox.Text + "',discount='" + DiscountBox.Text + "' where emailid='"+ Session["Username"].ToString() +"'");
                    Response.Redirect("ViewOwnProducts.aspx");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Max. quantity shouldnot be less than minimum quantity')</script>");
        }
    }
}