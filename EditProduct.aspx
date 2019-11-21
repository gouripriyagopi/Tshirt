<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="Designer_EditProduct" %>



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
                        <h3 class="title1">Products</h3>
							<div class=" panel-body-inputin">
									
								
                                <div>
                                <label class="col-md-2 control-label">Product Photo<br />
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                                      </label>
                                    </div>
                                <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
									
										
									</div>

                                	<div class="form-group">
										<label class="col-md-2 control-label">Product Name</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:TextBox ID="ProductBox" class="form-control1" runat="server" Width="760px"  ></asp:TextBox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Enter Product Name" ControlToValidate="ProductBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>
                                  


                                 <div class="form-group">
                                    <br />
										<label class="col-md-2 control-label">Description</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                               <asp:TextBox ID="DescriptionBox" runat="server" TextMode="MultiLine" class="form-control1" ></asp:TextBox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator4" runat="server" errormessage="Enter Description" ControlToValidate="DescriptionBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>



                              


                                   <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Category</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:DropDownList ID="CategoryBox" runat="server" class="form-control1">
                    <asp:ListItem Value="roundneck"></asp:ListItem>
                    <asp:ListItem Value="vneck"></asp:ListItem>
                    <asp:ListItem Value="collarneck"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator6" runat="server" errormessage="Enter Category" ControlToValidate="CategoryBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Size</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:DropDownList ID="SizeBox" runat="server"  class="form-control1"   >
                    <asp:ListItem Value="small"></asp:ListItem>
                    <asp:ListItem Value="medium"></asp:ListItem>
                    <asp:ListItem Value="large"></asp:ListItem>
                    <asp:ListItem Value="XL"></asp:ListItem>
                    <asp:ListItem Value="XXL"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator7" runat="server" errormessage="Enter Size" ControlToValidate="SizeBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Maximum Quantity</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:TextBox ID="MaxQtyBox" runat="server" class="form-control1"  TextMode="Number" ></asp:TextBox>		
                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator8" runat="server" errormessage="Enter Maximum Quantity" ControlToValidate="MaxQtyBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>

                                <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Minimum Quantity</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:TextBox ID="MinQtyBox" runat="server" class="form-control1" TextMode="Number" ></asp:TextBox>		
                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Enter Minimum Quantity" ControlToValidate="MinQtyBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>

                                
                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Price Per Unit</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:TextBox ID="PriceBox" runat="server" class="form-control1"  TextMode="Number"></asp:TextBox>		
                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator9" runat="server" errormessage="Enter Price Per Unit" ControlToValidate="PriceBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>



                                   <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Discount (%)</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:TextBox ID="DiscountBox" runat="server" class="form-control1" TextMode="Number" ></asp:TextBox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator10" runat="server" errormessage="Enter Discount" ControlToValidate="DiscountBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>
                                
                                <div class="sub_home">
                                    <br />
                                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Update"  OnClick="Button1_Click" />
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
               
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
