<%@ Page Title="" Language="C#" MasterPageFile="~/testadmin/Menu.master" AutoEventWireup="true" CodeFile="EditPapers.aspx.cs" Inherits="testadmin_EditPapers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style='margin-top:20px'>
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
          BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="paperid" 
          DataSourceID="SqlDataSource1" PageSize="5">
          <Columns>
              <asp:BoundField DataField="paperid" HeaderText="paperid" InsertVisible="False" 
                  ReadOnly="True" SortExpression="paperid" />
              <asp:BoundField DataField="paper" HeaderText="paper" SortExpression="paper" />
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                  HeaderText="Action" />
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
          ConflictDetection="CompareAllValues" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          DeleteCommand="DELETE FROM [Papers] WHERE [paperid] = @original_paperid AND (([paper] = @original_paper) OR ([paper] IS NULL AND @original_paper IS NULL))" 
          InsertCommand="INSERT INTO [Papers] ([paper]) VALUES (@paper)" 
          OldValuesParameterFormatString="original_{0}" 
          SelectCommand="SELECT * FROM [Papers]" 
          UpdateCommand="UPDATE [Papers] SET [paper] = @paper WHERE [paperid] = @original_paperid AND (([paper] = @original_paper) OR ([paper] IS NULL AND @original_paper IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_paperid" Type="Int32" />
              <asp:Parameter Name="original_paper" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="paper" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="paper" Type="String" />
              <asp:Parameter Name="original_paperid" Type="Int32" />
              <asp:Parameter Name="original_paper" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
</asp:Content>

