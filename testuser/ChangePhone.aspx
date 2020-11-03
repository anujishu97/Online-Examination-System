<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="ChangePhone.aspx.cs" Inherits="testuser_ChangePhone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
input[type='text'] 
 {
   border-radius:6px;
   font-size:18px;
   width:200px;
   height:30px;
 }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div align="center" style='margin-top:20px'>
     <asp:Label ID="lblMessage" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
 </div>
 <table style='border:2px solid blue;margin-top:10px;font-size:20px' cellpadding='10px' align='center'>
  <tr>
   <th>Current phone number</th>
   <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
  </tr>
  <tr>
   <th align="left">Enter new phone no</th>
   <td><asp:TextBox ID="txtNewPhone" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtNewPhone" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Please enter a phone number"></asp:RequiredFieldValidator>
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

