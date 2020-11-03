<%@ Page Title="" Language="C#" MasterPageFile="~/testuser/MainMenu.master" AutoEventWireup="true" CodeFile="TestReport.aspx.cs" Inherits="testuser_TestReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table style='border:3px solid red;font-size:20px;margin-top:10px' cellpadding='10px' align="center">
 <tr>
  <td>Select paper</td>
  <td>
      <asp:DropDownList ID="ddlPaper" runat="server" 
          DataSourceID="SqlDataSource1" DataTextField="paper" DataValueField="paper" 
          Font-Size="Large">
      </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT distinct [paper] FROM [ResultInfo] WHERE ([user_id] = @user_id)">
          <SelectParameters>
              <asp:SessionParameter Name="user_id" SessionField="userid" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
  </td>
  <td>
  <asp:Button ID="btnSubmit" runat="server" Text="Show Questions" 
          onclick="btnSubmit_Click" />
  </td>
 </tr>
</table>
<div align="center" style="margin-top:10px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="User Id" 
                SortExpression="user_id" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="paper" HeaderText="Paper" SortExpression="paper">
             <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="total_question" HeaderText="Total questions" 
                SortExpression="Total Question">
             <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="correct" HeaderText="Correct" 
                SortExpression="correct" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="incorrect" HeaderText="Incorrect" 
                SortExpression="incorrect" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="percentage" HeaderText="Percentage" 
                SortExpression="percentage" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [user_id], [paper], [total_question], [correct], [incorrect], [percentage], [date], [time] FROM [ResultInfo] WHERE (([user_id] = @user_id) AND ([paper] = @paper)) ORDER BY [date] DESC, [time]">
        <SelectParameters>
            <asp:SessionParameter Name="user_id" SessionField="userid" Type="String" />
            <asp:ControlParameter ControlID="ddlPaper" Name="paper" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

