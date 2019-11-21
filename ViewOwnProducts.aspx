<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="ViewOwnProducts.aspx.cs" Inherits="Designer_ViewOwnProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 487px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Uploads/" +Eval("image") %>' Width="100px" />
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("productid") %>' CommandName="Edit" Font-Size="Large">Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("productid") %>' CommandName="Delete" Font-Size="Large" ForeColor="Red">Delete</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_productdetails] WHERE ([emailid] = @emailid)">
                <SelectParameters>
                    <asp:SessionParameter Name="emailid" SessionField="Username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

