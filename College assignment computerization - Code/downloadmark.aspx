<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="downloadmark.aspx.cs" Inherits="downloadmark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 581px">
    <tr>
        <td class="style2">
            <asp:Label ID="Label8" runat="server" Text="Choose Topic"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="assigntopic" 
                DataValueField="assigntopic" Font-Bold="True" Font-Names="Cambria" 
                >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [assigntopic] FROM [fdet] WHERE ([staffuname] = @staffuname)">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT distinct[assigntopic] FROM [fdet] WHERE ([staffuname] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
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
           <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
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
            <asp:Label ID="Label1" runat="server" Text="Year"></asp:Label>
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
                 <asp:Button ID="Button1" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" Width="59px" />
             </td>
             <td>
                 <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
             </td>
         </tr>
</table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="272px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="assigntopic" HeaderText="assigntopic" SortExpression="assigntopic" />
                        <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                        <asp:BoundField DataField="assignmark" HeaderText="assignmark" SortExpression="assignmark" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [assigntopic], [rollno], [assignmark] FROM [fdet] WHERE (([assigntopic] = @assigntopic) AND ([staffuname] = @staffuname))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/erasure.mdb" SelectCommand="SELECT [assigntopic], [rollno], [assignmark] FROM [fdet] WHERE (([assigntopic] = ?) AND ([staffuname] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>--%>
            </td>
        </tr>
    </table>
</asp:Content>

