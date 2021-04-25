<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="assign.aspx.cs" Inherits="assign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 300px; width: 457px">
<tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Staff Username"></asp:Label>
    </td>
    <td>
        <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
    </td>
    <td>
        <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td>
        <asp:Label ID="Label6" runat="server" Text="Time"></asp:Label>
    </td>
    <td>
        <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Assignment Topic"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtassign" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter assign topic" ControlToValidate="txtassign" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Submission date"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdate" runat="server" onfocus="showCalendarControl(this);"></asp:TextBox>
        </td>
    </tr>
       <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label>
        </td>
        <td>
           <asp:DropDownList ID="dropdept" runat="server" Font-Bold="True" 
                Font-Names="Cambria">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>MECH</asp:ListItem>
                <asp:ListItem>CIVIL</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label12" runat="server" Text="Course"></asp:Label>
        </td>
        <td>
           <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                Font-Names="Cambria">
                 <asp:ListItem>Mca</asp:ListItem>
                <asp:ListItem>Msc</asp:ListItem>
                <asp:ListItem>Bsc</asp:ListItem>
               <asp:ListItem>Bca</asp:ListItem>
               <asp:ListItem>Bcom ca</asp:ListItem>
                <asp:ListItem>BE</asp:ListItem>
                <asp:ListItem>BTech</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
   
      <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Year"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="dropyear" runat="server" Font-Bold="True" 
                Font-Names="Cambria">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Subject Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsubjname" runat="server"></asp:TextBox>
        </td>
         <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter subj name" ControlToValidate="txtsubjname" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>

         </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Assign" Font-Bold="True" 
                Font-Names="Cambria" Width="77px" onclick="Button1_Click" ValidationGroup="assign" />
        </td>
          <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                  Font-Names="Cambria" Width="78px" />
        </td>
        <td>
            <asp:Label ID="lblack" Visible="False" runat="server" 
                Text="Assignment Details Sent" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

