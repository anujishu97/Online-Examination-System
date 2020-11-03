<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestRequest.aspx.cs" Inherits="testuser_TestRequest" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
 input[type='text']
 {
   border-radius:7px;
   font-size:19px;
   width:340px;
   height:30px;
 }
</style>
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
    <div>
     <img src="../images/tr.jpg" width="100%" height="33%"/>
     <hr style='border:2px solid red'/>
    </div>
     <div align='center' style='margin-top:20px'>
        <asp:Label ID="Label1" runat="server" Text="Select Paper" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    </div> 
    <div align='center' style='margin-top:20px'>
        <asp:DropDownList ID="ddlPaper" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="paper" DataValueField="paper" Font-Size="Medium">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [paper] FROM [QuestionBank]"></asp:SqlDataSource>
    </div>
    <div align='center' style='margin-top:20px'>
       <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            style='border-radius:4px;font-size:19px;border-color:black;background-color:ABA8A8;color:#030000' 
            onclick="btnSubmit_Click"/>
    </div>
   <div align='center' style='margin-top:60px'>
     <a href='/online_testing/testuser' style='font-size:20px'>Back To Main Menu</a>
   </div>
   </form>
</body>
</html>
