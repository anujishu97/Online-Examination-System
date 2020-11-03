<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/editquestions/EditQuestionMenu.master" AutoEventWireup="true" CodeFile="EditQuestion.aspx.cs" Inherits="testadmin_editquestions_EditQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style='border:3px solid red;font-size:20px;margin-top:10px' cellpadding='10px' align="center">
 <tr>
  <td>Enter question Id</td>
  <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" 
          ToolTip="Question id must be entered"></asp:RequiredFieldValidator>
     </td>
  <td>
  <asp:Button ID="btnSubmit" runat="server" Text="Show Questions" 
          onclick="btnSubmit_Click"/>
  </td>
 </tr>
 <tr>
  <td colspan="3" align="center">
      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
  </td>
 </tr>
</table>
<div align="center" style="margin-top:10px">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="qid" DataSourceID="SqlDataSource1" 
        Height="50px" Width="50%" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        Font-Size="Medium">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="paper" HeaderText="Paper name" 
                SortExpression="paper" />
            <asp:BoundField DataField="question" HeaderText="Question" 
                SortExpression="question" />
            <asp:BoundField DataField="ans1" HeaderText="Answer1" SortExpression="ans1" />
            <asp:BoundField DataField="ans2" HeaderText="Answer2" SortExpression="ans2" />
            <asp:BoundField DataField="ans3" HeaderText="Answer3" SortExpression="ans3" />
            <asp:BoundField DataField="ans4" HeaderText="Answer4" SortExpression="ans4" />
            <asp:BoundField DataField="cans" HeaderText="Correct" SortExpression="cans" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [QuestionBank] WHERE [qid] = @original_qid AND (([paper] = @original_paper) OR ([paper] IS NULL AND @original_paper IS NULL)) AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([ans1] = @original_ans1) OR ([ans1] IS NULL AND @original_ans1 IS NULL)) AND (([ans2] = @original_ans2) OR ([ans2] IS NULL AND @original_ans2 IS NULL)) AND (([ans3] = @original_ans3) OR ([ans3] IS NULL AND @original_ans3 IS NULL)) AND (([ans4] = @original_ans4) OR ([ans4] IS NULL AND @original_ans4 IS NULL)) AND (([cans] = @original_cans) OR ([cans] IS NULL AND @original_cans IS NULL))" 
        InsertCommand="INSERT INTO [QuestionBank] ([paper], [question], [ans1], [ans2], [ans3], [ans4], [cans]) VALUES (@paper, @question, @ans1, @ans2, @ans3, @ans4, @cans)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [QuestionBank] WHERE ([qid] = @qid)" 
        UpdateCommand="UPDATE [QuestionBank] SET [paper] = @paper, [question] = @question, [ans1] = @ans1, [ans2] = @ans2, [ans3] = @ans3, [ans4] = @ans4, [cans] = @cans WHERE [qid] = @original_qid AND (([paper] = @original_paper) OR ([paper] IS NULL AND @original_paper IS NULL)) AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([ans1] = @original_ans1) OR ([ans1] IS NULL AND @original_ans1 IS NULL)) AND (([ans2] = @original_ans2) OR ([ans2] IS NULL AND @original_ans2 IS NULL)) AND (([ans3] = @original_ans3) OR ([ans3] IS NULL AND @original_ans3 IS NULL)) AND (([ans4] = @original_ans4) OR ([ans4] IS NULL AND @original_ans4 IS NULL)) AND (([cans] = @original_cans) OR ([cans] IS NULL AND @original_cans IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_qid" Type="Int32" />
            <asp:Parameter Name="original_paper" Type="String" />
            <asp:Parameter Name="original_question" Type="String" />
            <asp:Parameter Name="original_ans1" Type="String" />
            <asp:Parameter Name="original_ans2" Type="String" />
            <asp:Parameter Name="original_ans3" Type="String" />
            <asp:Parameter Name="original_ans4" Type="String" />
            <asp:Parameter Name="original_cans" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="paper" Type="String" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ans1" Type="String" />
            <asp:Parameter Name="ans2" Type="String" />
            <asp:Parameter Name="ans3" Type="String" />
            <asp:Parameter Name="ans4" Type="String" />
            <asp:Parameter Name="cans" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="qid" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="paper" Type="String" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ans1" Type="String" />
            <asp:Parameter Name="ans2" Type="String" />
            <asp:Parameter Name="ans3" Type="String" />
            <asp:Parameter Name="ans4" Type="String" />
            <asp:Parameter Name="cans" Type="Int32" />
            <asp:Parameter Name="original_qid" Type="Int32" />
            <asp:Parameter Name="original_paper" Type="String" />
            <asp:Parameter Name="original_question" Type="String" />
            <asp:Parameter Name="original_ans1" Type="String" />
            <asp:Parameter Name="original_ans2" Type="String" />
            <asp:Parameter Name="original_ans3" Type="String" />
            <asp:Parameter Name="original_ans4" Type="String" />
            <asp:Parameter Name="original_cans" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

