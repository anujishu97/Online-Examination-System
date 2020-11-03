<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="exam_Questions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="TB.css" rel="stylesheet" type="text/css"/>
    <script type = "text/javascript">
        window.onload = function () {
            document.onkeydown = function (e) {
                alert("You can't refresh this page");
                return (e.which || e.keyCode) != 116;
            };
        }
        //window.onbeforeunload = function() { return "You work will be lost."; };
</script>
</head>
<body>
  <form id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
   <div>
    <table width="100%" height="32%">
    <tr>
     <td style="width:60%">
       <img src='../images/image10.jpg' width="100%" height="100%" style="float:left"/>
     </td>
     <td style="width:40%">
      <div id="quecontainer" style="overflow:scroll;width:100%;height:100%;border:2px solid black;background-color:yellow">
      <asp:Table ID="Table1" runat="server">
      </asp:Table>
      `</div>
      </td>
    </tr>  
   </table>
   </div>
   <br/>
   <hr style='border:2px solid green' />
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   <table width="100%" style='font-weight:bold;font-size:23px;color:#0000FF;background-color:rgb(241, 243, 217)'>
   <tr>
    <td><asp:Label ID="lblTotal" runat="server"></asp:Label></td>
    <td align='center' style='color:orange'>Hi, <%= Session["name"]%></td>
    <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1000">
    </asp:Timer>
    <td align='right'>Remaining time-->
      <asp:Label ID="lblTimer" runat="server" Text="Label"></asp:Label>
    </td>
   </tr>
  </table>
  <hr style='border:2px solid green' />
  <div style='margin-top:10px'>
    <asp:Label ID="lblQuestion" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
  </div>
  <div style='margin-top:10px'>
    <asp:RadioButtonList ID="rbAnswers" runat="server" Font-Size="Large" 
          AutoPostBack="True" onselectedindexchanged="rbAnswers_SelectedIndexChanged">
    </asp:RadioButtonList>
  </div>
  <br>
  <hr style='border:2px solid green' />
  <table style="margin-top:0px"width="80%">
  <tr>
   <td><asp:Button ID="btnFirst" runat="server" Text="First" onclick="btnFirst_Click"/></td>
   <td><asp:Button ID="btnPrevious" runat="server" Text="Previous" 
           onclick="btnPrevious_Click"/></td>
   <td><asp:Button ID="btnNext" runat="server" Text="Next" onclick="btnNext_Click"/></td>
   <td><asp:Button ID="btgnLast" runat="server" Text="Last" onclick="btgnLast_Click"/></td>
   <td><td><asp:Button ID="btnEnd" runat="server" Text="End Test" 
           style="background-color:black" onclick="btnEnd_Click"/></td></td>
  </tr>
</table>
<hr style='border:2px solid green'>
<div align='center' style='font-size:2em;background-color:grey;color:green;border:2px solid black' >
   <h3><%= Session["paper"]%> Online Exam</h3>
</div>
</ContentTemplate>
</asp:UpdatePanel>
 </form>
</body>
</html>
