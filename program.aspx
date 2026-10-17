<%@ Page Language="C#"  Theme="blue"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="program.aspx.cs" Inherits="program" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 100;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>">
        <SelectParameters>
            <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" BackColor="Gainsboro" BorderColor="#804040"
        BorderStyle="Solid" BorderWidth="2px" Height="50px" Style="z-index: 100; left: 0px;
        position: absolute; top: 0px" Width="614px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 494px; position: absolute;
            top: 13px" Text="نام کلاس"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 391px;
            position: absolute; top: 14px" Width="97px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" AutoPostBack="True" OnInit="DropDownList1_Init" OnLoad="DropDownList1_Load" OnPreRender="DropDownList1_PreRender" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT distinct ([name]), [resh], [base] FROM [tblclass] WHERE ([id_school] = @id_school)">
            <SelectParameters>
                <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 308px; position: absolute;
            top: 11px" Text="مقطع" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Style="z-index: 103; left: 209px;
            position: absolute; top: 12px" Width="89px" OnLoad="TextBox1_Load" Visible="False"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 154px; position: absolute;
            top: 10px" Text="رشته" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Style="z-index: 106; left: 49px;
            position: absolute; top: 11px" Visible="False" Width="91px"></asp:TextBox>
    </asp:Panel>
    <table style="z-index: 100; left: 0px; width: 631px; position: absolute; top: 57px; height: 5px;">
        <tr align ="center" >
            <td style="width: 100px; background-color: #f5deb3;">
                </td>
            <td style="width: 100px; background-color: #f5deb3;">
                ساعت پنجم</td>
            <td style="width: 100px; background-color: #f5deb3;">
                ساعت چهارم</td>
            <td style="width: 100px; background-color: #f5deb3;">
                ساعت سوم</td>
            <td style="width: 100px; background-color: #f5deb3;">
                ساعت دوم</td>
            <td style="width: 100px; background-color: #f5deb3;">
                ساعت اول</td>
            <td style="width: 100px; background-color: #f5deb3;">
            </td>
        </tr>
    </table>
    <table style="z-index: 101; left: 552px; width: 79px; position: absolute; top: 93px;
        height: 305px">
        <tr>
            <td align ="center"  style="width: 100px; background-color: #ffdead;">
                شنبه</td>
        </tr>
        <tr>
            <td align ="center" style="width: 100px; background-color: #ffdead;">
                یکشنبه</td>
        </tr>
        <tr>
            <td align ="center" style="width: 100px; background-color: #ffdead;">
                دوشنبه</td>
        </tr>
        <tr>
            <td align ="center" style="width: 100px; background-color: #ffdead;">
                سه شنبه</td>
        </tr>
        <tr>
            <td align ="center" style="width: 100px; background-color: #ffdead;">
                چهارشنبه</td>
        </tr>
        <tr>
            <td align ="center" style="width: 100px; background-color: #ffdead;">
                پنجشنبه</td>
        </tr>
    </table>
    <table style="z-index: 102; left: 0px; width: 560px; position: absolute;top: 90px;
        height: 308px; background-color: #fff7e7; border-left-color: #deba84; border-bottom-color: #deba84; border-top-style: none; border-top-color: #deba84; border-right-style: none; border-left-style: none; border-right-color: #deba84; border-bottom-style: none;">
        <tr style="border-color:Black " >
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 100; left: 6px; position: absolute;
                    top: 15px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList6" runat="server" Style="z-index: 100; left: 99px; position: absolute;
                    top: 18px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList5" runat="server" Style="z-index: 100; left: 192px;
                    position: absolute; top: 18px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList4" runat="server" Style="z-index: 100; left: 285px;
                    position: absolute; top: 18px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 100; left: 378px;
                    position: absolute; top: 18px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 100; left: 471px;
                    position: absolute; top: 18px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 65px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList11" runat="server" Style="z-index: 100; left: 99px; position: absolute;
                    top: 65px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList10" runat="server" Style="z-index: 100; left: 191px;
                    position: absolute; top: 66px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList9" runat="server" Style="z-index: 100; left: 284px;
                    position: absolute; top: 67px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList8" runat="server" Style="z-index: 100; left: 378px;
                    position: absolute; top: 66px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList7" runat="server" Style="z-index: 100; left: 471px;
                    position: absolute; top: 66px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 116px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList16" runat="server" Style="z-index: 100; left: 99px; position: absolute;
                    top: 116px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList15" runat="server" Style="z-index: 100; left: 192px;
                    position: absolute; top: 116px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                &nbsp;
                <asp:DropDownList ID="DropDownList14" runat="server" Style="z-index: 124; left: 285px;
                    position: absolute; top: 117px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList13" runat="server" Style="z-index: 100; left: 378px;
                    position: absolute; top: 117px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList12" runat="server" Style="z-index: 100; left: 471px;
                    position: absolute; top: 117px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 168px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList21" runat="server" Style="z-index: 100; left: 99px; position: absolute;
                    top: 169px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList20" runat="server" Style="z-index: 100; left: 192px;
                    position: absolute; top: 168px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList19" runat="server" Style="z-index: 100; left: 285px;
                    position: absolute; top: 168px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList18" runat="server" Style="z-index: 100; left: 378px;
                    position: absolute; top: 168px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList17" runat="server" Style="z-index: 100; left: 471px;
                    position: absolute; top: 168px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 220px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                &nbsp;
                <asp:DropDownList ID="DropDownList26" runat="server" Style="z-index: 102; left: 99px; position: absolute;
                    top: 221px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList25" runat="server" Style="z-index: 100; left: 192px;
                    position: absolute; top: 221px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList24" runat="server" Style="z-index: 100; left: 285px;
                    position: absolute; top: 221px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList23" runat="server" Style="z-index: 100; left: 378px;
                    position: absolute; top: 221px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList22" runat="server" Style="z-index: 100; left: 471px;
                    position: absolute; top: 221px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 269px" Width="75px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList31" runat="server" Style="z-index: 100; left: 99px; position: absolute;
                    top: 269px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList30" runat="server" Style="z-index: 100; left: 191px;
                    position: absolute; top: 269px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList29" runat="server" Style="z-index: 100; left: 285px;
                    position: absolute; top: 269px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList28" runat="server" Style="z-index: 100; left: 379px;
                    position: absolute; top: 269px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList27" runat="server" Style="z-index: 100; left: 472px;
                    position: absolute; top: 269px" Width="84px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</asp:Content>

