<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div width="100%" height="30%">
        <img src="../images/al.jpg" width="100%" height="33%">
      </div>
      <hr style="height:5px;background-color:red"/>
      <div style="margin-top:30px">
       <table align="center" cellpadding="8" style="font-size:19px;border:2px solid green" bgcolor='#AACCBB'>
        <tr>
         <td colspan="2"><div align="center" style="font-size:20px;color:White;background-color:#0000FF">
             AdminLogin Form</div></td>
        </tr>
        <tr>
         <td>Admin Login Id</td>
         <td><asp:TextBox ID="txtUser" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="txtUser" ErrorMessage="*" ForeColor="Red" 
                 ToolTip="User id can't be left blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
         <td>Admin Password</td>
         <td><asp:TextBox ID="txtPass" runat="server" Font-Size="Medium" Width="200px" 
                 TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
         <td colspan="2" align="center">
             <asp:Label ID="lblError" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
         </td>
        </tr>
        <tr>
          <td colspan="2" align="right">
              <asp:Button ID="btnLogin" runat="server" Text="Login" 
                  onclick="btnLogin_Click" />
          </td>
        </tr>
       </table>
      </div>
    </form>
</body>
</html>
