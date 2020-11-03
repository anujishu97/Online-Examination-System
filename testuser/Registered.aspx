<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registered.aspx.cs" Inherits="testuser_Registered" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div>
        <img src="../images/reg5.png" width="100%" height="40%">
      </div>
      <hr style='border:2px solid red'>
      <div align='center' style='margin-top:50px'>
        <h2>Congratulations!!!!<%=Session["name"]%></h2>
        <h3 style='color:green'>You have registered successfully!!!!</h3>
        <h3 style='color:blue'>Your userid is:<%=Session["userid"]%></h3>
      </div>
      <div align='center' style='margin-top:30px'>
        <a href='UploadPhoto.aspx'>UPLOAD PROFILE PIC......</a> 
      </div>      
    </div>
    </form>
</body>
</html>
