<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="BookNow.aspx.cs" Inherits="Customer_BookNow" %>


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
                        <h3 class="title1">Booking</h3>
							<div class=" panel-body-inputin">
									
								
                             
                
                                	<div class="form-group">
										<label class="col-md-2 control-label">Quantity</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                <asp:dropdownlist id="QtyBox" class="form-control1" Width="760px"   runat="server" AutoPostBack="True" OnSelectedIndexChanged="QtyBox_SelectedIndexChanged"></asp:dropdownlist>                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Enter Quantity" ControlToValidate="QtyBox" ForeColor="Red" Enabled="False"></asp:requiredfieldvalidator>
										</div>
									</div>
                                  


                                 <div class="form-group">
                                    <br />
										<label class="col-md-2 control-label">Unit Price</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                               <asp:TextBox ID="UpriceBox" runat="server" TextMode="Number" class="form-control1" ReadOnly="True" Width="760px" ></asp:TextBox>		
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
										<label class="col-md-2 control-label">Discount Amount</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                               <asp:TextBox ID="DiscountBox" runat="server" TextMode="Number" class="form-control1" ReadOnly="True" Width="760px" ></asp:TextBox>		
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
										<label class="col-md-2 control-label">Total Amount</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                               <asp:TextBox ID="TotalBox" runat="server" TextMode="Number" class="form-control1" ReadOnly="True" Width="760px" ></asp:TextBox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										    <br />
                                            <br />
										</div>
									</div>
                                             <div class="form-group">
                                     <br />
                                     <br />
                                    <br />
										<label class="col-md-2 control-label">Expected Delivery By</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                               <asp:TextBox ID="Ddate" runat="server" class="form-control1" ReadOnly="True" Width="760px" ></asp:TextBox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										    <br />
                                            <br />
                                            <br />
                                            <br />
										</div>
									</div>


                                 <div class="form-group">
                                    <br />
										<label class="col-md-2 control-label"></label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
                                                <asp:checkbox runat="server" Text="    Shipping Address Same As Permenant Address" ID="CheckBOx" AutoPostBack="True" OnCheckedChanged="Unnamed1_CheckedChanged"></asp:checkbox>
                                                <br />
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										    <br />
										    <br />
										</div>
									</div>
                              

                                  <div class="form-group">
										<label class="col-md-2 control-label">State</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                <asp:dropdownlist class="form-control1" Width="760px"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" ID="State"></asp:dropdownlist>
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator9" runat="server" errormessage="Enter State" ControlToValidate="State" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>

                                <div class="form-group">
										<label class="col-md-2 control-label">District</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                <asp:dropdownlist class="form-control1" Width="760px"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" ID="Dist"></asp:dropdownlist>
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator3" runat="server" errormessage="Enter District" ControlToValidate="Dist" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>

                                
                                	<div class="form-group">
										<label class="col-md-2 control-label">Place</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                         <asp:dropdownlist class="form-control1" Width="760px"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" ID="Place"></asp:dropdownlist>

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator4" runat="server" errormessage="Enter Place" ControlToValidate="Place" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>


                                <div class="form-group">
										<label class="col-md-2 control-label">House Name</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:TextBox ID="Hname" class="form-control1" runat="server" Width="760px"  ></asp:TextBox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator5" runat="server" errormessage="Enter House Name" ControlToValidate="Hname" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>


                                  <div class="form-group">
										<label class="col-md-2 control-label">LandMark</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:TextBox ID="Landmark" class="form-control1" runat="server" Width="760px"  ></asp:TextBox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator6" runat="server" errormessage="EnterLandmark" ControlToValidate="Landmark" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>

                                  <div class="form-group">
										<label class="col-md-2 control-label">Pincode</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:TextBox ID="Pincode" class="form-control1" runat="server" Width="760px" TextMode="Number"  ></asp:TextBox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator7" runat="server" errormessage="Pincode" ControlToValidate="Pincode" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									    <br />
									</div>


                                  <div class="form-group">
										<label class="col-md-2 control-label">Phone Number</label>
										<div >
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:TextBox ID="Phone" class="form-control1" runat="server" Width="760px" TextMode="Number"  ></asp:TextBox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator8" runat="server" errormessage="Enter Phone Number" ControlToValidate="Phone" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                <div class="sub_home">
                                    <br />
                                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Book Now"  OnClick="Button1_Click" />
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
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [District] WHERE ([State] = @State)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="State" Name="State" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [State]"></asp:SqlDataSource>
               
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [Place] WHERE ([District] = @District)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Dist" Name="District" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
