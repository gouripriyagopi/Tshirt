using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_ProductDetails : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

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
                    if ((Convert.ToInt32(Delivery.Text) < 0))
                    {
                        Response.Write("<script>alert('The delivery period should be a valid number')</script>");
                    }
                    else
                    {
                        con.ExecuteCommand("insert into tbl_productdetails values('" + Session["Username"].ToString() + "','" + ProductBox.Text + "','" + Session["Photo"].ToString() + "','" + DescriptionBox.Text + "','" + CategoryBox.SelectedValue + "','" + SizeBox.SelectedValue + "','" + MaxQtyBox.Text + "','" + MinQtyBox.Text + "','" + PriceBox.Text + "','" + DiscountBox.Text + "','" + System.DateTime.Today.Date + "','"+ Delivery.Text +"')");
                        Response.Redirect("ProductDetails.aspx");
                    }
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Max. quantity shouldnot be less than minimum quantity')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!con.fileValidate(FileUpload1))
        {
            Session["Photo"] = null;
            Response.Write("<script>alert('Please choose image file')</script>");
        }
        else
        {
            Session["Photo"] = FileUpload1.FileName;
            string fpath = Server.MapPath("~/Uploads/") + FileUpload1.FileName;
            FileUpload1.SaveAs(fpath);
            Image1.ImageUrl = "~/Uploads/" + Session["Photo"].ToString();

        }
    }
}