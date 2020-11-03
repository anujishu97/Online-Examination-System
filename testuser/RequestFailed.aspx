<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestFailed.aspx.cs" Inherits="testuser_SaveRequest" %>

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
       <h2 style='color:red'>Dear <%=Session["name"]%> !!!! test code of this paper has already been generated...<h2>
       <h3>Please finish that test that send new request<h3>    
     </div>
     <div style='margin-top:30px' align='center'>
       <a href='TestRequest.aspx'>Send other request</a>
     </div>
  </div>
  </form>
</body>
</html>
