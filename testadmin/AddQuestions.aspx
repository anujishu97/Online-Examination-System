<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/Menu.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="testadmin_AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style='margin-top:10px' align='center'>
     <asp:Label ID="lblMessage" runat="server" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
 </div>
 <table style='border:3px solid red;font-size:20px;margin-top:10px' cellpadding='10px' align="center">
  <tr>
   <td>Select paper</td>
   <td>
       <asp:DropDownList ID="ddlPaper" runat="server" DataSourceID="SqlDataSource1" 
           DataTextField="paper" DataValueField="paper" Font-Size="Medium">
       </asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT [paper] FROM [Papers]"></asp:SqlDataSource>
   </td>
  </tr>
  <tr>
   <td>Enter question</td>
   <td><asp:TextBox ID="txtQuestion" runat="server" Height="60px" TextMode="MultiLine" 
           Width="400px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtQuestion" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Must enter question"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td>Enter answer1</td>
   <td><asp:TextBox ID="txtAnswer1" runat="server" Height="40px" TextMode="MultiLine" 
           Width="400px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="txtAnswer1" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Must enter answer1"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td>Enter answer2</td>
   <td><asp:TextBox ID="txtAnswer2" runat="server" Height="40px" TextMode="MultiLine" 
           Width="400px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="txtAnswer2" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Must enter answer2"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td>Enter answer3</td>
   <td><asp:TextBox ID="txtAnswer3" runat="server" Height="40px" TextMode="MultiLine" 
           Width="400px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="txtAnswer3" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Must enter answer3"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td>Enter answer4</td>
   <td><asp:TextBox ID="txtAnswer4" runat="server" Height="40px" TextMode="MultiLine" 
           Width="400px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
           ControlToValidate="txtAnswer4" ErrorMessage="*" ForeColor="Red" 
           ToolTip="Must enter abswer4"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
   <td>Select answer</td>
   <td>
       <asp:DropDownList ID="ddlAnswer" runat="server" Font-Size="Medium" Width="80px">
           <asp:ListItem>0</asp:ListItem>
           <asp:ListItem>1</asp:ListItem>
           <asp:ListItem>2</asp:ListItem>
           <asp:ListItem>3</asp:ListItem>
       </asp:DropDownList>     
   </td>
  </tr>
  <tr>
   <td colspan="2" align="center">
       <asp:Button ID="btnSave" runat="server" Text="Save Question" Font-Size="Medium" onclick="btnSave_Click" />
       <asp:Button ID="Button1" runat="server" style='margin-left:20px' Text="Clear" Font-Size="Medium" onclick="btnClear_Click" />
   </td>
  </tr>
  </table>
</asp:Content>

