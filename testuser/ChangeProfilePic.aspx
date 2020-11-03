<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="ChangeProfilePic.aspx.cs" Inherits="testuser_ChangeProfilePic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div align='center' style='margin-top:10px'>
    <h2>Current photo</h2>  	
    <asp:Image ID="Image1" runat="server" Height="150px"/>
</div>
<form method='post'> 
   <div align='center' style='margin-top:20px'>
    <h2>Upload new photo..</h2>
   </div>
   <div align='center' style='margin-top:20px'>
       <asp:FileUpload ID="FileUpload1" runat="server" />
   </div>
   <div align='center' style='margin-top:20px'>
       <asp:Button ID="btnUpload" runat="server" Text="Upload" 
           style='border-radius:6px;font-size:19px;border-color:blue;background-color:AEA5A3;color:black' 
           onclick="btnUpload_Click"/>
   </div>
</form>
  <div align='center' style='margin-top:20px'>
   <a href='EditProfile.aspx' style='font-size:20px'>Back To Edit Profile</a>
  </div>
</asp:Content>

