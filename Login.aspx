<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Registration/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Guest_Registration_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    		<div id="page-wrapper">
			<div class="main-page login-page ">
				<h2 class="title1">Login</h2>
				<div class="widget-shadow">
					<div class="login-body">
                            <asp:TextBox ID="TextBox1" class="user"  runat="server" TextMode="Email"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" class="lock" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
							<div class="registration">
								Don't have an account ?
								<a class="" href="javascript:SetUsertypeCustomer()">
									Create an account
								</a>
							</div>
					</div>
				</div>
				
			</div>
		</div>

</asp:Content>

