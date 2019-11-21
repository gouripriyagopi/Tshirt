<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCustomers.aspx.cs" Inherits="Admin_ViewCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 457px;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style5 {
            width: 457px;
            height: 42px;
        }
        .auto-style6 {
            height: 60px;
        }
        .auto-style7 {
            width: 457px;
            height: 60px;
        }
        .auto-style8 {
            height: 60px;
            width: 256px;
        }
        .auto-style9 {
            height: 42px;
            width: 256px;
        }
        .auto-style10 {
            width: 256px;
        }
        .auto-style11 {
            height: 60px;
            width: 232px;
        }
        .auto-style12 {
            height: 42px;
            width: 232px;
        }
        .auto-style13 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table class="auto-style2">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style7"></td>
            <td class="auto-style11"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#006600" Text="Yet To Be Approved"></asp:Label>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#006600" Text="Approved Customers"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td >
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Email" DataSourceID="SqlDataSource1" Height="2680px" Width="310px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <asp:Label ID="EmailLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="#F2B33F" Text='<%# Eval("Email") %>' />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Housename&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="HousenameLabel" runat="server" Text='<%# Eval("Housename") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("Place") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Landmark&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="LandmarkLabel" runat="server" Text='<%# Eval("Landmark") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; District&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nationality&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="NationalityLabel" runat="server" Text='<%# Eval("Nationality") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pincode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PincodeLabel" runat="server" Text='<%# Eval("Pincode") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Email") %>' CommandName="Approve" Font-Bold="True" ForeColor="#006600">Approve</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Email") %>' CommandName="Reject" Font-Bold="True" ForeColor="Red">Reject</asp:LinkButton>
                        &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT * FROM [Registration] WHERE (([Status] = @Status) AND ([Usertype] = @Usertype))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
                        <asp:Parameter DefaultValue="Customer" Name="Usertype" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="Email" DataSourceID="SqlDataSource2" Height="2680px" Width="310px" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        <asp:Label ID="EmailLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="#F2B33F" Text='<%# Eval("Email") %>' />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Housename&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="HousenameLabel" runat="server" Text='<%# Eval("Housename") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("Place") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Landmark&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="LandmarkLabel" runat="server" Text='<%# Eval("Landmark") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; District&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nationality&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="NationalityLabel" runat="server" Text='<%# Eval("Nationality") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pincode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PincodeLabel" runat="server" Text='<%# Eval("Pincode") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        <br />
                        <br />
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Email") %>' CommandName="Reject" Font-Bold="True" ForeColor="Red">Remove Customer</asp:LinkButton>
                        &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT * FROM [Registration] WHERE (([Usertype] = @Usertype) AND ([Status] = @Status))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Customer" Name="Usertype" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    

</asp:Content>

