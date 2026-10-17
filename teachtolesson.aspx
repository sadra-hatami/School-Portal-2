<%@ Page Language="C#"  Theme ="blue" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="teachtolesson.aspx.cs" Inherits="teachtolesson" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="LightBlue" BorderColor="Navy" BorderStyle="Solid"
        BorderWidth="2px" Height="184px" Style="z-index: 100; left: 33px; position: absolute;
        top: 28px" Width="484px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 428px; position: absolute;
            top: 19px" Text="نام کلاس"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 332px;
            position: absolute; top: 19px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" OnPreRender="DropDownList1_PreRender" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="93px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name] FROM [tblclass2] WHERE ([id_s] = @id_s)">
            <SelectParameters>
                <asp:SessionParameter Name="id_s" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 269px; position: absolute;
            top: 18px" Text="نام درس"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 103; left: 172px;
            position: absolute; top: 18px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" Width="92px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>">
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 104px; position: absolute;
            top: 18px" Text="نام معلم"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 105; left: 7px;
            position: absolute; top: 18px" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" OnPreRender="DropDownList3_PreRender" Width="89px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT [name] FROM [tblteacher] WHERE ([id_school] = @id_school)">
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" SkinID ="btn1"  runat="server" Height="31px" Style="z-index: 106; left: 264px;
            position: absolute; top: 107px" Text="ثبت" Width="47px" OnClick="Button1_Click" />
        <asp:HyperLink ID="HyperLink1" SkinID ="h1"  runat="server" Style="z-index: 107; left: 184px; position: absolute;
            top: 107px" NavigateUrl="~/PageSchool.aspx">بازگشت</asp:HyperLink>
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Style="z-index: 109; left: 158px;
            position: absolute; top: 144px" Text="رکورد با این مشخصات وجود دارد" Visible="False"></asp:Label>
    </asp:Panel>
    <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 102;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
</asp:Content>

