<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/Menu.master" AutoEventWireup="true" CodeFile="AddPaper.aspx.cs" Inherits="testadmin_AddPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="TB.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style='margin-top:20px;font-size:20px'>
  <tr>
   <td>Add paper</td>
   <td><asp:TextBox ID="txtPaper" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="*" ControlToValidate="txtPaper" ForeColor="Red" 
           ToolTip="Paper field can not be left blank"></asp:RequiredFieldValidator>
   </td>
   <td><asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" /></td>
  </tr>
 </table>
 <div align="center" style='margin-top:20px'>
     <asp:Label ID="lblMessage" runat="server" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
 </div>
 <div align="center" style='margin-top:20px'>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
         CellPadding="4" DataSourceID="SqlDataSource1" Width="316px">
         <Columns>
             <asp:BoundField DataField="paperid" HeaderText="paperid" InsertVisible="False" 
                 ReadOnly="True" SortExpression="paperid" />
             <asp:BoundField DataField="paper" HeaderText="paper" SortExpression="paper" />
         </Columns>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
         <RowStyle BackColor="White" ForeColor="#003399" />
         <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <SortedAscendingCellStyle BackColor="#EDF6F6" />
         <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
         <SortedDescendingCellStyle BackColor="#D6DFDF" />
         <SortedDescendingHeaderStyle BackColor="#002876" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [Papers]"></asp:SqlDataSource>
 </div>
</asp:Content>
