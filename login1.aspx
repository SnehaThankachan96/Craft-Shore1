<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="craftshore1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width: 100%; height: 317px;">
        <tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td style="width: 205px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>&nbsp;&nbsp;&nbsp;&nbsp;
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 205px"></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="LOGIN" ForeColor="White" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 205px">
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 205px">&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="White" style="margin-top: 22px" Width="190px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 205px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 205px">
                <asp:Label ID="Label4" runat="server" Text="Username" ForeColor="White" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" OnTextChanged="txtuname_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 205px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 205px">
                <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="White" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 205px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 205px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" Font-Size="Small" Width="75px" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Size="Small" Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 205px">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CraftshoreConnectionString2 %>" SelectCommand="SELECT * FROM [login1]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>
