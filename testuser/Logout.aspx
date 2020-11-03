<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="testuser_Logout" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
</head>
<body onload="noBack()">
    <form id="form1" runat="server">
    <div>
    <div>
    <img src='../images/lg.png' width="100%" height="34%"/>
  </div>
  <hr style='border:2px solid green'>
  <div style='margin-top:30pd' align='center'>
     <h2><%=Session["name"]%> you have successfully logged out...</h2>
  </div>
  <div style='margin-top:30px' align='center'>
    <a href='/online_testing/testuser' style='font-size:20px'>Click here for more test<a>
  </div> 
    </div>
    </form>
</body>
</html>
