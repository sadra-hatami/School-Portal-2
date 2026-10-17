<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page manage.aspx.cs" Inherits="page_manage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#EEE000" OnClick="LinkButton1_Click"
        Style="z-index: 100; left: 14px; position: absolute; top: 221px">ثبت مدرسه</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#EEE000" OnClick="LinkButton2_Click"
        Style="z-index: 101; left: 15px; position: absolute; top: 254px">ویرایش مدرسه</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#EEE000" Style="z-index: 102;
        left: 15px; position: absolute; top: 287px" OnClick="LinkButton3_Click">تغییر رمز ورود</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label style="Z-INDEX: 104; LEFT: 690px; POSITION: absolute; TOP: 10px" id="Label2" runat="server" Text="<<" ForeColor="Gainsboro"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                        left: -163px; position: absolute; top: -46px" Font-Underline="False" Font-Names="Estrangelo Edessa" Font-Size="11pt" ForeColor="MediumOrchid">صفحه اصلی</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/page manage.aspx" Style="z-index: 107;
                        left: 710px; position: absolute; top: 7px" Font-Underline="False" Font-Names="Estrangelo Edessa" Font-Size="14pt" ForeColor="Gainsboro" Width="18px">بازگشت</asp:HyperLink>
    <asp:Panel ID="Panel1" runat="server" Height="453px" Style="z-index: 100; left: -11px;
        position: absolute; top: -7px" Visible="False" Width="651px" ScrollBars="Horizontal">
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" DeleteCommand="DELETE FROM [tblschool] WHERE [id] = @original_id AND [ns] = @original_ns AND [nm] = @original_nm AND [s] = @original_s AND [tel] = @original_tel AND [address] = @original_address AND [area] = @original_area AND [namecity] = @original_namecity"
            InsertCommand="INSERT INTO [tblschool] ([id], [ns], [nm], [s], [tel], [address], [area], [namecity]) VALUES (@id, @ns, @nm, @s, @tel, @address, @area, @namecity)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [ns], [nm], [s], [tel], [address], [area], [namecity] FROM [tblschool]"
            UpdateCommand="UPDATE [tblschool] SET [ns] = @ns, [nm] = @nm, [s] = @s, [tel] = @tel, [address] = @address, [area] = @area, [namecity] = @namecity WHERE [id] = @original_id AND [ns] = @original_ns AND [nm] = @original_nm AND [s] = @original_s AND [tel] = @original_tel AND [address] = @original_address AND [area] = @original_area AND [namecity] = @original_namecity">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int64" />
                <asp:Parameter Name="original_ns" Type="String" />
                <asp:Parameter Name="original_nm" Type="String" />
                <asp:Parameter Name="original_s" Type="Boolean" />
                <asp:Parameter Name="original_tel" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_area" Type="Int16" />
                <asp:Parameter Name="original_namecity" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ns" Type="String" />
                <asp:Parameter Name="nm" Type="String" />
                <asp:Parameter Name="s" Type="Boolean" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="area" Type="Int16" />
                <asp:Parameter Name="namecity" Type="String" />
                <asp:Parameter Name="original_id" Type="Int64" />
                <asp:Parameter Name="original_ns" Type="String" />
                <asp:Parameter Name="original_nm" Type="String" />
                <asp:Parameter Name="original_s" Type="Boolean" />
                <asp:Parameter Name="original_tel" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_area" Type="Int16" />
                <asp:Parameter Name="original_namecity" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int64" />
                <asp:Parameter Name="ns" Type="String" />
                <asp:Parameter Name="nm" Type="String" />
                <asp:Parameter Name="s" Type="Boolean" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="area" Type="Int16" />
                <asp:Parameter Name="namecity" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
            ForeColor="#333333" GridLines="Vertical" Height="368px" Style="z-index: 100; left: 0px;
            position: absolute; top: 0px" Width="651px" OnRowDeleting="GridView1_RowDeleting">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True"
                    ShowEditButton="True" UpdateText="به روز رسانی" />
                <asp:BoundField DataField="id" HeaderText="شماره مدرسه" ReadOnly="True" SortExpression="id">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="ns" HeaderText="نام مدرسه" SortExpression="ns">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="nm" HeaderText="نام مدیر" SortExpression="nm">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="s" HeaderText="دخترانه" SortExpression="s" />
                <asp:BoundField DataField="tel" HeaderText="شماره تلفن" SortExpression="tel">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="2.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="آدرس" SortExpression="address">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="area" HeaderText="منطقه" SortExpression="area">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="0.5cm" />
                </asp:BoundField>
                <asp:BoundField DataField="namecity" HeaderText="نام شهر" SortExpression="namecity">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="1.5cm" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="115px" Width="337px" Style="Z-INDEX: 101;POSITION: absolute; left: 162px; top: 23px;" Visible="False">
    <TABLE style="Z-INDEX: 103; border-left-color: #b5c7de; left : 2px; border-bottom-color : #b5c7de; width : 348px; border-top-color : #b5c7de; position : absolute; top : 5px; height : 184px; border-right-color : #b5c7de" 
                    border=1><CAPTION style="font-weight : bold; font-size : large; color : white; font-family : 'B Titr'; background-color : #6c96d2" HorizontalAlign="Center" ForeColor="White" 
                    Font-Size="0.9em" Font-Bold="True" BorderWidth="2px" BorderStyle="Solid" ;BorderColor="#EFF3FB" > تغییر رمز ورود 
                    </CAPTION><TBODY><TR><TD style="BACKGROUND-COLOR: #eff3fb; height: 159px;" 
                    colSpan=3 rowSpan=4>
