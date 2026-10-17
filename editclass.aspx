<%@ Page Language="C#" Theme ="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editclass.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="PaleGoldenrod" BorderColor="Olive" BorderStyle="Solid"
        BorderWidth="2px" Height="156px" Style="z-index: 100; left: 95px; position: absolute;
        top: 71px" Width="527px" Visible="False">
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 356px; position: absolute;
            top: 21px" Width="96px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 464px; position: absolute;
            top: 19px" Text="نام کلاس"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 283px; position: absolute;
            top: 22px" Text="مقطع"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="name" DataValueField="name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 103; left: 180px; position: absolute; top: 22px" Width="101px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT tblbase.name FROM tblschool INNER JOIN tblbase ON tblschool.base = tblbase.id WHERE (tblschool.id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 115px; position: absolute;
            top: 21px" Text="رشته" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 105; left: 24px;
            position: absolute; top: 23px" Width="86px" Visible="False">
            <asp:ListItem Value="2">ریاضی فیزیک</asp:ListItem>
            <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
            <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
        </asp:DropDownList>
        <asp:Button SkinID ="btn1"  ID="Button1" runat="server" Height="31px" Style="z-index: 106; left: 282px;
            position: absolute; top: 117px" Text="ثبت" Width="50px" OnClick="Button1_Click" />
        &nbsp;
        <asp:HyperLink ID="HyperLink1" SkinID ="h1"  runat="server" Style="z-index: 108; left: 207px; position: absolute;
            top: 117px" NavigateUrl="~/PageSchool.aspx">بازگشت</asp:HyperLink>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="*" Style="z-index: 111; left: 334px; position: absolute; top: 24px"></asp:RequiredFieldValidator>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server"  Height="256px" Width="300px" style="z-index: 102; left: 224px; position: absolute; top: 68px" BackColor="PaleGoldenrod" BorderColor="#404000" BorderStyle="Solid" BorderWidth="2px" Visible="False">
        <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Style="z-index: 100; left: 222px; position: absolute;
            top: 207px" Text="ویرایش" OnClick="Button2_Click" Height="32px" />
        <asp:Button ID="Button3" SkinID ="btn1"  runat="server" Height="32px" Style="z-index: 101; left: 142px;
            position: absolute; top: 207px" Text="حذف" Width="46px" OnClick="Button3_Click" />
        <asp:HyperLink SkinID="h1"  ID="HyperLink2" runat="server" Style="z-index: 102; left: 52px; position: absolute;
            top: 207px" NavigateUrl="~/PageSchool.aspx">بازگشت</asp:HyperLink>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 103; left: 142px;
            position: absolute; top: 45px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" OnPreRender="DropDownList3_PreRender" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="87px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name] FROM [tblclass2] WHERE ([id_s] = @id_s)" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList4" runat="server" Style="z-index: 104; left: 142px;
            position: absolute; top: 92px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="88px" Enabled="False" OnPreRender="DropDownList4_PreRender">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList5" runat="server" Style="z-index: 105; left: 142px;
            position: absolute; top: 136px" Width="87px" Enabled="False" Visible="False">
            <asp:ListItem Value="2">ریاضی فیریک</asp:ListItem>
            <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
            <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: 238px; position: absolute;
            top: 43px" Text="نام کلاس"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 107; left: 240px; position: absolute;
            top: 90px" Text="مقطع"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 108; left: 241px; position: absolute;
            top: 136px" Text="رشته" Visible="False"></asp:Label>
        <asp:Button ID="Button4" SkinID ="btn1"  runat="server" OnClick="Button4_Click" Style="z-index: 109;
            left: 200px; position: absolute; top: 207px" Text="به روز رسانی" Height="31px" Visible="False" Width="90px" />
        <asp:Button ID="Button5" SkinID ="btn1"  runat="server" OnClick="Button5_Click" Style="z-index: 110;
            left: 121px; position: absolute; top: 207px" Text="انصراف" Height="31px" Visible="False" />
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 111; left: 113px; position: absolute;
            top: 46px" Visible="False" Width="113px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*" Style="z-index: 113; left: 93px; position: absolute; top: 49px" Enabled="False"></asp:RequiredFieldValidator>
    
    </asp:Panel>
</asp:Content>

