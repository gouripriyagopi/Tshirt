<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/MasterPage.master" AutoEventWireup="true" CodeFile="PaintPlatform.aspx.cs" Inherits="Designer_PaintPlatform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 453px;
        }
        .auto-style2 {
            width: 453px;
            height: 172px;
        }
        .auto-style3 {
            height: 172px;
        }
        .auto-style5 {
            height: 172px;
            width: 338px;
        }
        .auto-style6 {
            width: 338px;
        }
        .auto-style7 {
            width: 453px;
            height: 67px;
        }
        .auto-style8 {
            width: 338px;
            height: 67px;
        }
        .auto-style9 {
            height: 67px;
        }
        .auto-style10 {
            width: 453px;
            height: 164px;
        }
        .auto-style11 {
            height: 164px;
            width: 338px;
        }
        .auto-style12 {
            height: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#66FF33" Text="T-Trends Paint Platform"></asp:Label>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <br />
                <br />
                  <div class="sub_home">
                                    <br />
                                    <br />
                                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Height="62px" Width="128px" Text="Open" />

						<div class="clearfix"> 
                            </div></div>

                <br />
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="litMessage" runat="server" Height="45px" Width="261px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

