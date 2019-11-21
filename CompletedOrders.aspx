<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="CompletedOrders.aspx.cs" Inherits="Designer_CompletedOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 403px;
    }
    .auto-style4 {
        height: 68px;
    }
    .auto-style5 {
        width: 403px;
        height: 68px;
    }
    .auto-style6 {
        height: 50px;
    }
    .auto-style7 {
        width: 403px;
        height: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style6">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#33CC33" Text="Completed Orders"></asp:Label>
        </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="order_id" DataSourceID="SqlDataSource1" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    <br />
                    &nbsp;order id:
                    <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Uploads/"+Eval("image") %>' Width="100px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="productnameLabel" runat="server" Font-Bold="True" ForeColor="#33CC33" Text='<%# Eval("productname") %>' />
                    &nbsp; :&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Italic="True" Text='<%# Eval("status") %>'></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="About "></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("productname") %>'></asp:Label>
                    &nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp; description :
                    <asp:Label ID="descriptionLabel0" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    &nbsp;&nbsp; category&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="categoryLabel0" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    &nbsp;&nbsp; size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="sizeLabel0" runat="server" Text='<%# Eval("size") %>' />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Order Details"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp; Customer :
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("customer_id") %>' CommandName="Customer" Font-Bold="True" Text='<%# Eval("customer_id") %>'></asp:LinkButton>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp; quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp; discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp; unit price&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="unit_priceLabel" runat="server" Text='<%# Eval("unit_price") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp; total price&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="total_priceLabel" runat="server" Text='<%# Eval("total_price") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp; book date&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="book_dateLabel" runat="server" Text='<%# Eval("book_date") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp; delivery date:
                    <asp:Label ID="delivery_dateLabel" runat="server" Text='<%# Eval("delivery_date") %>' />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Billing Address"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="house_nameLabel" runat="server" Text='<%# Eval("house_name") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="landmarkLabel" runat="server" Text='<%# Eval("landmark") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; pincode :
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; phone&nbsp;&nbsp; :
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="select order_table.*, tbl_productdetails.* from order_table,tbl_productdetails where order_table.status !='Ordered' and order_table.product_code=tbl_productdetails.productid  and tbl_productdetails.emailid=@id">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="Username" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

