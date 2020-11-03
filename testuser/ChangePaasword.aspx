<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="ChangePaasword.aspx.cs" Inherits="testuser_ChangePaasword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
 input[type='password'] 
 {
   border-radius:6px;
   font-size:18px;
   width:250px;
   height:30px;
 }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div align="center" style='margin-top:20px'>
     <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large" 
         ForeColor="#FF3300"></asp:Label>
 </div>
 <table style='border:2px solid blue;margin-top:10px;font-size:20px' cellpadding='10px' align='center'>
  <tr>
   <th align='left'>Enter current password</th>
   <td><asp:TextBox ID="txtCurPass" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtCurPass" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Current password can not be left blank"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <th align='left'>Enter new password</th>
   <td><asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="txtNewPass" ErrorMessage="*" ForeColor="Red" 
           ToolTip="New password can not be left blank"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <th align='left'>Enter new password again</th>
   <td><asp:TextBox ID="txtNewPassAgain" runat="server" TextMode="Password"></asp:TextBox>
       <asp:CompareValidator ID="CompareValidator1" runat="server" 
           ControlToCompare="txtNewPass" ControlToValidate="txtNewPassAgain" 
           ErrorMessage="*" ForeColor="Red" 
           ToolTip="Retype type must match with new password"></asp:CompareValidator>
      </td>
  </tr>
  <tr>
   <td colspan="2" align='right'>
     <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
           style='border-radius:6px;font-size:19px;border-color:blue;background-color:AEA5A3;color:black' 
           onclick="btnSubmit_Click"/>
   </td>
  </tr>
 </table>
  <div align='center' style='margin-top:20px'>
   <a href='EditProfile.aspx' style='font-size:20px'>Back To Edit Profile</a>
  </div>
</asp:Content>

