<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="emphome.aspx.cs" Inherits="emphome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 206px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    `<table style="width: 629px; height: 133px">
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
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>    
        </td>
        <td>
            <asp:Label ID="lbldept" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label>    
        </td>
        <td>
            <asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Year"></asp:Label>    
        </td>
        <td>
            <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<br />
<table style="height: 149px; width: 744px">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/stu.png" />
        </td>
        <td>
            <asp:Panel ID="Panel1" runat="server" Visible="false" Height="234px" 
                Width="433px">
                <table style="height: 210px; width: 428px">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Best Assignment:" 
                                ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Choose Assignment"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="assigntopic" 
                                DataValueField="assigntopic" Font-Bold="True" 
                                Font-Names="Cambria" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [assigntopic] FROM [bestassign] WHERE (([dept] = @dept) AND ([course] = @course) AND ([yearr] = @yearr))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lbldept" Name="dept" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblcourse" Name="course" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblyear" Name="yearr" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Text="View" BackColor="#99FFCC" 
                                BorderColor="Aqua" BorderStyle="Ridge" Font-Bold="True" Font-Names="Cambria" 
                                onclick="Button1_Click" />
                            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/App_Data/erasure.mdb" 
                                SelectCommand="SELECT distinct[assigntopic] FROM [bestassign] WHERE (([dept] = ?) AND ([course] = ?) AND ([yearr] = ?))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lbldept" Name="dept" PropertyName="Text" 
                                        Type="String" />
                                    <asp:ControlParameter ControlID="lblcourse" Name="course" PropertyName="Text" 
                                        Type="String" />
                                    <asp:ControlParameter ControlID="lblyear" Name="yearr" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:AccessDataSource>--%>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Student Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblstudentname" runat="server" Text="............."></asp:Label>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Assignment Topic"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblassignmenttopic" runat="server" Text="............."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/arrows1.gif" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server">Download & View</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>

</asp:Content>

