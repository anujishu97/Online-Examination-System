<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div width="100%" height="30%">
       <img src='../images/user.jpg' width="100%" height="30%"/>
      </div>
      <hr style="height:5px;background-color:red"/>
      <div style="margin-top:30px">
       <table align="center" cellpadding="8" style="font-size:19px;border:2px solid green" bgcolor='#AACCBB'>
        <tr>
         <td colspan="2"><div align="center" style="font-size:20px;color:White;background-color:#0000FF">Login Form</div></td>
        </tr>
        <tr>
         <td>User Id</td>
         <td><asp:TextBox ID="txtUser" Text="abhi123" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="txtUser" ErrorMessage="*" ForeColor="Red" 
                 ToolTip="User id can't be left blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
         <td>Password</td>
         <td><asp:TextBox ID="txtPass" runat="server" Text="12345" Font-Size="Medium" Width="200px" 
                 TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red" 
                 ToolTip="Password can't be left blank"></asp:RequiredFieldValidator>
            </td>
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
      <div align="center" style="margin-top:10px">
       <table width="300px">
        <tr>
         <td><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                 NavigateUrl="~/testuser/Registration.aspx">New User?</asp:HyperLink></td>
         <td align="right"><asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                 NavigateUrl="~/testuser/ForgotPaassword.aspx">Forgot Password?</asp:HyperLink></td>
        </tr>
       </table>
      </div>
    </div>
    </form>
</body>
</html>
