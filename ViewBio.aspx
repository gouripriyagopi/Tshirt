<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBio.aspx.cs" Inherits="Admin_ViewBio" %>


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
                        <h3 class="title1"><asp:Label ID="Label1" runat="server" ></asp:Label>
                        </h3>
                        <p class="title1">&nbsp;</p>
                        <p class="title1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                        </p>
							<div class=" panel-body-inputin">
									
									<div class="form-group">
										<label class="col-md-2 control-label">About</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="About" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										    <br />
                                            <br />
										</div>
									</div>


	<div class="form-group">
										<label class="col-md-2 control-label">Qualification</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="Qualification" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										    <br />
                                            <br />
										</div>
									</div>
                                	<div class="form-group">
										<label class="col-md-2 control-label">Experience</label>
										<div class="col-md-8">
											<div class="input-group input-icon right">
												<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
												</span>
 
                                                <asp:textbox  class="form-control1" runat="server" TextMode="SingleLine" ID="Experience" ReadOnly="True"></asp:textbox>		
                                                <br />
                                            </div>
										</div>
										<div class="col-sm-2">
										</div>
									</div>

           

                                <div class="sub_home">
                                    <br />
                                    <br />
                        
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

