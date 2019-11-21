<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Cancel.aspx.cs" Inherits="Customer_Cancel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                    <div class="row">
						<h3 class="title1">&nbsp;</h3>
                        <h3 class="title1">Cancel Order:</h3>
							<div class=" panel-body-inputin">
									
									<div class="form-group">
										<label class="col-md-2 control-label">Order ID</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="Email" ID="EmailBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										</div>
									</div>
                                <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Cancellation Reason</label>
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
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Enter Reason" ControlToValidate="NameBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>





                                <div class="sub_home">
                                    <br />
                                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Update" Height="62px" Width="128px" OnClick="Button1_Click" />
						<div class="clearfix"> 
                            </div></div>

							</div>
						</div>

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

