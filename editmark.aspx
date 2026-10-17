<%@ Page Language="C#"  Theme="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editmark.aspx.cs" Inherits="program" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT Lesson.name FROM Lesson INNER JOIN tblteach ON Lesson.code = tblteach.id_l WHERE (Lesson.id_school = @id_s) AND (tblteach.id_t = @id_t)">
        <SelectParameters>
            <asp:SessionParameter Name="id_s" SessionField="id_s" />
            <asp:SessionParameter Name="id_t" SessionField="id_t" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" BackColor="PeachPuff" BorderColor="#804040"
        BorderStyle="Solid" BorderWidth="2px" Height="50px" Style="z-index: 101; left: 0px;
        position: absolute; top: 0px" Width="614px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 494px; position: absolute;
            top: 13px" Text="نام کلاس"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 391px;
            position: absolute; top: 14px" Width="97px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" AutoPostBack="True"  OnPreRender="DropDownList1_PreRender" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT distinct(tblclass2.name) FROM tblclass2 INNER JOIN tblteach ON tblclass2.name = tblteach.name WHERE (tblclass2.id_s = @id_s) AND (tblteach.id_t = @id_t)">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" />
                <asp:SessionParameter Name="id_t" SessionField="id_t" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 303px; position: absolute;
            top: 12px" Text="نام درس"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 103; left: 198px;
            position: absolute; top: 14px" Width="95px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" AutoPostBack="True" OnPreRender="DropDownList2_PreRender" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Enabled="False">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 119px; position: absolute;
            top: 16px" Text="ترم"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 106; left: 71px;
            position: absolute; top: 16px" Width="41px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Enabled="False">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="BlanchedAlmond" Height="342px" ScrollBars="Vertical"
        Style="z-index: 102; left: 119px; position: absolute; top: 55px" Visible="False"
        Width="386px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Horizontal"
            Style="z-index: 100; left: 1px; position: absolute; top: 1px" Width="366px" EmptyDataRowStyle-VerticalAlign="Middle" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataText="دانش اموزی برای نمایش وجود ندارد">
            <FooterStyle BackColor="Tan" />
            <Columns>
                <asp:TemplateField><ItemTemplate >
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" ControlToValidate ="TextBox1" MinimumValue="0" MaximumValue="20" Type="Double"></asp:RangeValidator></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="نمره پایانی">
                    <ItemTemplate >
                        <asp:TextBox ID="TextBox1" runat="server" Width ="1cm"></asp:TextBox></ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="نام و نام خانوادگی" SortExpression="name"  />
                <asp:BoundField DataField="id" HeaderText="شماره شناسایی" SortExpression="id" />
            </Columns>
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
    </asp:Panel>
    <asp:Button ID="Button1" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 103; left: 294px;
        position: absolute; top: 409px" Text="ویرایش" Width="63px" OnClick="Button1_Click" />
    <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 104; left: 196px;
        position: absolute; top: 409px" Text="انصراف" Width="59px" OnClick="Button2_Click" />
    <asp:Panel ID="Panel3" runat="server" BackColor="MistyRose" BorderColor="Purple"
        BorderStyle="Solid" BorderWidth="2px" Height="107px" HorizontalAlign="Center"
        Style="z-index: 106; left: 84px; position: absolute; top: 86px" Visible="False"
        Width="391px">
        <br />
        <asp:Button ID="Button3" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 100; left: 174px;
            position: absolute; top: 71px" Text="تایید" Width="44px" OnClick="Button3_Click" />
        .عملیات با موفقیت انجام شد</asp:Panel>
</asp:Content>

