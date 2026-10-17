<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editprosudent.aspx.cs" Inherits="editprosudent" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="B Kamran"
        Font-Size="1.3em" ForeColor="DeepSkyBlue" NavigateUrl="~/PageSchool.aspx" Style="z-index: 100;
        left: 12px; position: absolute; top: 13px">بازگشت</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="50px" Style="z-index: 100; left: 119px;
        position: absolute; top: 20px" Width="463px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 408px; position: absolute;
            top: -18px" Text="نام کلاس"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="name" DataValueField="name" Style="z-index: 102; left: 301px;
            position: absolute; top: -17px" Width="98px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name] FROM [tblclass2] WHERE ([id_s] = @id_s)">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="391px" Style="z-index: 102; left: -1px;
        position: absolute; top: 50px" Width="637px" ScrollBars="Horizontal">
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" DeleteCommand="DELETE FROM [tblsudent] WHERE [id] = @original_id AND [name] = @original_name AND [name_f] = @original_name_f AND [num_sh] = @original_num_sh AND [nameclass] = @original_nameclass AND [tel] = @original_tel AND [address] = @original_address"
            InsertCommand="INSERT INTO [tblsudent] ([name], [name_f], [num_sh], [nameclass], [tel], [address]) VALUES (@name, @name_f, @num_sh, @nameclass, @tel, @address)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [name], [name_f], [num_sh], [nameclass], [tel], [address] FROM [tblsudent] WHERE (([id_school] = @id_school) AND ([nameclass] = @nameclass))"
            UpdateCommand="UPDATE [tblsudent] SET [name] = @name, [name_f] = @name_f, [num_sh] = @num_sh, [nameclass] = @nameclass, [tel] = @tel, [address] = @address WHERE [id] = @original_id AND [name] = @original_name AND [name_f] = @original_name_f AND [num_sh] = @original_num_sh AND [nameclass] = @original_nameclass AND [tel] = @original_tel AND [address] = @original_address">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_name_f" Type="String" />
                <asp:Parameter Name="original_num_sh" Type="String" />
                <asp:Parameter Name="original_nameclass" Type="String" />
                <asp:Parameter Name="original_tel" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="name_f" Type="String" />
                <asp:Parameter Name="num_sh" Type="String" />
                <asp:Parameter Name="nameclass" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="original_id" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_name_f" Type="String" />
                <asp:Parameter Name="original_num_sh" Type="String" />
                <asp:Parameter Name="original_nameclass" Type="String" />
                <asp:Parameter Name="original_tel" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="201" Name="nameclass"
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="name_f" Type="String" />
                <asp:Parameter Name="num_sh" Type="String" />
                <asp:Parameter Name="nameclass" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="address" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
            BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2"
            PageSize="8" Style="z-index: 100; left: 0px; position: absolute; top: 0px"
            Width="655px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <Columns>
                <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True"
                    ShowEditButton="True" UpdateText="به روز رسانی" />
                <asp:BoundField DataField="id" HeaderText="شماره دانش آموزی" InsertVisible="False"
                    ReadOnly="True" SortExpression="id">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="نام ونام خانوادگی" SortExpression="name">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="name_f" HeaderText="نام پدر" SortExpression="name_f">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="num_sh" HeaderText="شماره شناسنامه" SortExpression="num_sh">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="1.3cm" />
                </asp:BoundField>
                <asp:BoundField DataField="nameclass" HeaderText="نام کلاس" SortExpression="nameclass">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="tel" HeaderText="شماره تلفن" SortExpression="tel">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="آدرس" SortExpression="address">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="5cm" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>

