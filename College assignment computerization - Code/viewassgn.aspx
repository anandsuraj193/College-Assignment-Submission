<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="viewassgn.aspx.cs" Inherits="viewassgn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 210px;
        }
    </style>
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
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource2" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1" Width="738px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="uname" HeaderText="Student Username" 
                        SortExpression="uname" />
                    <asp:BoundField DataField="fname" HeaderText="Sent Filename" 
                        SortExpression="fname" />
                    <asp:BoundField DataField="assigntopic" HeaderText="Assignment Topic" 
                        SortExpression="assigntopic" />
                    <asp:BoundField DataField="sdate" HeaderText="Sent Date" 
                        SortExpression="sdate" />
                    <asp:BoundField DataField="stime" HeaderText="Sent Time" 
                        SortExpression="stime" />
                     <asp:BoundField DataField="assignmark" HeaderText="Assign. Mark" 
                        SortExpression="stime" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
          
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [fname], [assigntopic], [sdate], [stime], [assignmark] FROM [fdet] WHERE (([staffuname] = @staffuname) AND ([assigntopic] = @assigntopic))">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                
                
                SelectCommand="SELECT [uname], [fname], [assigntopic], [sdate], [stime], [assignmark] FROM [fdet] WHERE (([staffuname] = ?) AND ([assigntopic] = ?))">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
          
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
        
        
<table style="width: 319px; height: 207px;">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Student Username"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblstuusername" runat="server" 
                Text="............................"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Student Rollno"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblrollno" runat="server" Text="............................"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Student Name"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="............................"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldepartment" runat="server" 
                Text="............................"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Course"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblcousrse" runat="server" Text="............................"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Year"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblyear" runat="server" Text="............................"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Enter Mark"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmark" runat="server" Width="73px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Text="Add" ValidationGroup="assign" />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter mark" ControlToValidate="txtmark" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Assignment Details"></asp:Label>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink7" runat="server">Click to Download</asp:HyperLink>
        </td>
    </tr>
</table>

        </td>
        <td valign="top">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource3" Visible="False">
                <Columns>
                    <asp:BoundField DataField="uname" HeaderText="Student Username" 
                        SortExpression="uname" />
                    <asp:BoundField DataField="sdate" HeaderText="Submitted Date" 
                        SortExpression="sdate" />
                    <asp:BoundField DataField="status" HeaderText="Status" 
                        SortExpression="status" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [fname], [sdate], [status] FROM [fdet] WHERE (([staffuname] = @staffuname) AND ([assigntopic] = @assigntopic) AND ([status] = @status))">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" PropertyName="SelectedValue" Type="String" />
                    <asp:Parameter DefaultValue="Late Submission" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [uname], [fname], [sdate], [status] FROM [fdet] WHERE (([staffuname] = ?) AND ([assigntopic] = ?) AND ([status] = ?))">
                <SelectParameters>
                    <asp:SessionParameter Name="staffuname" SessionField="staff" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="assigntopic" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:Parameter DefaultValue="Late Submission" Name="status" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

