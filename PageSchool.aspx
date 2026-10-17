<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"   AutoEventWireup="true" CodeFile="PageSchool.aspx.cs" Inherits="PageSchool" Theme="blue"   %>


    <asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >
             
            
    
    
        <asp:Panel  ID="enterlesson" runat="server" Font-Bold="True" Font-Names="B Nazanin" Height="252px"
            Style="z-index: 100;border-bottom-color:transparent;border-right-color: transparent; left: 88px; position: absolute; top: 52px" Width="479px" BackColor="#d2d7d7" BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" Visible="False">
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 346px; position: absolute;
                top: 24px" Width="38px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 409px; position: absolute;
                top: 21px" Text="کد درس"></asp:Label>
            <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 214px; position: absolute;
                top: 24px" Text="نام درس"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 103; left: 55px; position: absolute;
                top: 25px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Style="z-index: 104; left: 433px; position: absolute;
                top: 66px" Text="سال"></asp:Label>
            <asp:DropDownList ID="dryer" runat="server" Width ="2.5cm" Style="z-index: 105; left: 332px;
                position: absolute; top: 68px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:RangeValidator ID="rv1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="کد درس باید چهار رقمی باشد" MaximumValue="9999" MinimumValue="1000"
                Style="z-index: 106; left: 54px; position: absolute; top: 177px" Type="Integer"></asp:RangeValidator>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
                SelectCommand="select name from tblbase where id=(select base from tblschool where id=@id)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="id" SessionField="id_s" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                Style="z-index: 107; left: 95px; position: absolute; top: 101px" Text="تاریخ امتحان ترم دوم"
                TextAlign="Left" />
            <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 290px; position: absolute;
                top: 66px" Text="ضریب "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 109; left: 251px;
                position: absolute; top: 67px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblresh" runat="server" Style="z-index: 110; left: 426px; position: absolute;
                top: 115px" Text="رشته" Visible="False"></asp:Label>
            <asp:DropDownList ID="drresh" runat="server" Style="z-index: 111; left: 334px;
                position: absolute; top: 115px" Visible="False" Width="87px" OnSelectedIndexChanged="drresh_SelectedIndexChanged">
                <asp:ListItem Value="2">ریاضی فیزیک</asp:ListItem>
                <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
                <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" SkinID="btn1"  runat="server" Style="z-index: 112; left: 325px; position: absolute;
                top: 157px;width:1.5cm " Text="ثبت" OnClick="Button1_Click" Height="31px" />
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="*" Style="z-index: 113; left: 35px; position: absolute; top: 36px"></asp:RequiredFieldValidator>
            <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Names="B Nazanin" ForeColor="Red"
                Style="z-index: 114; left: 99px; position: absolute; top: 149px" Text="کد درس تکراری است"
                Visible="False"></asp:Label>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="*" Style="z-index: 115; left: 327px; position: absolute; top: 25px"></asp:RequiredFieldValidator>
            <asp:HyperLink ID="HyperLink1" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="vandana" ForeColor="#284E98" Font-Bold="True" Font-Size="Large" runat="server" NavigateUrl="~/PageSchool.aspx" Style="z-index: 116;
                left: 264px; position: absolute; top: 157px" Font-Underline="False" Height="20px" >بازگشت</asp:HyperLink>
            &nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 117; left: 9px; position: absolute;
                top: 70px" Width="77px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="تاریخ باید به صورت روز/ماه/سال وارد شود" Style="z-index: 118; left: 37px; position: absolute;
                top: 108px" ValidationExpression="\d\d\d\d\\\d\d\\\d\d" Display="None"></asp:RegularExpressionValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                ShowSummary="False" Style="z-index: 119; left: 0px; position: absolute; top: 0px" />
            &nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Enabled="False" Style="z-index: 120; left: 9px;
                position: absolute; top: 102px" Width="77px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7"
                Display="None" Enabled="False" ErrorMessage="تاریخ باید به صورت روز/ماه/سال وارد شود"
                Style="z-index: 121; left: 46px; position: absolute; top: 130px" ValidationExpression="\d\d\d\d\\\d\d\\\d\d"></asp:RegularExpressionValidator>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                Style="z-index: 122; left: 98px; position: absolute; top: 71px" Text="تاریخ امتحان ترم اول"
                TextAlign="Left" />
            <asp:Label ID="lbld1" runat="server" ForeColor="Red" Style="z-index: 123; left: 254px;
                position: absolute; top: 193px" Text="تاریخ ترم اول اشتباه است" Visible="False"
                Width="147px"></asp:Label>
            <asp:Label ID="lbld2" runat="server" ForeColor="Red" Style="z-index: 125; left: 254px;
                position: absolute; top: 215px" Text="تاریخ ترم دوم اشتباه است" Visible="False"
                Width="149px"></asp:Label>
        </asp:Panel>
         
        <asp:Panel ID="changepassword" runat="server" Height="159px" Style="Z-INDEX: 101; BORDER-LEFT-COLOR: #b5c7de; LEFT: 172px; BORDER-BOTTOM-COLOR: #b5c7de; WIDTH: 348px; BORDER-TOP-COLOR: #b5c7de; POSITION: absolute; TOP: 10px; HEIGHT: 209px;" Width="125px" Visible="False">
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
                BorderWidth="1px" Font-Names="vandana" ForeColor="#284E98" Font-Bold="True" Font-Size="Large"  NavigateUrl="~/PageSchool.aspx"
                 Font-Underline="False" Height="20px" Style="z-index: 113; left: 204px; position: absolute;
                            top: 173px" Width="55px">بازگشت</asp:HyperLink>
