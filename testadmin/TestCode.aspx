<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/Menu.master" AutoEventWireup="true" CodeFile="TestCode.aspx.cs" Inherits="testadmin_TestCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style='margin-top:10px;color:White;font-size:20px' align='center' width="70%" bgcolor='blue'>
  <tr>
   <th runat="server" id="Pending">Pending Test Code Request</th>
  </tr>
 </table>
 <div style='margin-top:10px' align='center'>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
         CellPadding="4" DataSourceID="SqlDataSource1" Width="70%">
         <Columns>
             <asp:BoundField DataField="reqid" HeaderText="Request Id" 
                 SortExpression="userid" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
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
             <asp:BoundField DataField="status" HeaderText="Status" 
                 SortExpression="status" >
             <HeaderStyle HorizontalAlign="Left" />
             </asp:BoundField>
             <asp:HyperLinkField DataNavigateUrlFields="reqid" 
                 DataNavigateUrlFormatString="ApproveRequest.aspx?rid={0}" HeaderText="Approve" 
                 Text="Click" />
         </Columns>
         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#330099" />
         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
         <SortedAscendingCellStyle BackColor="#FEFCEB" />
         <SortedAscendingHeaderStyle BackColor="#AF0101" />
         <SortedDescendingCellStyle BackColor="#F6F0C0" />
         <SortedDescendingHeaderStyle BackColor="#7E0000" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT [reqid], [userid], [paper], [req_date], [status] FROM [TestRequest] WHERE ([status] = @status)">
         <SelectParameters>
             <asp:Parameter DefaultValue="pending" Name="status" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
 </div>
</asp:Content>

