<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="testuser_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style='margin-top:20px;font-size:20px' align='center' cellpadding='10px'>
  <tr>
   <th align='left'>Password</th>
   <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/testuser/ChangePaasword.aspx">Change</asp:HyperLink></td>
  </tr>
  <tr>
   <th align='left'>Phone number</th>
   <td><asp:HyperLink ID="HyperLink2" runat="server" 
           NavigateUrl="~/testuser/ChangePhone.aspx">Change</asp:HyperLink></td>
  </tr>
  <tr>
   <th align="left">Profile pic</th>
   <td><asp:HyperLink ID="HyperLink3" runat="server" 
           NavigateUrl="~/testuser/ChangeProfilePic.aspx">Change</asp:HyperLink></td>
  </tr>
 </table>
</asp:Content>

