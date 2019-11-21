<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="Bio.aspx.cs" Inherits="Designer_Bio" %>


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
                        <h3 class="title1">My Bio:</h3>
							<div class=" panel-body-inputin">
									
									
                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Profile Photo<br />
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                                      </label>
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                                      <br />
										<div class="col-md-8">
											<div class="input-group input-icon right">
												
                                                <asp:FileUpload ID="FileUpload1" class="form-control1" runat="server" />
                                                <asp:Button ID="Button2" runat="server" Text="Upload" CausesValidation="False" OnClick="Button2_Click" />
                                                  
                                                <br />
                                            </div>
										</div>
										
									</div>

                                
                                <div class="form-group">
                                    <br />
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">About Me</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" Height="80px" TextMode="SingleLine" ID="NameBox"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Enter Bio" ControlToValidate="NameBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>





                                   <div class="form-group">
                                       <br />
                                       <br />
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Qualification</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:DropDownList ID="QBox" class="form-control1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Qualification" DataValueField="Qualification">
                                                </asp:DropDownList>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator6" runat="server" errormessage="Enter Qualification" ControlToValidate="QBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>


                               


                                  <div class="form-group">
                                    <br />
                                    <br />
										<label class="col-md-2 control-label">Experience (Years)</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox ID="ExpBox" class="form-control1" runat="server" AutoPostBack="True" TextMode="Number"></asp:textbox>		
                                                  
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
                                            <asp:requiredfieldvalidator ID="Requiredfieldvalidator8" runat="server" errormessage="Enter Experience" ControlToValidate="ExpBox" ForeColor="Red"></asp:requiredfieldvalidator>
										</div>
									</div>

                                



                                 

                                <div class="sub_home">
                                    <br />
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT * FROM [Qualification]"></asp:SqlDataSource>
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

