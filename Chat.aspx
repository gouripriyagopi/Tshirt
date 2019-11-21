<%@ Page Title="" Language="C#" MasterPageFile="~/Customer Care Executive/MasterPage.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Customer_Care_Executive_Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 369px;
        }
        .auto-style2 {
            height: 93px;
        }
        .auto-style3 {
            width: 369px;
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#66FF33" Text="Have A Problem ? Chat With Our Executives"></asp:Label>
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
            <td> <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                <asp:DropDownList ID="DropDownList1" class="form-control1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="sender" DataValueField="sender"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="select DISTINCT sender from Chat where usertype='Customer'"></asp:SqlDataSource>
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										</div>
									</div>&nbsp;</td>
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
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Italic="True" Text='<%# Eval("sender") %>'></asp:Label>
                        &nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="dateLabel" runat="server" Font-Italic="True" Font-Size="Small" Text='<%# Eval("date") %>' />
                        &nbsp;
                        <asp:Label ID="dateLabel0" runat="server" Font-Italic="True" Font-Size="Small" Text='<%# Eval("time") %>' />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
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
            <td>
                                    <div class="row">
						
									
                                <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="NameBox"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Please Type Your Message" ControlToValidate="NameBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>





                                <div class="sub_home">
                                    <br />
                                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Send" Height="62px" Width="128px" OnClick="Button1_Click" />
						<div class="clearfix"> 
                            </div></div>

							</div>
						</div>
&nbsp;</td>
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
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="select * from Chat where ( sender=@id or reciever=@id) and ( sender=@cid or reciever=@cid)   order by date asc">
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="Username" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="cid" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

