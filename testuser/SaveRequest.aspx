<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SaveRequest.aspx.cs" Inherits="testuser_SaveRequest" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
        <img src="../images/tr.jpg" width="100%" height="35%"/>
     </div>
     <hr style='border:2px solid red'/>    
     <div style='margin-top:50px' align='center'>
       <h2>Dear <%=Session["name"]%> !!!! Your request has been sent...<h2>
       <h3>Please check your test code status<h3>
     </div>
     <div style='margin-top:30px' align='center'>
       <a href='Default.aspx'>Back to home</a>
     </div>
  </div>
  </form>
</body>
</html>
