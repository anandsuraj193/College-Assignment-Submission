<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="emptystaff.aspx.cs" Inherits="emptystaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="height: 64px; width: 549px">
 <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Size="Medium" 
                ForeColor="#CC0000"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbluser" runat="server" Text="Label" Font-Size="Medium" 
                ForeColor="#CC0000"></asp:Label>
        </td>
          <td class="style1"></td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
            &nbsp;<asp:Label ID="lbldate" runat="server" Text="Label" ForeColor="#000066"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Time"></asp:Label>
            &nbsp;<asp:Label ID="lbltime" runat="server" Text="Label" ForeColor="#000066"></asp:Label>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/staff_login.jpg" />
        </td>
    </tr>
</table>
</asp:Content>