</TD></TR><TR></TR><TR></TR><TR></TR></TBODY></TABLE>
        </asp:Panel>
        <asp:Label ID="lbltitr" runat="server" CssClass ="header" Style="z-index: 102;text-align:center  ; left: 257px; position: absolute;size :auto ;
            top: -89px" Width="186px"></asp:Label>
        <asp:Panel ID="addteacher" runat="server" Height="237px"   Font-Bold="True" Font-Names="B Nazanin" BackColor="#d2d7d7" BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" Visible="False" Style="z-index: 103; left: 14px;border-bottom-color:'transparent';border-right-color: 'transparent';
            position: absolute; top: 51px" Width="584px">
            <asp:TextBox ID="txtnamet" runat="server" Style="z-index: 100; left: 390px; position: absolute;
                top: 19px" Width="76px"></asp:TextBox>
            <asp:TextBox ID="txtidt" runat="server" Style="z-index: 101; left: 221px; position: absolute;
                top: 19px" Width="42px"></asp:TextBox>
            <asp:TextBox ID="txtecd" runat="server" Style="z-index: 102; left: 19px; position: absolute;
                top: 19px" Width="82px"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Style="z-index: 103; left: 475px; position: absolute;
                top: 17px" Text="نام و نام خانوادگی"></asp:Label>
            <asp:Label ID="Label8" runat="server" Style="z-index: 104; left: 273px; position: absolute;
                top: 17px" Text="شماره شناسایی"></asp:Label>
            <asp:Label ID="Label9" runat="server" Style="z-index: 105; left: 112px; position: absolute;
                top: 17px" Text="رشته تحصیلی"></asp:Label>
            <asp:TextBox ID="txtaddt" runat="server" Style="z-index: 106; left: 234px; position: absolute;
                top: 73px" Width="293px" TextMode="MultiLine"></asp:TextBox>
            <asp:TextBox ID="txttelt" runat="server" Style="z-index: 107; left: 22px; position: absolute;
                top: 73px" Width="103px"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Style="z-index: 108; left: 540px; position: absolute;
                top: 71px" Text="آدرس"></asp:Label>
            <asp:Label ID="Label11" runat="server" Style="z-index: 109; left: 135px; position: absolute;
                top: 71px" Text="تلفن"></asp:Label>
            <asp:Button ID="Button3" SkinID ="btn1"  runat="server" Style="z-index: 110; left: 339px; position: absolute;
                top: 192px" Text="ثبت" Height="31px" Width="1.5cm" OnClick="Button3_Click" />
            <asp:HyperLink ID="HyperLink3" SkinID="h1" NavigateUrl="~/PageSchool.aspx"   runat="server" Style="z-index: 111; left: 245px; position: absolute;
                top: 192px">بازگشت</asp:HyperLink>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnamet"
                ErrorMessage="*" Style="z-index: 112; left: 376px; position: absolute; top: 21px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddt"
                ErrorMessage="*" Style="z-index: 113; left: 211px; position: absolute; top: 77px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttelt"
                ErrorMessage="*" Style="z-index: 114; left: 4px; position: absolute; top: 75px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtecd"
                ErrorMessage="*" Style="z-index: 115; left: 5px; position: absolute; top: 22px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtidt"
                ErrorMessage="*" Style="z-index: 116; left: 201px; position: absolute; top: 23px"></asp:RequiredFieldValidator>
            <asp:Label ID="Label12" runat="server" Style="z-index: 117; left: 537px; position: absolute;
                top: 136px" Text="مقطع"></asp:Label>
            <asp:DropDownList ID="drm" runat="server" Style="z-index: 118; left: 452px;
                position: absolute; top: 140px" Width="78px">
                <asp:ListItem>فوق دیپلم</asp:ListItem>
                <asp:ListItem Selected="True">لیسانس</asp:ListItem>
                <asp:ListItem>فوق لیسانس</asp:ListItem>
                <asp:ListItem>دکترا</asp:ListItem>
            </asp:DropDownList>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtidt"
                ErrorMessage="شماره شناسایی باید 6 رقمی باشد" MaximumValue="999999" MinimumValue="100000"
                Style="z-index: 119; left: 43px; position: absolute; top: 207px" Type="Integer"></asp:RangeValidator>
            <asp:Label ID="lblerrt" runat="server" ForeColor="Red" Style="z-index: 120; left: 70px;
                position: absolute; top: 180px" Text="شماره شناسایی تکراری است" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 121; left: 218px; position: absolute;
                top: 138px" Width="56px"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" Style="z-index: 122; left: 288px; position: absolute;
                top: 137px" Text="شماره شناسنامه"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
                ErrorMessage="*" Style="z-index: 124; left: 196px; position: absolute; top: 138px"></asp:RequiredFieldValidator>
        </asp:Panel>
        <asp:Panel ID="editte"    runat="server" Height="430px" Font-Bold="True" Font-Names="B Nazanin" BackColor="#d2d7d7" BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" Visible="False"  Style="z-index: 105; left: -11px;
            position: absolute; top: 7px;border-bottom-color:'transparent';border-right-color: 'transparent';" Width="643px" ScrollBars="Both" HorizontalAlign="Right">
            &nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="36px" Style="z-index: 102; left: 1px;
                position: absolute; top: 372px" Width="593px">
                <asp:HyperLink ID="HyperLink4" SkinID ="h1"  runat="server" Style="z-index: 100; left: 293px; position: absolute;
                    top: 6px" NavigateUrl="~/PageSchool.aspx">بازگشت</asp:HyperLink>
            </asp:Panel>
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 108; left: 1px;
            position: absolute; top:0px;" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="Vertical" Width="16.4cm" AutoGenerateColumns="False">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" SelectText="انتخاب"
                        ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="به روز رسانی" />
                    <asp:BoundField DataField="id" HeaderText="شماره شناسایی" ReadOnly="True" SortExpression="id">
                        <ItemStyle Width="1.5cm" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="نام و نام خانوادگی" SortExpression="name">
                        <ItemStyle Width="2.5cm" />
                    </asp:BoundField>
                    <asp:BoundField DataField="edc" HeaderText="رشته تحصیلی" SortExpression="edc">
                        <ItemStyle Width="1.5cm" />
                    </asp:BoundField>
                    <asp:BoundField DataField="mgh" HeaderText="مقطع" SortExpression="mgh">
                        <ItemStyle Width="1.5cm" />
                    </asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="تلفن" SortExpression="tel">
                        <ItemStyle Width="2cm" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="آدرس" SortExpression="address">
                        <ItemStyle Width="3.5cm" />
                    </asp:BoundField>
                </Columns>
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EditRowStyle BackColor="#999999" Width="20cm" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
                SelectCommand="SELECT [id], [name], [edc], [mgh], [tel], [address] FROM [tblteacher] WHERE ([id_school] = @id_school)" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblteacher] WHERE [id] = @original_id AND [name] = @original_name AND [edc] = @original_edc AND [mgh] = @original_mgh AND [tel] = @original_tel AND [address] = @original_address" InsertCommand="INSERT INTO [tblteacher] ([id], [name], [edc], [mgh], [tel], [address]) VALUES (@id, @name, @edc, @mgh, @tel, @address)" UpdateCommand="UPDATE [tblteacher] SET [name] = @name, [edc] = @edc, [mgh] = @mgh, [tel] = @tel, [address] = @address WHERE [id] = @original_id AND [name] = @original_name AND [edc] = @original_edc AND [mgh] = @original_mgh AND [tel] = @original_tel AND [address] = @original_address">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int64" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_edc" Type="String" />
                    <asp:Parameter Name="original_mgh" Type="String" />
                    <asp:Parameter Name="original_tel" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="edc" Type="String" />
                    <asp:Parameter Name="mgh" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int64" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_edc" Type="String" />
                    <asp:Parameter Name="original_mgh" Type="String" />
                    <asp:Parameter Name="original_tel" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="id_school" SessionField="id_s" Type="Int64" />
                </SelectParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int64" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="edc" Type="String" />
                    <asp:Parameter Name="mgh" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        
      
       
   
   <asp:Panel ID="Panel3" runat="server" Height="195px" Style="z-index: 102; left: -166px;
                position: absolute; top: -1px" Width="255px">
                <asp:Menu style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP:0px" id="Menu1" runat="server" StaticSubMenuIndent="10px" ForeColor="LightYellow" Font-Size="0.95em" Font-Names="Verdana" Font-Italic="True" Font-Bold="True" DynamicHorizontalOffset="2" BackColor="transparent" OnMenuItemClick="menu">
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px"  />
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White"  />
                        <DynamicMenuStyle BackColor="Sienna"  />
                        <DynamicItemTemplate>
                            <%# Eval("Text") %>
                        </DynamicItemTemplate>
                        <StaticSelectedStyle BackColor="#507CD1"  />
                        <DynamicSelectedStyle BackColor="#507CD1"  />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px"  />
                        <Items>
                            <asp:MenuItem Text="اطلاعات معلم" Value="1" Enabled="False">
                                <asp:MenuItem Text="ورود نمره" Value="10"></asp:MenuItem>
                                <asp:MenuItem Text="ویرایش نمره" Value="11"></asp:MenuItem>
                                <asp:MenuItem Text="ویرایش مشخصات" Value="13"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="کلاس بندی" Value="2" Enabled="False"></asp:MenuItem>
                            <asp:MenuItem Text=" درس" Value="3" Enabled="False">
                                <asp:MenuItem Text="اضافه کردن درس" Value="30"></asp:MenuItem>
                                <asp:MenuItem Text="حذف درس" Value="31"></asp:MenuItem>
                                <asp:MenuItem Text="انتساب درس به معلم" Value="32"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="اطلاعات دانش آموز" Value="4" Enabled="False">
                                <asp:MenuItem Text="جستجو دانش آموز" Value="40"></asp:MenuItem>
                                <asp:MenuItem Text="ویرایش مشخصات دانش اموز" Value="41"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="اضافه کردن معلم" Value="5" Enabled="False"></asp:MenuItem>
                            <asp:MenuItem Text="تغییر رمز ورود" Value="6"></asp:MenuItem>
                            <asp:MenuItem Text="کلاس" Value="کلاس" Enabled="False">
                                <asp:MenuItem Text="اضافه کردن کلاس" Value="81"></asp:MenuItem>
                                <asp:MenuItem Text="ویرایش کلاس" Value="82"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticItemTemplate>
                            <%# Eval("Text") %>
                        </StaticItemTemplate>
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White"  />
                    </asp:Menu>
            </asp:Panel>
        
    </asp:Content>
    
    
