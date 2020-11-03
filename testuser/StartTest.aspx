<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartTest.aspx.cs" Inherits="testuser_StartTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
 input[type='text'] 
 {
   border-radius:6px;
   font-size:18px;
   width:250px;
   height:30px;
 }
</style>
</head>
<body>
   <form id="form1" runat="server">
   <div>
    <div>
        <img src="../images/u.jpg" width="100%" height="34%">
    </div>
    <hr style='border:2px solid red' />
    <div style="margin-top:35px">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
     <table style='border:2px solid blue;font-size:20px;background-color:#E0E0E0' cellpadding='10px' align='center'>
      <tr>
       <td>Enter Test Code</td>
       <td>
          <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="txtCode" ErrorMessage="*" ForeColor="Red" 
               ToolTip="Test code must be enterred"></asp:RequiredFieldValidator>
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
               style='border-radius:6px;font-size:19px;border-color:blue;background-color:AEA5A3;color:black; height: 34px;' 
               onclick="btnSubmit_Click"/>
       </td>
     </tr>
    </table>
     <div align='center' style='margin-top:60px'>
     <a href='/online_testing/testuser' style='font-size:20px'>Back To Main Menu</a>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
   </div>
   </div>
   </form>
</body>
</html>
