<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="testuser_Registration" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
 input[type='text'],input[type='password'] 
 {
   border-radius:7px;
   font-size:19px;
   width:340px;
   height:30px;
 }
</style>
<script type="text/javascript">
    function validation() {
        if (document.getElementById("imgCaptcha").alt != document.getElementById("txtCaptcha").value) {
            alert("Enterted captcha is incorrect");
            return false;
        }
    }
</script>
</head>
<body>
  <div>
    <img src="../images/rh.jpg" width="100%" height="33%">
   </div>
   <hr style='border:2px solid red'>
    <form id="form1" runat="server">
    <div>
    <table style='border:3.2px solid blue;font-size:22px;background-color:#E0E0E0' cellpadding='10px' align='center'>
  <tr>
   <td colspan='2' align='center'>
    <b><u><h3>Registration Form</h3></u></b>
   </td>
  </tr>
  <tr>
   <td><b>First Name</b></td>
   <td><asp:TextBox ID="txtFname" runat="server" required></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtFname" ErrorMessage="*" ForeColor="Red" 
           ToolTip="First name can not be left blank"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td><b>Last Name</b></td>
   <td><asp:TextBox ID="txtLname" runat="server" required></asp:TextBox></td>
  </tr>
  <tr>
   <td><b>User Id<b></td>
   <td><asp:TextBox ID="txtUserId" runat="server" required></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="txtUserId" ErrorMessage="*" ForeColor="Red" 
           ToolTip="User id can not be left blank"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td><b>Password</b></td>
   <td><asp:TextBox ID="txtPass" runat="server" required TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Password can not be left blank"></asp:RequiredFieldValidator>
      </td>
  </tr>
 <tr>
   <td><b>Retype Password</b></td>
   <td><asp:TextBox ID="txtRepass" runat="server" required TextMode="Password"></asp:TextBox>
       <asp:CompareValidator ID="CompareValidator1" runat="server" 
           ControlToCompare="txtPass" ControlToValidate="txtRepass" ErrorMessage="*" 
           ForeColor="Red" ToolTip="Retype password does not match"></asp:CompareValidator>
     </td>
  </tr>
 <tr>
   <td><b>Gender</b></td>
   <td>
       <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
           RepeatDirection="Horizontal" Font-Size="Medium">
           <asp:ListItem Selected="True">Male</asp:ListItem>
           <asp:ListItem>Female</asp:ListItem>
       </asp:RadioButtonList>
   </td>
 </tr>
 <tr>
   <td><b>Date of Birth</b></td>
   <td>
     <table width="100%">
      <tr>
       <td><asp:DropDownList ID="ddlDate" runat="server" Font-Size="Medium">
       </asp:DropDownList></td>
        <td><asp:DropDownList ID="ddlMonth" runat="server" Font-Size="Medium">
       </asp:DropDownList></td>
        <td><asp:DropDownList ID="ddlYear" runat="server" Font-Size="Medium">
       </asp:DropDownList></td>
      </tr>   
    </table>
   </td>
 </tr>
 <tr>
   <td><b>MobileNo.</b></td>
   <td><asp:TextBox ID="txtMobile" runat="server" required></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Mobile can not be left blank"></asp:RequiredFieldValidator>
      </td>
 </tr>
 <tr>
   <td><b>Security Question</b></td>
   <td>
    <asp:DropDownList ID="ddlQst" runat="server" Font-Size="Medium">
        <asp:ListItem>What is your favourite colour</asp:ListItem>
        <asp:ListItem>What is your first school name</asp:ListItem>
        <asp:ListItem>What is your mother name</asp:ListItem>
    </asp:DropDownList>
   </td> 
 </tr>
 <tr>
   <td><b>Enter Answer</b></td>
   <td><asp:TextBox ID="txtAnswer" runat="server" required></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
           ControlToValidate="txtAnswer" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Answer can not be left blank"></asp:RequiredFieldValidator>
      </td>
 </tr>
 <tr>
   <td colspan='2' align='center'>
     <b>Captcha Code</b><br>
       <asp:Image ID="imgCaptcha" runat="server" style='font-size:40px;background-color:blue;color:white'/>
   </td>
 </tr>
 <tr>
   <td><b>Enter Captcha</b></td>
   <td><asp:TextBox ID="txtCaptcha" runat="server" required></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
           ControlToValidate="txtCaptcha" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Captcha must be entered"></asp:RequiredFieldValidator>
      </td>
 </tr>
 <tr>
  <td colspan='2' align='center'>
   <asp:Button ID="btnRegister" runat="server" Text="Register me" 
          style='border-radius:4px;font-size:19px;border-color:black;background-color:white;color:black' 
          onclick="btnRegister_Click" />
  </td>
 </tr>
 </table>
    </div>
    </form>
</body>
</html>
