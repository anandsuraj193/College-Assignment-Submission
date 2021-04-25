<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="viewreceiveddet.aspx.cs" Inherits="viewreceiveddet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 150px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 164px; width: 244px">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Student Username"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
      <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldept" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
      <tr>
        <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
      <tr>
        <td class="style2">
            <asp:Label ID="Label6" runat="server" Text="Year"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                Width="604px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="assigtopic" HeaderText="Assignment Topic" 
                        SortExpression="assigtopic" />
                    <asp:BoundField DataField="subname" HeaderText="Subject Name" 
                        SortExpression="subname" />
                    <asp:BoundField DataField="staffname" HeaderText="Staff Name" 
                        SortExpression="staffname" />
                    <asp:BoundField DataField="sdate" HeaderText="Sent Date" 
                        SortExpression="sdate" />
                    <asp:BoundField DataField="stime" HeaderText="Sent Time" 
                        SortExpression="stime" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [assigtopic], [subname], [sdate], [stime], [staffname] FROM [assigndet] WHERE (([dept] = @dept) AND ([course] = @course) AND ([yearr] = @yearr))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbldept" Name="dept" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblcourse" Name="course" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblyear" Name="yearr" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
           <%-- <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [assigtopic], [subname], [sdate], [stime], [staffname] FROM [assigndet] WHERE (([dept] = ?) AND ([course] = ?) AND ([yearr] = ?))">
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
</table>
</asp:Content>

