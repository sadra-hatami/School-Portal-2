<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page Student.aspx.cs" Inherits="page_Student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top"
        CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal"
        HeaderText="مشخصات دانش آموز" Height="109px" HorizontalAlign="Center" Style="z-index: 101;
        left: 647px; position: absolute; top: -7px" Width="151px">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="شماره دانش آموزی" InsertVisible="False"
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="نام ونام خانوادگی" SortExpression="name" />
            <asp:BoundField DataField="name_f" HeaderText="نام پدر" SortExpression="name_f" />
            <asp:BoundField DataField="num_sh" HeaderText="شماره شناسنامه" SortExpression="num_sh" />
            <asp:BoundField DataField="nameclass" HeaderText="نام کلاس" SortExpression="nameclass" />
        </Fields>
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center"
            VerticalAlign="Middle" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
        SelectCommand="SELECT [id], [name], [name_f], [num_sh], [nameclass] FROM [tblsudent] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id_su" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="LightGoldenrodYellow"
        OnClick="LinkButton1_Click" Style="z-index: 102; left: -165px; position: absolute;
        top: 30px">دیدن نمره</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="LightGoldenrodYellow"
        OnClick="LinkButton2_Click" Style="z-index: 103; left: -166px; position: absolute;
        top: 65px">دیدن تاریخ امتحانات</asp:LinkButton>
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="LightGoldenrodYellow" NavigateUrl="~/page Student.aspx"
        Style="z-index: 104; left: -145px; position: absolute; top: -4px">بازگشت</asp:HyperLink>
    <asp:Label ID="Label1" runat="server" ForeColor="LightYellow" Style="z-index: 105;
        left: -166px; position: absolute; top: -1px" Text="<<"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="LightGray" BorderColor="Black" BorderStyle="Solid"
        BorderWidth="1px" Height="403px" ScrollBars="Vertical" Style="z-index: 106; left: 145px;
        position: absolute; top: 33px" Visible="False" Width="365px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2"
            Style="z-index: 100; left: 0px; position: absolute; top: 0px" Width="347px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="date2" HeaderText="تاریخ امتحان ترم دوم" SortExpression="date2" />
                <asp:BoundField DataField="date1" HeaderText="تاریخ امتحان ترم اول" SortExpression="date1" />
                <asp:BoundField DataField="name" HeaderText="نام درس" SortExpression="name" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT distinct( Lesson.name), Lesson.date1, Lesson.date2 FROM Lesson INNER JOIN tblclass2 ON Lesson.id_school = tblclass2.id_s INNER JOIN tblsudent ON Lesson.id_school = tblsudent.id_school WHERE (tblsudent.id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_su" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="LightGray" BorderColor="Black" BorderStyle="Solid"
        BorderWidth="1px" Height="354px" ScrollBars="Vertical" Style="z-index: 107; left: 83px;
        position: absolute; top: 34px;border-bottom-style:none  " Width="472px" Visible="False">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" Width="453px" DataSourceID="SqlDataSource3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="zarib" HeaderText="ضریب" SortExpression="zarib" />
                <asp:BoundField DataField="mark2" HeaderText="نمره ترم دوم" SortExpression="mark2" />
                <asp:BoundField DataField="mark1" HeaderText="نمره ترم اول" SortExpression="mark1" />
                <asp:BoundField DataField="name" HeaderText="نام درس" SortExpression="name" />
            </Columns>
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT Lesson.name, tblmark.mark1, tblmark.mark2, Lesson.zarib FROM Lesson INNER JOIN tblmark ON Lesson.id_school = tblmark.id_school AND Lesson.code = tblmark.Id_lesson &#13;&#10;WHERE  (tblmark.id_su = @id_su)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="5000" Name="id_su" SessionField="id_su" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px"
        Height="50px" Style="z-index: 108; left: 83px; position: absolute; top: 389px;border-top-style :none "
        Width="472px" Visible="False">
        <asp:Label ID="term1" runat="server" Style="z-index: 100; left: 356px; position: absolute;
            top: 13px" Text=":معدل ترم اول"></asp:Label>
        <asp:Label ID="term2" runat="server" Style="z-index: 101; left: 195px; position: absolute;
            top: 13px" Text=":معدل ترم دوم"></asp:Label>
        <asp:Label ID="termsum" runat="server" Style="z-index: 103; left: 52px; position: absolute;
            top: 12px" Text=":معدل کل"></asp:Label>
    </asp:Panel>
    &nbsp;
</asp:Content>

