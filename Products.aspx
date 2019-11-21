<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Customer_Products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
            width: 167px;
        }
        .auto-style2 {
            width: 368px;
        }
        .auto-style3 {
            height: 91px;
        }
        .auto-style4 {
            width: 368px;
            height: 91px;
        }
        .auto-style5 {
            width: 167px;
            height: 91px;
        }
        .auto-style6 {
            height: 35px;
        }
        .auto-style7 {
            width: 368px;
            height: 35px;
        }
        .auto-style8 {
            width: 167px;
            height: 35px;
        }
        .auto-style9 {
            height: 31px;
        }
        .auto-style10 {
            width: 368px;
            height: 31px;
        }
        .auto-style11 {
            width: 167px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Filters"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
        </td>
        <td class="auto-style6"><asp:DropDownList ID="CategoryBox" runat="server" class="form-control1" AutoPostBack="True" Width="597px">
                    <asp:ListItem Value="roundneck"></asp:ListItem>
                    <asp:ListItem Value="vneck"></asp:ListItem>
                    <asp:ListItem Value="collarneck"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>&nbsp;<br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
        </td>
        <td class="auto-style9">
 
                                                <asp:DropDownList ID="SizeBox" runat="server"  class="form-control1" AutoPostBack="True" Width="595px"   >
                    <asp:ListItem Value="small"></asp:ListItem>
                    <asp:ListItem Value="medium"></asp:ListItem>
                    <asp:ListItem Value="large"></asp:ListItem>
                    <asp:ListItem Value="XL"></asp:ListItem>
                    <asp:ListItem Value="XXL"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>		
                                                </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Sort By"></asp:Label>
        </td>
        <td>
 
                                                <asp:DropDownList ID="SortBox" runat="server"  class="form-control1" AutoPostBack="True" Width="595px"   >
                    <asp:ListItem>Price</asp:ListItem>
                </asp:DropDownList>		
                                                </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("image") %>' CommandName="View" Height="100px" ImageUrl='<%# "~/Uploads/"+Eval("image") %>' Width="100px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="productnameLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33" Text='<%# Eval("productname") %>' />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="categoryLabel" runat="server" Font-Bold="True" Text='<%# Eval("category") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp; Features :-<br />
                    <br />
                    &nbsp;&nbsp; size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp; Maximum quantity :
                    <asp:Label ID="maxqtyLabel" runat="server" Text='<%# Eval("maxqty") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp; Minimum Quantity :
                    <asp:Label ID="minqtyLabel" runat="server" Text='<%# Eval("minqty") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp; Price Per Piece&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp; Discount Percentage:
                    <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("productid") %>' CommandName="Book" Font-Size="Large">Book Now</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("productid") %>' CommandName="Delete" Font-Size="Large" ForeColor="Red" Visible="False">Delete</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_productdetails] WHERE (([category] = @category) AND ([size] = @size)) ORDER BY [price], [category]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CategoryBox" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="SizeBox" Name="size" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

