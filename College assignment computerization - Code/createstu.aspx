<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="createstu.aspx.cs" Inherits="createstu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 475px; height: 245px">
                               <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Rollnum"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtrollnum" runat="server" AutoPostBack="True" 
                                        ontextchanged="txtrollnum_TextChanged"></asp:TextBox>
                                    <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="Roll no Exists" 
                                        Visible="False"></asp:Label>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter rollnum" ControlToValidate="txtrollnum" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter name" ControlToValidate="txtname" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
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
                                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtage" runat="server" Width="48px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter age" ControlToValidate="txtage" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                                        GroupName="gender" Text="Male" />
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" 
                                        Text="Female" />
                                </td>
                            </tr>
                        </table>
                        <table style="width: 284px; height: 44px;">
                            <tr>
                                <td align="center">
                                    <asp:Button ID="Button3" runat="server" Text="Generate Student  Username" 
                                        Font-Bold="True" Font-Names="Cambria" 
                                        BackColor="#333399" ForeColor="White" onclick="Button3_Click" />
                                </td>
                            </tr>
                        </table>
                        <table style="width: 350px; height: 133px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txteusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtepassword" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:Button ID="Button4" runat="server" Text="Save" Font-Bold="True" 
                                        Font-Names="Cambria" onclick="Button4_Click" Width="57px" ValidationGroup="assign" />
                                </td>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Cancel" Font-Bold="True" 
                                        Font-Names="Cambria" />
                                </td>
                            </tr>
                        </table>
</asp:Content>

