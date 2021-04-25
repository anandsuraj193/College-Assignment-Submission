<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="stafflogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body bgcolor="#4ca0dc">
    <form id="form1" runat="server" 
    style="background-color: #FFFFFF; height: 596px;">
    <div>
        <table width="1350px" bgcolor="#4ca0dc" 
            style="border: medium groove #FFFFFF; height: 81px;">
            <tr>
               <td align="center" 
                    
                    style="font-weight: bold; font-family: georgia; font-size: large; color: #FFFFFF;">
                   COLLEGE ASSIGNMENT COMPUTERIZATION</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <center>
     <table >
            <tr>
                <td align="center" valign="middle">
                   
                    <fieldset style="width: 359px; height: 158px;">
                        <legend>
                        Staff Login
                        </legend>
                        <table align="center" style="width: 330px; height: 134px">
                            <tr>
                                <td class="style1">
                                    <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtstaffusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtstaffpassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:Button ID="Button6" runat="server" Text="Login" Width="69px" 
                                        Font-Bold="True" Font-Names="Cambria" onclick="Button6_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" Text="Cancel" Width="69px" 
                                        Font-Bold="True" Font-Names="Cambria" />
                                </td>
                            </tr>
                             <tr>
                                <td class="style1">
                                
                                </td>
                                <td align="center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="~/img/Erasure code locked.jpg" Height="209px" Width="332px" />
                </td>
                <td>
                   <fieldset style="height: 158px; width: 351px">
                        <legend>
                            Student&nbsp; Login
                        </legend>
                       
                        <table align="center" style="height: 135px; width: 332px">

                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Login" Width="69px" 
                                        Font-Bold="True" Font-Names="Cambria" onclick="Button1_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Width="67px" 
                                        Font-Bold="True" Font-Names="Cambria" />
                                </td>
                            </tr>
                           
                        </table>
                    </fieldset>
                    </td>
            </tr>
        </table>
        </center>
    </div>
    </form>
</body>
</html>
