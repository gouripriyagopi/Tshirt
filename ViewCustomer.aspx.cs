using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_ViewCustomer : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.reader("select * from Registration where Email='" + Session["CID"].ToString() + "'");
        if (con.dr.Read())
        {
            EmailBox.Text = con.dr.GetValue(0).ToString();
            NameBox.Text = con.dr.GetValue(1).ToString();
            HouseBox.Text = con.dr.GetValue(3).ToString();
            LandMarkBox.Text = con.dr.GetValue(5).ToString();
            StateBox.Text = con.dr.GetValue(7).ToString();
            DistrictBox.Text = con.dr.GetValue(6).ToString();
            PlaceBox.Text = con.dr.GetValue(4).ToString();
            NationalityBox.Text = con.dr.GetValue(8).ToString();
            PincodeBox.Text = con.dr.GetValue(9).ToString();
            PhoneBox.Text = con.dr.GetValue(10).ToString();
            string gender = con.dr.GetValue(2).ToString();
            Gender.Text = gender;
        }
        con.dr.Close();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}