<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/editquestions/EditQuestionMenu.master" AutoEventWireup="true" CodeFile="ShowQuestions.aspx.cs" Inherits="testadmin_editquestions_ShowQuestions" %>

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
          SelectCommand="SELECT distinct [paper] FROM [QuestionBank]"></asp:SqlDataSource>
  </td>
  <td>
  <asp:Button ID="btnSubmit" runat="server" Text="Show Questions" 
          onclick="btnSubmit_Click" />
  </td>
 </tr>
</table>
<div align="center" style="margin-top:10px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" Width="95%" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="qid" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="qid" HeaderText="QID" InsertVisible="False" 
                ReadOnly="True" SortExpression="qid" />
            <asp:BoundField DataField="question" HeaderText="Question" 
                SortExpression="question" />
            <asp:BoundField DataField="ans1" HeaderText="Answer1" SortExpression="ans1" />
            <asp:BoundField DataField="ans2" HeaderText="Answer2" SortExpression="ans2" />
            <asp:BoundField DataField="ans3" HeaderText="Answer3" SortExpression="ans3" />
            <asp:BoundField DataField="ans4" HeaderText="Answer4" SortExpression="ans4" />
            <asp:BoundField DataField="cans" HeaderText="Correct" SortExpression="cans" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [qid], [question], [ans1], [ans2], [ans3], [ans4], [cans] FROM [QuestionBank] WHERE ([paper] = @paper)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPaper" Name="paper" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

