<%@ Page Language="C#" AutoEventWireup="true"   MaintainScrollPositionOnPostback ="false" MasterPageFile ="~/MasterPage2.master"   CodeFile="Default.aspx.cs" Inherits="_Default" Culture="fa-IR" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder2" runat ="server">
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="False"
        Font-Names="B Nazanin" Font-Overline="False" ForeColor="White" NavigateUrl="~/Default2.aspx"
        Style="z-index: 100; left: 21px; position: absolute; top: 6px" Width="47px">ثبت نام</asp:HyperLink>

        <br /><br /><br /><br /><br />
            <asp:Panel runat="server" BackColor= "#b0c4eb" Height="6.1cm"  Width="3.9cm" ID ="pa1" DefaultButton="Button1" style="z-index: 102; left: 5px; position: absolute; top: 212px"><asp:TextBox ID="txtusername" runat="server" Style="z-index: 100; left: 11px; position: absolute;
                top: 48px" Width="75px"></asp:TextBox>
            
            <asp:Label ID="lblusername" runat="server" Style="z-index: 102; left: 95px; position: absolute;
                top: 46px" Text="نام کاربری" Font-Bold="True" Width="53px" Font-Size="0.9em"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 11px; position: absolute;
                top: 78px" Width="75px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 104; left: 98px;
                position: absolute; top: 76px" Text="رمز ورود" Width="44px" Font-Size="0.9em"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Italic="False"
                Font-Names="B Nazanin" Font-Size="Small" Style="z-index: 105; left: 6px; position: absolute;
                top: 100px">
                <asp:ListItem Selected="True" Value="0">مدیر سایت</asp:ListItem>
                <asp:ListItem Value="1">مدیر مدرسه</asp:ListItem>
                <asp:ListItem Value="2">معلم</asp:ListItem>
                <asp:ListItem Value="3">دانش اموز</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="vandana" ForeColor="#284E98" Font-Bold="True" Font-Size="Large" Height="28px" OnClick="Button1_Click" Style="z-index: 106;
                left: 92px; position: absolute; top: 163px" Text="ورود" Width="49px" />
            <asp:Label ID="lblerror" runat="server" Style="z-index: 107; left: 20px; position: absolute;
                top: 205px" Text="رمز ورود  معتبر نیست" ForeColor="Red" Visible="False" Width="119px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="*" Style="z-index: 108; left: 2px; position: absolute; top: 82px" Width="1px"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*" Style="z-index: 109; left: 2px; position: absolute; top: 52px" Width="1px"></asp:RequiredFieldValidator>
                <asp:Panel ID="Panel1" runat="server" Height="25px" Style="z-index: 111; left: 3px;
                    position: absolute; top: 3px" Width="141px" BackColor="MidnightBlue"><asp:Label ID="lbllogin" runat="server" Style="z-index: 101; left: 51px; position: absolute;
                top: 0px" Text="ورود کاربر" Width="61px" Font-Bold="True" ForeColor="White"></asp:Label>
                </asp:Panel>
                &nbsp;
            </asp:Panel>
            </asp:Content>
            <asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" ID="conmm" runat ="server" >
                &nbsp;
                <asp:Panel ID="Panel3" runat="server" BackColor="#B0C4EB" Height="108px" Style="z-index: 100;
                    left: 647px; position: absolute; top: -9px" Width="149px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="MidnightBlue" Height="26px" HorizontalAlign="Center"
                        Style="z-index: 100; left: 0px; position: absolute; top: 2px" Width="147px">
                        <span style="color: #ffffff">نیازمندیها</span></asp:Panel>
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#004040" NavigateUrl="~/bookschool.aspx"
                        Style="z-index: 102; left: 57px; position: absolute; top: 37px">ثبت نام</asp:HyperLink>
                </asp:Panel>
                <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 678px; position: absolute;
                    top: 178px" Visible="False"></asp:Label>
            
            </asp:Content>
            
       
        
    
    