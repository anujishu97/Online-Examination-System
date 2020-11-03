<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Failed.aspx.cs" Inherits="testuser_Failed" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
        <img src="../images/sorry.jpg" width="100%" height="40%"/>
     </div>
     <hr style='border:2px solid green'/>
     <div align='center' style='margin-top:50px'>
       <h2 style='color:red'>Sorry!!!!<%=Session["name"]%></h2>
       <h3>Userid <%=Session["userid"]%> has already taken by someone else</h3>
       <h3>Please choose another userid</h3>
     </div>
     <div align="center" style="margin-top:30px">
      <a href="Registration.aspx" style='font-size:18px'>Try again</a>
     </div>
    </div>
    </form>
</body>
</html>
