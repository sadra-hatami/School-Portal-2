<%@ Page Language="C#" Theme ="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editlesson.aspx.cs" Inherits="editlesson" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="LightSteelBlue" Height="50px" Style="z-index: 101;
        left: 4px; position: absolute; top: 11px" Width="544px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 467px; position: absolute;
            top: 13px" Text="مقطع"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="name" DataValueField="name" OnPreRender="DropDownList1_PreRender"
            Style="z-index: 101; left: 369px; position: absolute; top: 15px" Width="93px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT tblbase.name FROM tblschool INNER JOIN tblbase ON tblschool.base = tblbase.id WHERE (tblschool.id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 234px; position: absolute;
            top: 12px" Text="رشته" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Style="z-index: 103;
            left: 133px; position: absolute; top: 13px" Visible="False" Width="89px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="2">ریاضی فیزیک</asp:ListItem>
            <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
            <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 104; left: 260px;
            position: absolute; top: 394px" Text="بازگشت" Width="60px" OnClick="Button1_Click" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="WhiteSmoke" Height="329px" ScrollBars="Both"
        Style="z-index: 103; left: 1px; position: absolute; top: 60px" Visible="False"
        Width="557px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="code,id_school"
            DataSourceID="SqlDataSource2" Style="z-index: 100; left: -2px; position: absolute;
            top: 17px" Width="537px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:CommandField CancelText="انصرلف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True"
                    ShowEditButton="True" UpdateText="به روز رسانی" />
                <asp:BoundField DataField="id_school" HeaderText="کد مدرسه" ReadOnly="True" SortExpression="id_school" />
                <asp:BoundField DataField="code" HeaderText="کد درس" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="نام درس" SortExpression="name" />
                <asp:BoundField DataField="zarib" HeaderText="ضریب" SortExpression="zarib" />
                <asp:BoundField DataField="date1" HeaderText="تاریخ امتحان ترم اول" SortExpression="date1" />
                <asp:BoundField DataField="date2" HeaderText="تاریخ امتحان ترم دوم" SortExpression="date2" />
            </Columns>
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" DeleteCommand="DELETE FROM [Lesson] WHERE [code] = @original_code AND [id_school] = @original_id_school AND [name] = @original_name AND [zarib] = @original_zarib AND [date1] = @original_date1 AND [date2] = @original_date2"
            InsertCommand="INSERT INTO [Lesson] ([code], [name], [zarib], [date1], [date2], [id_school]) VALUES (@code, @name, @zarib, @date1, @date2, @id_school)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [code], [name], [zarib], [date1], [date2], [id_school] FROM [Lesson] WHERE (([id_school] = @id_school) AND ([resh] = @resh) AND ([yer] = @yer))"
            UpdateCommand="UPDATE [Lesson] SET [name] = @name, [zarib] = @zarib, [date1] = @date1, [date2] = @date2 WHERE [code] = @original_code AND [id_school] = @original_id_school AND [name] = @original_name AND [zarib] = @original_zarib AND [date1] = @original_date1 AND [date2] = @original_date2">
            <DeleteParameters>
                <asp:Parameter Name="original_code" Type="Int32" />
                <asp:Parameter Name="original_id_school" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_zarib" Type="Int16" />
                <asp:Parameter Name="original_date1" Type="String" />
                <asp:Parameter Name="original_date2" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="zarib" Type="Int16" />
                <asp:Parameter Name="date1" Type="String" />
                <asp:Parameter Name="date2" Type="String" />
                <asp:Parameter Name="original_code" Type="Int32" />
                <asp:Parameter Name="original_id_school" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_zarib" Type="Int16" />
                <asp:Parameter Name="original_date1" Type="String" />
                <asp:Parameter Name="original_date2" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
                <asp:SessionParameter DefaultValue="0" Name="resh" SessionField="r1" Type="Int16" />
                <asp:SessionParameter DefaultValue="1" Name="yer" SessionField="ba3" Type="Int16" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="code" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="zarib" Type="Int16" />
                <asp:Parameter Name="date1" Type="String" />
                <asp:Parameter Name="date2" Type="String" />
                <asp:Parameter Name="id_school" Type="Int64" />
            </InsertParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

