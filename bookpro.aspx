<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookpro.aspx.cs" Inherits="Default2" Theme ="blue" MasterPageFile ="~/MasterPage2.master" %>

<asp:Content ID="co1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server" >
    
    <br /><br />
    <asp:Panel ID="Panel4" runat="server" Height="130px" Width="457px" style="z-index: 131; left: 119px; position: absolute; top: 102px" BackColor="Bisque" BorderColor="#404040" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" Visible="False">
        <br />
        <span style="font-size: 14pt; color: #ff3333">!زمان ثبت نام به پایان ر
            <asp:HyperLink ID="HyperLink3" SkinID ="h1"  runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
            left: 193px; position: absolute; top: 90px">بازگشت</asp:HyperLink>
            سیده است </span>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="310px" Width="583px" BackColor="InactiveCaptionText" BorderColor="#C00000" BorderStyle="Solid" BorderWidth="2px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 485px; position: absolute;
            top: 90px" Text="نام و نام خانوادگی"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 101; left: 351px; position: absolute;
            top: 94px" Width="123px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 287px; position: absolute;
            top: 92px" Text="نام پدر"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 103; left: 200px; position: absolute;
            top: 92px" Width="75px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 85px; position: absolute;
            top: 87px" Text="شماره شناسنامه"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 105; left: 18px; position: absolute;
            top: 88px" Width="53px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: 527px; position: absolute;
            top: 165px" Text="آدرس"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 107; left: 267px; position: absolute;
            top: 162px" Width="251px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 160px; position: absolute;
            top: 167px" Text="شماره تلفن"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 109; left: 76px; position: absolute;
            top: 165px" Width="70px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 490px; position: absolute;
            top: 228px" Text="معدل سال قبل"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 111; left: 450px; position: absolute;
            top: 228px" Width="27px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 112; left: 329px; position: absolute;
            top: 229px" Text="انظباط سال قبل"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 113; left: 279px; position: absolute;
            top: 228px" Width="31px"></asp:TextBox>
        <asp:Button ID="Button1" SkinID ="btn1" runat="server" Style="z-index: 114; left: 263px; position: absolute;
            top: 315px" Text="ثبت" Height="30px" Width="43px" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            Style="z-index: 115; left: 54px; position: absolute; top: 167px" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            Style="z-index: 116; left: 258px; position: absolute; top: 229px" ControlToValidate="TextBox7" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            Style="z-index: 117; left: 430px; position: absolute; top: 232px" ControlToValidate="TextBox6" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
            Style="z-index: 118; left: 8px; position: absolute; top: 91px" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
            Style="z-index: 119; left: 246px; position: absolute; top: 165px" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
            Style="z-index: 120; left: 187px; position: absolute; top: 97px" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
            Style="z-index: 121; left: 338px; position: absolute; top: 97px" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="name" DataValueField="name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 122; left: 44px; position: absolute; top: 230px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT tblbase.name FROM tblbase INNER JOIN tblschool ON tblbase.id = tblschool.base WHERE (tblschool.id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id_s" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 123; left: 429px;
            position: absolute; top: 288px" Visible="False" Width="87px">
            <asp:ListItem Value="2">ریاضی فیزیک</asp:ListItem>
            <asp:ListItem Value="3">علوم تجربی</asp:ListItem>
            <asp:ListItem Value="4">علوم انسانی</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label8" runat="server" Style="z-index: 124; left: 166px; position: absolute;
            top: 228px" Text="مقطع"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 125; left: 522px; position: absolute;
            top: 286px" Text="رشته" Visible="False"></asp:Label>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6"
            Display="None" ErrorMessage="فیلد معدل اشتباه وارد شده است" MaximumValue="20"
            MinimumValue="0" Style="z-index: 126; left: 402px; position: absolute; top: 195px"
            Type="Double" SetFocusOnError="True"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox7"
            Display="None" ErrorMessage="فیلد انضباط اشتباه وارد شده است." MaximumValue="20"
            MinimumValue="0" Style="z-index: 127; left: 201px; position: absolute; top: 195px" Type="Double"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox3"
            Display="None" ErrorMessage="فیلد شماره شناسنامه اشتباه وارد شده است." MaximumValue="9999999999"
            MinimumValue="1" Style="z-index: 128; left: 24px; position: absolute; top: 104px"
            Type="Double"></asp:RangeValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="پیغام خطا"
            ShowMessageBox="True" ShowSummary="False" Style="z-index: 129; left: 0px; position: absolute;
            top: 0px" />
        <asp:Label ID="lblrepeat" runat="server" ForeColor="Red" Style="z-index: 131; left: 79px;
            position: absolute; top: 321px" Text="مشخصات وارد شده تکراری است" Visible="False"></asp:Label>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="DarkSeaGreen" BorderColor="#FF8000"
            BorderStyle="Solid" BorderWidth="2px" Height="121px" Style="z-index: 131; left: 127px;
            position: absolute; top: 106px;text-align :right ;" Width="436px" Visible="False">
            <br />
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" SkinID ="h1"  runat="server" NavigateUrl="bookschool.aspx" Style="z-index: 100;
                left: 202px; position: absolute; top: 81px" Width="46px">بازگشت</asp:HyperLink>
            &nbsp; &nbsp; .متاسفانه در این مدرسه ظرفیت تکمیل می باشد &nbsp;&nbsp;
           
        </asp:Panel>
         <asp:Panel ID="Panel3" runat="server" BackColor="#E7EEF2" BorderColor="Olive" BorderStyle="Solid"
                BorderWidth="2px" Height="121px" Style="z-index: 102; left: 133px; position: absolute;
                top: 106px;text-align: center  " Width="437px" Visible="False">
                <br />.اطلاعات شما با موفقیت ثبت شد
                        <asp:HyperLink ID="HyperLink2" SkinID ="h1"  runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                    left: 188px; position: absolute; top: 84px" Width="51px">بازگشت</asp:HyperLink>
                </asp:Panel>
    
    
</asp:Content>
