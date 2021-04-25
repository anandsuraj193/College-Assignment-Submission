<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="choosebest.aspx.cs" Inherits="choosebest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 217px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 95px; width: 205px">
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
    </table>
    <table>
  <tr>
    <td>
        <asp:Button ID="Button1" runat="server" Text="View Received Assignment" 
            onclick="Button1_Click" Font-Bold="True" Font-Names="Cambria" />
    </td>
  </tr>
</table>


    <asp:Panel ID="Panel1" runat="server" Visible="false" Height="259px" 
    Width="627px">
   
<table style="width: 566px">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Choose Assignment Topic"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="assigtopic" 
                DataValueField="assigtopic" Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [assigtopic] FROM [assigndet] WHERE (([dept] = @dept) AND ([course] = @course) AND ([yearr] = @yearr))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropdept" Name="dept" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="dropyear" Name="yearr" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [assigtopic] FROM [assigndet] WHERE (([dept] = ?) AND ([course] = ?) AND ([yearr] = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropdept" Name="dept" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="course" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="dropyear" Name="yearr" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="563px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="uname" HeaderText="Student Username" 
                        SortExpression="uname" />
                    <asp:BoundField DataField="fname" HeaderText="File Name" 
                        SortExpression="fname" />
                    <asp:BoundField DataField="assigntopic" HeaderText="Assignment Topic" 
                        SortExpression="assigntopic" />
                    <asp:CommandField SelectText="Send as best assignment" 
                        ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [fname], [assigntopic] FROM [fdet] WHERE ([assigntopic] = @assigntopic)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="assigntopic" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [uname], [fname], [assigntopic] FROM [fdet] WHERE ([assigntopic] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="assigntopic" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>

 </asp:Panel>
</asp:Content>