<asp:Label style="Z-INDEX: 100; LEFT: 73px; POSITION: absolute; TOP: 70px" id="Label1" runat="server" Text="رمز ورود"></asp:Label> 
<asp:Label style="Z-INDEX: 101; LEFT: 40px; POSITION: absolute; TOP: 108px" id="Label6" runat="server" Text="رمز ورود جدید"></asp:Label> &nbsp;
<asp:TextBox style="Z-INDEX: 103; LEFT: 129px; POSITION: absolute; TOP: 72px" id="TextBox3" runat="server" TextMode="Password"></asp:TextBox> 
<asp:TextBox style="Z-INDEX: 104; LEFT: 129px; POSITION: absolute; TOP: 112px" id="TextBox4" runat="server" TextMode="Password"></asp:TextBox> &nbsp;
<asp:Button style="Z-INDEX: 106; LEFT: 270px; POSITION: absolute; TOP: 173px" id="Button2" onclick="Button2_Click" runat="server" ForeColor="#284E98" Font-Size="Large" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid" Text="ثبت" Width="67px" Height="31px" Font-Names="vandana" BorderColor="#507CD1" BackColor="White"></asp:Button> 
<asp:RequiredFieldValidator style="Z-INDEX: 107; LEFT: 290px; POSITION: absolute; TOP: 75px" id="Rf2" runat="server" Font-Size="Large" Font-Bold="True" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator> 
<asp:RequiredFieldValidator style="Z-INDEX: 108; LEFT: 291px; POSITION: absolute; TOP: 115px" id="Rf3" runat="server" Font-Size="Large" Font-Bold="True" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="lblerr" runat="server" ForeColor="Red" Style="z-index: 111; left: 80px;
                            position: absolute; top: 176px" Text="رمز ورود معتبر نیست" Visible="False"></asp:Label>
                        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="vandana" ForeColor="#284E98" Font-Bold="True" Font-Size="Large"  NavigateUrl="~/page manage.aspx"
                 Font-Underline="False" Height="20px" Style="z-index: 113; left: 204px; position: absolute;
                            top: 173px" Width="55px">بازگشت</asp:HyperLink>
</TD></TR><TR></TR><TR></TR><TR></TR></TBODY></TABLE>
    
    </asp:Panel>
</asp:Content>

