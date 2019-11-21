using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_BookNow : System.Web.UI.Page
{
    connection con = new connection();
    bool validate = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.reader("select maxqty,minqty from tbl_productdetails where productid='" + Session["ProductID"] + "' ");
            if (con.dr.Read())
            {
                int max = Convert.ToInt32(con.dr.GetValue(0).ToString());
                int min = Convert.ToInt32(con.dr.GetValue(1).ToString());
                for (int i = max; i >= min; i--)
                {
                    QtyBox.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
                }
                QtyBox.SelectedValue = min.ToString();
            }
            con.dr.Close();
        }

        con.reader("select maxqty,minqty,price,discount,deliverytime from tbl_productdetails where productid='" + Session["ProductID"] + "' ");
        if (con.dr.Read())
        {
            int max = Convert.ToInt32(con.dr.GetValue(0).ToString());
            int min = Convert.ToInt32(con.dr.GetValue(1).ToString());
            int uprice = Convert.ToInt32(con.dr.GetValue(2).ToString());
            int discount = Convert.ToInt32(con.dr.GetValue(3).ToString());
            int qty = Convert.ToInt32(QtyBox.SelectedValue.ToString());
            int total, gross;
            int days = Convert.ToInt32(con.dr.GetValue(4).ToString());
            Ddate.Text = System.DateTime.Today.Date.AddDays(days).ToShortDateString();
            if ((qty >= min) && (qty <= max))
            {
                discount = (qty * uprice) * discount / 100;
                total = qty * uprice;
                gross = total - discount;
                DiscountBox.Text = discount.ToString();
                TotalBox.Text = gross.ToString();
                UpriceBox.Text = uprice.ToString();

            }
            else
            {
                validate = false;
                Response.Write("<script>alert('Please enter a quantity between " + max.ToString() + " and " + min.ToString() + " . ')</sccript>");
            }
        }
        con.dr.Close();

        if (CheckBOx.Checked == true)
        {
            con.reader("select * from Registration where Email='" + Session["Username"].ToString() + "'");
            if (con.dr.Read())
            {
                State.SelectedValue = con.dr.GetValue(7).ToString();
                Dist.SelectedValue = con.dr.GetValue(6).ToString();
                Hname.Text = con.dr.GetValue(3).ToString();
                Place.SelectedValue = con.dr.GetValue(4).ToString();
                Landmark.Text = con.dr.GetValue(5).ToString();
                Pincode.Text = con.dr.GetValue(9).ToString();
                Phone.Text = con.dr.GetValue(10).ToString();
            }
        }
        else
        {
            Hname.Text = "";
            Pincode.Text = "";
            Phone.Text = "";
            Landmark.Text = "";

        }
        con.dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status="Ordered";
        con.ExecuteCommand("insert into order_table(product_code,customer_id,quantity,discount,unit_price,total_price,house_name,place,landmark,district,state,pincode,phone,status,book_date,delivery_date) values('" + Session["ProductID"].ToString() + "', '" + Session["Username"].ToString() + "','" + Convert.ToInt32(QtyBox.Text) + "','" + Convert.ToInt32(DiscountBox.Text) + "','" + Convert.ToInt32(UpriceBox.Text) + "','" + Convert.ToInt32(TotalBox.Text) + "','" + Hname.Text + "','" + Place.SelectedValue.ToString() + "','" + Landmark.Text + "','" + Dist.SelectedValue.ToString() + "','" + State.SelectedValue.ToString() + "','" + Pincode.Text + "','" + Phone.Text + "','" + status + "','" + System.DateTime.Today.Date.ToShortDateString() + "','" + Ddate.Text + "')");
        Session["amount"] = TotalBox.Text;
        Response.Redirect("~/Payment/First.aspx");
    }
    protected void QtyBox_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void QtyBox_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Unnamed1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
}