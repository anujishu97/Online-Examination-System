<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPass.aspx.cs" Inherits="testuser_RecoverPass" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
        <img src="../images/fp3.jpg" width="100%" height="33%">
     </div>
     <hr style='border:2px solid red' />
     <table align='center' style='border:2px solid blue;margin-top:10px' cellpadding='10px'>
      <tr>
        <th align='left'>User Name:</th>
        <td><%=Session["name"]%></td>
      </tr>
      <tr>
        <th align='left'>Security question:</th>
        <td><%=Session["secqst"]%></td>
      </tr>
      <tr>
        <th align='left'>Enter answer:</th>
        <td>
          <asp:TextBox ID="txtAns" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtAns" ErrorMessage="*" ForeColor="Red" 
                ToolTip="Answer must be enterred"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td colspan='2' align='center'>
            <asp:Label ID="lblMessage" runat="server" Font-Size="Large"></asp:Label>
        </td>
      </tr>    
      <tr>
        <td colspan='2' align='center'>
            <asp:Button ID="btnPassword" runat="server" Text="Show Password" 
                Font-Size="Medium" onclick="btnPassword_Click" />
        </td>
      </tr>
     </table>
    </div>
    </form>
    <div align='center' style='margin-top:20px'>
     <a href='Login.aspx' style='font-size:20px'>Back To Login</a>
    </div>
</body>
</html>
