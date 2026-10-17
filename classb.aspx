<%@ Page Language="C#" Theme ="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="classb.aspx.cs" Inherits="classb" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="PapayaWhip" BorderColor="#804040"
        BorderStyle="Solid" BorderWidth="2px" Height="72px" Style="z-index: 101; left: -5px;
        position: absolute; top: 8px;border-bottom-color :transparent" Width="638px">
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="B Nazanin" Style="z-index: 100;
            left: 545px; position: absolute; top: 26px" Text="نام کلاس"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 340px; position: absolute;
            top: 25px" Text="مقطع"></asp:Label>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT name FROM tblclass2 WHERE (id_s = @id_s)">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="name" DataValueField="name" OnPreRender="DropDownList3_PreRender"
            OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Style="z-index: 102;
            left: 450px; position: absolute; top: 28px" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 243px; position: absolute;
            top: 26px" Width="83px" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 23px; position: absolute;
            top: 28px" Width="99px" Visible="False" Enabled="False"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT DISTINCT dbo.tblresh.resh &#13;&#10;FROM         dbo.tblresh INNER JOIN&#13;&#10;                      dbo.tblcapacity ON dbo.tblresh.id = dbo.tblcapacity.resh&#13;&#10;where  tblcapacity.id=@id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Style="z-index: 105; left: 134px; position: absolute;
            top: 27px" Text="رشته" Visible="False"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="346px" ScrollBars="Vertical" Style="z-index: 103;
        left: 0px; position: absolute; top: 98px" Width="636px">
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" Width="619px" AutoGenerateColumns="False" EmptyDataText="دانش آموزی برای کلاس بندی شدن وجود ندارد" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-BackColor="ActiveCaption" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-VerticalAlign="Middle">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="نام و نام خانوادگی" SortExpression="name" />
                <asp:BoundField DataField="avr" HeaderText="معدل" SortExpression="avr" />
                <asp:BoundField DataField="enz" HeaderText="انظباط" SortExpression="enz" />
                <asp:TemplateField><ItemTemplate >
                    <asp:CheckBox ID="CheckBox1" runat="server" /></ItemTemplate> </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name], [avr], [enz] FROM [tblsudent] WHERE ([id_school] = @id_school)">
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel3" runat="server" BackColor="SeaShell" Height="33px" Style="z-index: 102;
            left: -2px; position: absolute; top: 312px" Width="617px">
            <asp:Button ID="Button1" SkinID ="btn1" runat="server" Height="27px" Style="z-index: 100; left: 343px;
                position: absolute; top: 3px" Text="ثبت" Width="51px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Height="27px" OnClick="Button2_Click" Style="z-index: 102;
                left: 211px; position: absolute; top: 3px" Text="بازگشت" Width="53px" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>

