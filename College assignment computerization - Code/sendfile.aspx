<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="sendfile.aspx.cs" Inherits="sendfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 206px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 33px; width: 629px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Size="Medium"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbluser" runat="server" Text="Label" Font-Size="Medium" 
                ForeColor="#000066"></asp:Label>
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
<table style="height: 206px; width: 542px">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Staff Username"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="dropstaffuname" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="uname" DataValueField="uname" 
                Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname] FROM [staffdet]"></asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [uname] FROM [staffdet]"></asp:AccessDataSource>--%>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Assignment Topic"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="droptopic" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="assigtopic" 
                DataValueField="assigtopic" Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [assigtopic] FROM [assigndet] WHERE ([staffname] = @staffname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropstaffuname" Name="staffname" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [assigtopic] FROM [assigndet] WHERE ([staffname] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropstaffuname" Name="staffname" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Upload Assignment File"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUploader" runat="server" Font-Bold="True" 
                Font-Names="Cambria" />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="upload assign file" ControlToValidate="FileUploader" ForeColor="Red" ValidationGroup="assign" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" 
                Font-Names="Cambria" onclick="Button1_Click" Width="58px" 
                style="height: 26px" ValidationGroup="assign" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                Font-Names="Cambria" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>
<br />
<p style="font-size: medium; color: #0000FF">UPLOADED ASSIGNMENT DETAILS:</p>

<p>
STORAGE SERVER
    :</p>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                onrowdeleting="GridView1_RowDeleting1" Width="896px" DataKeyNames="fname">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="File Name" SortExpression="fname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Assignment Topic" SortExpression="assigntopic">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("assigntopic") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("assigntopic") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date" SortExpression="sdate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("sdate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("sdate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time" SortExpression="stime">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("stime") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("stime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Assign. Mark" SortExpression="assignmark">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("assignmark") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("assignmark") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname], [assigntopic], [sdate], [stime], [assignmark] FROM [fdet] WHERE ([uname] = @uname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="uname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/erasure.mdb" 
                SelectCommand="SELECT [fname], [assigntopic], [sdate], [stime],[assignmark] FROM [fdet] WHERE ([uname] = ?)" OnSelecting="AccessDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="uname" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

