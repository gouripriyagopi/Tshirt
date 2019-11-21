using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment_Default : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblCardNumber.Text  = Session["accno"].ToString();
            lbl_Payto.Text = "T-Trends Online";
            lbl_Amount.Text = Session["amount"].ToString();

        }
    }

    protected void lblCopyIt_Click(object sender, EventArgs e)
    {
        //Code to copy address from table
        string sel = "SELECT * from Registration where Email ='" + Session["Username"] + "' ";
       // string str = "select fname,place from family where username='" + Session["User"] + "'";
        con.reader(sel);
       // con.reader(str);
        if (con.dr.Read())
        {
            txtName.Text = con.dr.GetValue(1).ToString();
            txtAddress.Text = con.dr.GetValue(3).ToString();
            txtPlace.Text = con.dr.GetValue(4).ToString();
            txtState.Text = con.dr.GetValue(7).ToString();
            txtEmail.Text = con.dr.GetValue(0).ToString();
            txtPhone.Text = con.dr.GetValue(10).ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Third.aspx"); 
    }
}