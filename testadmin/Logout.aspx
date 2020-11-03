    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="testadmin_Logout" %>
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
            <img src='../images/th.png' width="100%" height="35%"/>
        </div>
        <hr style='border:2px solid green'/>
        <div style='margin-top:32px' align='center'>
          <h2>You have successfully logged out...</h2>
        </div>
        <div style='margin-top:34px' align='center'>
            <a href='/online_testing/testadmin/' style='font-size:22px'>Click to Re-login<a>
        </div> 
      </div>
     </form>
    </body>
    </html>
