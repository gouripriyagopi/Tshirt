<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="Designer_ViewCustomer" %>

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
                        <h3 class="title1">Customer&nbsp; Profile :</h3>
							<div class=" panel-body-inputin">
									
									<div class="form-group">
										<label class="col-md-2 control-label">Email</label>
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
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Enter Email" ControlToValidate="EmailBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>
                                <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Name</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="NameBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Enter Name" ControlToValidate="NameBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                
                                 <div class="form-group">
                                     <br />
                                    <br />
										<label class="col-md-2 control-label">Gender</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="Gender" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										</div>
									</div>


                                 <div class="form-group">
                                     <br />
                                    <br />
										<label class="col-md-2 control-label">House Name</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="HouseBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator4" runat="server" errormessage="Enter House Name" ControlToValidate="HouseBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>



                                
                                 <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">LandMark</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="LandMarkBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator5" runat="server" errormessage="Enter LandMark" ControlToValidate="LandMarkBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                   <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">State</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="StateBox" ReadOnly="True"></asp:textbox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator6" runat="server" errormessage="Enter State" ControlToValidate="StateBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">District</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="DistrictBox" ReadOnly="True"></asp:textbox>		

                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator7" runat="server" errormessage="Enter District" ControlToValidate="DistrictBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Place</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="PlaceBox" ReadOnly="True"></asp:textbox>		

                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator8" runat="server" errormessage="Enter Place" ControlToValidate="PlaceBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>

                                
                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Nationality</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
                                                 <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="NationalityBox" ReadOnly="True"></asp:textbox>		

                                              	
                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator9" runat="server" errormessage="Enter Nationality" ControlToValidate="NationalityBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>



                                   <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Pincode</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="PincodeBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator10" runat="server" errormessage="Enter Pincode" ControlToValidate="PincodeBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Phone Number</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="PhoneBox" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator11" runat="server" errormessage="Enter Phone" ControlToValidate="PhoneBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>

                                <div class="sub_home">
                                    <br />
                                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Update" Height="62px" Width="128px" OnClick="Button1_Click" Visible="False" />
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

