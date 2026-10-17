<%@ Page Language="C#" Theme ="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="editProsudent" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFC5" BorderColor="CornflowerBlue"
        BorderStyle="Solid" BorderWidth="2px" Height="129px" Style="z-index: 101; left: -6px;
        position: absolute; top: -2px" Width="642px">
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 443px; position: absolute;
            top: 22px" Width="69px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 186px; position: absolute;
            top: 23px" Width="112px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 102; left: 21px;
            position: absolute; top: 23px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Width="91px" OnPreRender="DropDownList1_PreRender">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 103; left: 488px;
            position: absolute; top: 82px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" Width="97px" AutoPostBack="True" OnPreRender="DropDownList2_PreRender" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT tblbase.name FROM tblbase INNER JOIN tblschool ON tblbase.id = tblschool.base&#13;&#10;where tblschool.id=@id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name] FROM [tblclass2] WHERE ([id_s] = @id_s)">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 526px; position: absolute;
            top: 20px" Text="شماره دانش آموزی" Width="106px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 105; left: 309px; position: absolute;
            top: 20px" Text="نام و نام خانوادگی"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 120px; position: absolute;
            top: 19px" Text="نام کلاس"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 107; left: 593px; position: absolute;
            top: 80px" Text="مقطع"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 418px; position: absolute;
            top: 81px" Text="رشته" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 109; left: 323px;
            position: absolute; top: 84px" Width="88px" Visible="False">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="2">ریاضی فیزیک</asp:ListItem>
            <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
            <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="*" MinimumValue="5000" Style="z-index: 110; left: 422px; position: absolute;
            top: 22px" Type="Integer" MaximumValue="50000"></asp:RangeValidator>
        <asp:Button ID="Button1" SkinID ="btn1"  runat="server" Height="31px" OnClick="Button1_Click" Style="z-index: 111;
            left: 233px; position: absolute; top: 85px" Text="جستجو" Width="59px" />
        <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Height="31px" OnClick="Button2_Click" Style="z-index: 112;
            left: 165px; position: absolute; top: 84px" Text="بازگشت" Width="57px" />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="z-index: 113; left: 8px;
            position: absolute; top: 57px">
            <asp:ListItem Selected="True" Value="and">و</asp:ListItem>
            <asp:ListItem Value="or">یا</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label6" runat="server" Style="z-index: 115; left: 45px; position: absolute;
            top: 74px" Text="جستجو بر اساس"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="202px" Style="z-index: 103; left: -33px;
        position: absolute; top: 133px" Width="643px" Visible="False">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            GridLines="Vertical" Style="z-index: 100; left: 1px; position: absolute; top: 0px"
            Width="687px" EmptyDataText="رکوردی برای نمایش پیدا نشد" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-VerticalAlign="Middle" EmptyDataRowStyle-BackColor="BlueViolet" EmptyDataRowStyle-BorderStyle="Solid" EmptyDataRowStyle-BorderWidth="2" EmptyDataRowStyle-BorderColor="Coral">
            <FooterStyle BackColor="#CCCC99" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="شماره دانش اموزی" SortExpression="id">
                    <ControlStyle Width="1.5cm" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="نام و نام خانوادگی" SortExpression="name">
                    <ControlStyle Width="2.5cm" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="name_f" HeaderText="نام پدر" SortExpression="name_f">
                    <ControlStyle Width="1.5cm" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="yer" HeaderText="سال ورود" SortExpression="yer">
                    <ControlStyle Width="1cm" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="1cm" />
                </asp:BoundField>
                <asp:BoundField DataField="nameclass" HeaderText="نام کلاس" SortExpression="nameclass">
                    <ControlStyle Width="1.5cm" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="tel" HeaderText="شماره تلفن" SortExpression="tel">
                    <ControlStyle Width="2.5cm" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="ادرس" SortExpression="address">
                    <ControlStyle Width="3.5cm" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="5cm" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>

