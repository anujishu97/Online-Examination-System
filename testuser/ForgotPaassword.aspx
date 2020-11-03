<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPaassword.aspx.cs" Inherits="testuser_ForgotPaassword" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <style>
 input[type='text'] 
 {
   border-radius:6px;
   font-size:18px;
   width:170px;
   height:30px;
 }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
      <img src="../images/fp3.jpg" width="100%" height="33%" />
     </div>
     <hr style='border:2px solid red' />
    </div>
    <table style='margin-top:20px;border:2px solid blue;font-size:20px;background-color:#E0E0E0' cellpadding='10px' align='center'>
     <tr>
        <td>Enter User Id</td>
        <td>
          <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUserId" ErrorMessage="*" ForeColor="Red" 
                ToolTip="User id must be entered"></asp:RequiredFieldValidator>
        </td>
     </tr>
     <tr>
     <td colspan='2' align='center'>
       <asp:Label ID="lblMessage" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
     </td>
     </tr>
     <tr>
      <td colspan='2' align='center'>
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
              style='border-radius:6px;font-size:19px;border-color:blue;background-color:AEA5A3;color:black' 
              onclick="btnSubmit_Click"></asp:Button>
      </td>
     </tr>
    </table>
  </form>
</body>
</html>
