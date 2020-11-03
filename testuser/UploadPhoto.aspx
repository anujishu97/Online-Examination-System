<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadPhoto.aspx.cs" Inherits="testuser_UploadPhoto" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
        <img src="../images/reg5.png" width="100%" height="40%">
    </div>
    <hr style='border:2px solid red'>
    <div align="center">
        <asp:Image ID="Image1" runat="server" height="150px" ImageUrl="~/testuser/dummy.png" />
    </div>
    <div align='center' style='margin-top:20px'>
        <h2>Upload your photo..</h2>
    </div>
    <div align='center' style='margin-top:20px'>
        <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Medium" /><br /><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please select photo first" ControlToValidate="FileUpload1" 
            ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
    </div>
    <div align='center' style='margin-top:20px'>
        <asp:Button ID="Button1" runat="server" Text="Upload" Font-Size="Medium" 
            onclick="Button1_Click"/>
    </div>
    <div align='center' style='margin-top:20px'>
        <a href='Default.aspx' style='margin-right:50px;font-size:20px'>Continue!!!!</a>
        <a href='Default.aspx' style="font-size:20px">SKIP</a>
    </div>
</form>
</body>
</html>
