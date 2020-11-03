<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="TestCodes.aspx.cs" Inherits="testuser_TestCodes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style='margin-top:10px;color:White;font-size:20px' align='center' width="60%" bgcolor='blue'>
  <tr>
   <th runat="server" id="Pending">Test Codes Report</th>
  </tr>
 </table>
 <div style='margin-top:10px' align='center'>
     <asp:GridView ID="GridView1" runat="server" Width="60%" 
         AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="userid" HeaderText="User Id" 
                 SortExpression="userid" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
             <asp:BoundField DataField="paper" HeaderText="Paper Name" 
                 SortExpression="paper" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
             <asp:BoundField DataField="req_date" HeaderText="Request Date" 
                 SortExpression="req_date" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
             <asp:BoundField DataField="test_code" HeaderText="Test Code" 
                 SortExpression="test_code" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
         </Columns>
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <RowStyle ForeColor="#000066" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#007DBB" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#00547E" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT [userid], [paper], [req_date], [test_code] FROM [TestRequest] WHERE (([userid] = @userid) AND ([status] = @status))">
         <SelectParameters>
             <asp:SessionParameter Name="userid" SessionField="userid" Type="String" />
             <asp:Parameter DefaultValue="approved" Name="status" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
 </div>
</asp:Content>

