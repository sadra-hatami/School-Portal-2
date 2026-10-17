<%@ Page Language="C#" Theme ="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="entermark.aspx.cs" Inherits="entermark" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Beige" BorderColor="#404000" BorderStyle="Solid"
        BorderWidth="2px" Height="73px" Style="z-index: 100; left: 36px; border-bottom-color :transparent; border-bottom-style :none;position: absolute;
        top: 0px" Width="525px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 452px; position: absolute;
            top: 25px" Text="نام کلاس"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="name" DataValueField="name" Style="z-index: 101; left: 361px;
            position: absolute; top: 24px" Width="83px" OnPreRender="DropDownList1_PreRender" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT DISTINCT name FROM tblteach WHERE (id_t = @id_t)">
            <SelectParameters>
                <asp:SessionParameter Name="id_t" SessionField="id_t" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 275px; position: absolute;
            top: 23px" Text="نام درس"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
            DataTextField="name" DataValueField="name" Style="z-index: 103; left: 180px;
            position: absolute; top: 24px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" OnPreRender="DropDownList2_PreRender" Enabled="False">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT Lesson.name FROM tblteach INNER JOIN Lesson ON tblteach.id_l = Lesson.code WHERE (tblteach.id_t = @id_t) AND (tblteach.id_s = @id_s)">
            <SelectParameters>
                <asp:SessionParameter Name="id_t" SessionField="id_t" />
                <asp:SessionParameter Name="id_s" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 115px; position: absolute;
            top: 23px" Text="ترم"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 105; left: 66px;
            position: absolute; top: 25px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="41px" Enabled="False">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" SkinID="btn1"  runat="server" Style="z-index: 106; left: 298px; position: absolute;
            top: 406px" Text="ثبت" Width="62px" Height="31px" OnClick="Button1_Click" />
        &nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="328px" Style="z-index: 101; left: 146px;
        position: absolute; top: 73px" Width="376px" ScrollBars="Vertical" Visible="False" BackColor="LemonChiffon">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Horizontal"
            Style="z-index: 100; left: 2px; position: absolute; top: 0px" AutoGenerateColumns="False" HorizontalAlign="Center" Width="356px" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-VerticalAlign="Middle" EmptyDataText="دانش آموزی برای نمایش وجود ندارد">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField><ItemTemplate >
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" MaximumValue="20" MinimumValue="0" Type="Double" ControlToValidate ="TextBox1"></asp:RangeValidator></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="نمره پایانی"><ItemTemplate >
                    <asp:TextBox ID="TextBox1" runat="server" Width="1cm" Text ="0" ></asp:TextBox></ItemTemplate></asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="نام ونام خانوادگی" SortExpression="name" />
                <asp:BoundField DataField="id" HeaderText="شماره دانش آموزی" SortExpression="id" />
            </Columns>
        </asp:GridView>
        &nbsp;
    </asp:Panel>
    <asp:Label ID="lblerr" runat="server" ForeColor="Red" Style="z-index: 102; left: 3px;
        position: absolute; top: 410px" Text="نمره این درس در ترم مورد نظر موجود است"
        Visible="False" Width="240px"></asp:Label>
    <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 103; left: 254px;
        position: absolute; top: 408px" Text="بازگشت" Width="56px" OnClick="Button2_Click" />
    <asp:Panel ID="Panel3" runat="server" BackColor="MistyRose" BorderColor="Purple"
        BorderStyle="Solid" BorderWidth="2px" Height="107px" HorizontalAlign="Center"
        Style="z-index: 105; left: 135px; position: absolute; top: 121px" Width="375px" Visible="False">
        <br />
        .عملیات با موفقیت
        <asp:Button ID="Button3" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 100; left: 174px;
            position: absolute; top: 70px" Text="تایید" Width="40px" OnClick="Button3_Click" />
        انجام شد</asp:Panel>
</asp:Content>

