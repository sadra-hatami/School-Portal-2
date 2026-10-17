<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Step1.aspx.cs" Inherits="Step1" MasterPageFile ="~/MasterPage2.master"  %>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" ID="con1" runat ="server" >

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <center runat ="server"  > &nbsp;</center>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <table style="z-index: 100; left: 4px; position: absolute; top: 25px;border-color:Red ; background-color:#5fbfed;     width: 615px;" border="1px" cellpadding="0" cellspacing="0">
            <tr style ="border-spacing:0;border-color:#5fbfed" >
                <td colspan="4" style="width: 3px; height: 75px">
        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 103px; position: absolute;
            top: 24px" Text="پایه"></asp:Label>
        <asp:DropDownList ID="dr1" runat="server" Font-Bold="False" Style="z-index: 102;
            left: 14px; position: absolute; top: 27px">
            <asp:ListItem Value="1">ابتدایی</asp:ListItem>
            <asp:ListItem Value="2">راهنمایی</asp:ListItem>
            <asp:ListItem Selected="True" Value="3">دبیرستان</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtnamesch" runat="server" Style="z-index: 100; left: 178px; position: absolute;
            top: 27px" Width="99px" CssClass="txt1.css"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 291px; position: absolute;
            top: 25px" Text="نام مدرسه" Width="60px"></asp:Label>
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 525px; position: absolute;
            top: 26px" Text="نام مدیر" Width="52px"></asp:Label>
        <asp:TextBox ID="txtnameman" runat="server" Style="z-index: 101; left: 418px; position: absolute;
            top: 29px" Width="95px" CssClass="txt1.css"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnameman"
                        ErrorMessage="*" Style="z-index: 103; left: 397px; position: absolute; top: 31px">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 3px; height: 75px">
        <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 214px; position: absolute;
            top: 103px" Text="تلفن"></asp:Label>
        <asp:TextBox ID="txttel" runat="server" Style="z-index: 101; left: 117px; position: absolute;
            top: 105px" Width="86px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnamesch"
                        ErrorMessage="*" Style="z-index: 103; left: 156px; position: absolute; top: 30px">*</asp:RequiredFieldValidator>
        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 538px; position: absolute;
            top: 102px" Text="ادرس"></asp:Label>
        <asp:TextBox ID="txtaddres" runat="server" Style="z-index: 101; left: 308px; position: absolute;
            top: 105px" Width="216px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddres"
                        ErrorMessage="RequiredFieldValidator" Style="z-index: 103; left: 288px; position: absolute;
                        top: 107px">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="height: 75px; width: 3px;">
        <asp:RadioButtonList ID="r1" runat="server" Style="z-index: 100; left: 14px; position: absolute;
            top: 163px">
            <asp:ListItem Value="1">دخترانه</asp:ListItem>
            <asp:ListItem Selected="True" Value="0">پسرانه</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label8" runat="server" Style="z-index: 101; left: 225px; position: absolute;
            top: 180px" Text="کد شناسایی" Width="72px"></asp:Label>
        <asp:TextBox ID="txtId" runat="server" Style="z-index: 102; left: 139px; position: absolute;
            top: 183px" Width="75px"  ></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 103; left: 365px; position: absolute;
            top: 181px" Text="منطقه"></asp:Label>
        <asp:TextBox ID="txtarea" runat="server" Style="z-index: 104; left: 330px; position: absolute;
            top: 183px" Width="21px" MaxLength="2">0</asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 105; left: 522px; position: absolute;
            top: 178px" Text="نام شهر" Width="50px"></asp:Label>
        <asp:TextBox ID="txtnamecity" runat="server" Style="z-index: 106; left: 442px; position: absolute;
            top: 181px" Width="68px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttel"
                        ErrorMessage="RequiredFieldValidator" Style="z-index: 107; left: 94px; position: absolute;
                        top: 107px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtId"
                        ErrorMessage="RequiredFieldValidator" Style="z-index: 108; left: 116px; position: absolute;
                        top: 187px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnamecity"
                        ErrorMessage="RequiredFieldValidator" Style="z-index: 109; left: 420px; position: absolute;
                        top: 183px">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 3px; height: 85px">
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red" Style="z-index: 100; left: 118px;
                        position: absolute; top: 285px" Text="کدشناسایی تکراری است" Visible="False" Width="139px"></asp:Label>
        <asp:Button ID="Button1" runat="server" Style="z-index: 101; left: 265px; position: absolute;
            top: 254px" Text="ثبت" Font-Bold="True" Font-Names="B Nazanin" Font-Size="X-Large" Height="44px" Width="65px" OnClick="Button1_Click"    />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtId"
                        ErrorMessage="کد شناسایی باید یک عدد 7 رقمی باشد" MaximumValue="9999999" MinimumValue="1000000"
                        Style="z-index: 102; left: 41px; position: absolute; top: 258px" Type="Integer" Width="220px"></asp:RangeValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtarea"
                        ErrorMessage="شماره منطقه بی اعتبار است" MaximumValue="30" MinimumValue="0" Style="z-index: 104;
                        left: 101px; position: absolute; top: 231px" Type="Integer" Width="157px"></asp:RangeValidator>
                </td>
            </tr>
        </table>
    
   
</asp:Content>
