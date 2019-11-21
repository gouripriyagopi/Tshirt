<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Registration/MasterPage.master" AutoEventWireup="true" CodeFile="SignUpt.aspx.cs" Inherits="Guest_Registration_SignUpt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="page-wrapper">
			<div class="main-page signup-page">
                
				<h2 class="title1">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    &nbsp;SignUp Here</h2>
				<div class="sign-up-row widget-shadow">
					<h5>Personal Information :</h5>
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
					<div class="sign-u">
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" ></asp:TextBox>
						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4>Gender :</h4>
						</div>
						<div class="sign-up2">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="28px" RepeatDirection="Horizontal" Width="280px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:RadioButtonList>
						    <br />
						</div>
                        <div class="sign-u">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="SingleLine" ></asp:TextBox>
						<div class="clearfix"> </div>
					</div>
                         <div class="sign-u">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="SingleLine" ></asp:TextBox>
						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                             </div>
					</div>
                        
                         <div class="sign-u">
                             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="40px" Width="525px"></asp:DropDownList>
   						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                             </div>
					</div>
                        <div class="sign-u">
                             <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" Height="40px" Width="525px"></asp:DropDownList>
   						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                             </div>
					</div>
                         <div class="sign-u">
                             <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" Height="40px" Width="525px"></asp:DropDownList>
                             	<div class="clearfix"> 
                                    <br />
                                    <br />
                             </div>
                             
					</div>
                          <div class="sign-u">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="SingleLine" ></asp:TextBox>
						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
					</div>

                        <div class="sign-u">
                             <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="525px">
                                 <asp:ListItem>Indian</asp:ListItem>
                             </asp:DropDownList>
   						<div class="clearfix"> 
                            <br />
                             </div>
					</div>
						<div class="clearfix"> </div>
					</div>
                      <div class="sign-u">
                        
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                          <asp:TextBox ID="TextBox7" runat="server" TextMode="SingleLine" ></asp:TextBox>
						<div class="clearfix"> </div>
					</div>
					<h6>Login Information :</h6>
					<div class="sign-u">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" ></asp:TextBox>

						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
					                 <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" ></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList4" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>

						<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Password Mismatch" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>

						</div>
                    <div class="sign-u">
                             <asp:DropDownList ID="DropDownList4" runat="server" Height="40px" Width="525px">
                                 <asp:ListItem>Who is your childhood friend</asp:ListItem>
                                 <asp:ListItem>What is your secret crush name</asp:ListItem>
                             </asp:DropDownList>

						     <br />
                             <br />
                        						<div class="clearfix"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                             </div>

						</div>
                    <div class="sign-u">
					                 <asp:TextBox ID="TextBox11" runat="server" TextMode="SingleLine" ></asp:TextBox>

						</div>
						<div class="clearfix"> </div>
					<div class="sub_home">
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" Height="62px" Width="128px" OnClick="Button1_Click" />
						<div class="clearfix"> 
   						     <br />
                             <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="* Fields are mandatory"></asp:Label>
   						     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [State]"></asp:SqlDataSource>
   						    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [Place] WHERE ([District] = @District)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="District" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
   						     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TShirtDBConnectionString %>" SelectCommand="SELECT [Name] FROM [District] WHERE ([State] = @State)">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="DropDownList1" Name="State" PropertyName="SelectedValue" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                        </div>
					</div>
					
				</div>
			</div>
		</div>
</asp:Content>

