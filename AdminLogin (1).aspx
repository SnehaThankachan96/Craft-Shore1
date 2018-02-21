<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/CommonMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;
    <table class="contact" >
        <tr>
            <td class="table-responsive">User Name</td>
            <td class="table-responsive">
                <asp:TextBox required ID="TextBox1" runat="server" CssClass="text-lowercase">Admin</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="table-responsive">Password</td>
            <td class="table-responsive">
                <asp:TextBox required ID="TextBox2" runat="server" TextMode="Password">admin</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="table-responsive">&nbsp;</td>
            <td class="table-responsive">
                <asp:Button ID="Button1" runat="server" CssClass="btn-success" Height="40px" OnClick="Button1_Click" Text="Login" Width="120px" />
            </td>
        </tr>
    </table>
</asp:Content>

