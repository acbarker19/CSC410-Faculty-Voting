﻿<!--
    11-12-19 - Jacob created, set up gv and sds, added textboxes/labels for adding.
    11-12-19 - Amanda edited design.
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="RegisterUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Users</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Edit Users</h2>
            <hr />
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="sdsEditUsers" CellPadding="1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" ControlStyle-BorderStyle="None" HeaderStyle-ForeColor="#990099" >
<ControlStyle BorderStyle="None"></ControlStyle>

<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="CanVote" HeaderText="CanVote" SortExpression="CanVote" HeaderStyle-ForeColor="#990099" >
<HeaderStyle ForeColor="#990099"></HeaderStyle>
                    </asp:BoundField>
                </Columns>
                <PagerSettings Mode="Numeric" />
            </asp:GridView>
            <asp:SqlDataSource ID="sdsEditUsers" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FacultyVotingConnectionString %>" DeleteCommand="DELETE FROM [People] WHERE [Username] = @original_Username AND [Password] = @original_Password AND (([AccountType] = @original_AccountType) OR ([AccountType] IS NULL AND @original_AccountType IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND [CanVote] = @original_CanVote" InsertCommand="INSERT INTO [People] ([Username], [Password], [AccountType], [FirstName], [LastName], [Department], [Title], [CanVote]) VALUES (@Username, @Password, @AccountType, @FirstName, @LastName, @Department, @Title, @CanVote)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [People] ORDER BY [LastName], [FirstName]" UpdateCommand="UPDATE [People] SET [Password] = @Password, [AccountType] = @AccountType, [FirstName] = @FirstName, [LastName] = @LastName, [Department] = @Department, [Title] = @Title, [CanVote] = @CanVote WHERE [Username] = @original_Username AND [Password] = @original_Password AND (([AccountType] = @original_AccountType) OR ([AccountType] IS NULL AND @original_AccountType IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND [CanVote] = @original_CanVote">
                <DeleteParameters>
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_AccountType" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_CanVote" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="AccountType" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="CanVote" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="AccountType" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="CanVote" Type="String" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_AccountType" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_CanVote" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label></td>
                    <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAccountType" runat="server" Text="Has Administrative Permissions: "></asp:Label></td>
                    <td><asp:CheckBox ID="cbAccountType" runat="server" BorderColor="#990099" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblDepartment" runat="server" Text="Department: "></asp:Label></td>
                    <td><asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblTitle" runat="server" Text="Title: "></asp:Label></td>
                    <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCanVote" runat="server" Text="Has Voting Permissions: "></asp:Label></td>
                    <td><asp:CheckBox ID="cbCanVote" runat="server" BorderColor="#990099" /></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btnAddUser" runat="server" Text="Add User" BackColor="#990099" Font-Bold="True" ForeColor="White" BorderStyle="Solid" /></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Label ID="lblStatus" runat="server" ForeColor="#990099"></asp:Label></td>
                </tr>
            </table>
            <br />
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
            <br />
            
            
        </div>
    </form>
</body>
</html>
