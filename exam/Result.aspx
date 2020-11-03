<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="exam_Result" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
 <div>
     <div>
         <img src='../images/res1.png' width="100%" height="33%"/>
    </div>
   <hr style='border:2px solid green'>
   <table width="100%" style='font-weight:bold;font-size:22px;color:#55AAFF'>
   <tr>
    <td>Total question:<%=Session["tq"]%></td>
    <td align='center' style='color:DARKORANGE'>Hi,<%=Session["name"]%></td>
    <td align='right'><a href='../testuser/Default.aspx' style='margin-right:10px;font-size:20px'>Home</td>
    <td align='right'><a href='../testuser/Logout.aspx' style='margin-right:10px;font-size:20px'>Log out</td>
    </tr>
   </table>
   <hr style='border:2px solid green' /><br>
  </div>
  <div>
      <asp:Table ID="Table1" runat="server" BorderStyle="Solid">
      </asp:Table>
  </div>
  <div>
    <asp:Label ID="lblCorrect" runat="server"></asp:Label>
  </div>
  <div>
    <asp:Label ID="lblIncorrect" runat="server"></asp:Label>
  </div>
  <div>
    <asp:Label ID="lblPercentage" runat="server"></asp:Label>
  </div>
  </div>
  </form>
</body>
</html>
