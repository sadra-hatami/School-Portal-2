<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Step2.aspx.cs" Inherits="sss" MaintainScrollPositionOnPostback ="false" MasterPageFile ="~/MasterPage2.master"  %>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" ID="con1">

        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 266px; position: absolute;
            top: 372px" Text="ثبت" Font-Bold="True" Font-Names="B Nazanin" Font-Size="X-Large" Height="45px" Width="67px" OnClick="Button1_Click" />
        <div  visible ="false" style="text-align: right">
            
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                <asp:View ID="View1" runat="server">
                    &nbsp;
                    <table style="z-index: 104; left: 96px;border-color :white  ;position: absolute; top: 47px; width: 434px; height: 50px; background-color: #99ccff;" border="1">
                        <caption style="font-size: large; color: #ffffff; background-color: #333399">
                            جدول ورود ظرفیت راهنمایی</caption>
                        <tr>
                            <td style="width: 100px; height: 50px;">
                                <asp:Label ID="Label17" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                                    top: 50px" Text="سوم راهنمایی" Width="77px"></asp:Label>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtthree"
                                    ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 4px;
                                    position: absolute; top: 54px" Type="Integer"></asp:RangeValidator>
                                <asp:TextBox ID="txtthree" runat="server" Style="z-index: 102; left: 26px; position: absolute;
                                    top: 50px" Width="25px" ValidationGroup="g1">0</asp:TextBox>
                            </td>
                            <td style="width: 100px; height: 50px;">
                                <asp:Label ID="Label16" runat="server" Style="z-index: 100; left: 206px; position: absolute;
                                    top: 50px" Text="دوم راهنمایی" Width="74px"></asp:Label>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txttwo"
                                    ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 147px;
                                    position: absolute; top: 52px" Type="Integer"></asp:RangeValidator>
                                <asp:TextBox ID="txttwo" runat="server" Style="z-index: 102; left: 167px; position: absolute;
                                    top: 50px" Width="25px" ValidationGroup="g1">0</asp:TextBox>
                            </td>
                            <td style="width: 100px; height: 50px;">
                                <asp:Label ID="Label15" runat="server" Style="z-index: 100; left: 351px; position: absolute;
                                    top: 50px" Text="اول راهنمایی" Width="72px"></asp:Label>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtone"
                                    ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 293px;
                                    position: absolute; top: 53px" Type="Integer"></asp:RangeValidator>
                                <asp:TextBox ID="txtone" runat="server" Style="z-index: 102; left: 315px; position: absolute;
                                    top: 50px" Width="25px" ValidationGroup="g1">0</asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    &nbsp; &nbsp;
                
                </asp:View>
                <asp:View ID="View2" runat="server">
                <table   style="z-index: 102; left: 45px; width: 543px; position: absolute; top: 45px;" border="1" cellspacing="0">
                <caption style="font-size: large; color: white; background-color: #333399">
                    جدول ورود ظرفیت</caption>
                <tr>
                    <td style="height: 50px; background-color: #c4e4ff;" colspan="3">
                        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 100; left: 415px; position: absolute;
                            top: 46px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 454px; position: absolute;
                            top: 46px" Text="اول دبیرستان" Width="76px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txttwoen" runat="server" Style="z-index: 100; left: 70px; position: absolute;
                            top: 100px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 109px; position: absolute;
                            top: 99px" Text="دوم انسانی" Width="66px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txttwoolom" runat="server" Style="z-index: 100; left: 254px; position: absolute;
                            top: 100px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 291px; position: absolute;
                            top: 100px" Text="دوم تجربی" Width="64px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txttwomath" runat="server" Style="z-index: 100; left: 432px; position: absolute;
                            top: 100px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 471px; position: absolute;
                            top: 100px" Text="دوم ریاضی" Width="61px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 50px; background-color: #c4e4ff;">
                        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 100; left: 67px; position: absolute;
                            top: 153px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="txttreen" runat="server" Style="z-index: 102; left: 105px; position: absolute;
                            top: 153px" Text="سوم انسانی" Width="68px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #c4e4ff;">
                        <asp:TextBox ID="txttreoolom" runat="server" Style="z-index: 100; left: 254px; position: absolute;
                            top: 153px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Style="z-index: 102; left: 292px; position: absolute;
                            top: 153px" Text="سوم تجربی" Width="63px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #c4e4ff;">
                        <asp:TextBox ID="txttremath" runat="server" Style="z-index: 100; left: 430px; position: absolute;
                            top: 153px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Style="z-index: 102; left: 468px; position: absolute;
                            top: 153px" Text="سوم ریاضی" Width="65px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txtfouren" runat="server" Style="z-index: 100; left: 13px; position: absolute;
                            top: 205px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label10" runat="server" Style="z-index: 102; left: 50px; position: absolute;
                            top: 205px" Text="انسانی پیش دانشگاهی" Width="125px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txtfourolom" runat="server" Style="z-index: 100; left: 192px; position: absolute;
                            top: 205px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Style="z-index: 102; left: 230px; position: absolute;
                            top: 205px" Text="تجربی پیش دانشگاهی" Width="126px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 50px; background-color: #f7fefb;">
                        <asp:TextBox ID="txtfourmath" runat="server" Style="z-index: 100; left: 375px; position: absolute;
                            top: 205px" Width="25px">0</asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Style="z-index: 102; left: 412px; position: absolute;
                            top: 205px" Text="ریاضی پیش دانشگاهی" Width="124px"></asp:Label>
                    </td>
                </tr>
            </table>
                </asp:View>
                <asp:View ID="View3" runat="server"><table style="z-index: 103; left: -16px; position: absolute; top: 35px; width: 657px;">
            <caption style="font-size: large; color: white; background-color: #333399">
                جدول&nbsp; ورود ظرفیت دبستان</caption>
            <tr>
                <td style="width: 104px; height: 50px; background-color: #99ccff;">
                    <asp:Label ID="Label14" runat="server" Style="z-index: 100; left: 57px; position: absolute;
                        top: 50px" Text="پنجم دبستان" Width="74px"></asp:Label>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtthree"
                        ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 4px;
                        position: absolute; top: 53px" Type="Integer"></asp:RangeValidator>
                    <asp:TextBox ID="txt5" runat="server" Style="z-index: 102; left: 20px; position: absolute;
                        top: 50px" Width="25px" OnTextChanged="TextBox7_TextChanged">0</asp:TextBox>
                </td>
                <td style="width: 106px; height: 50px; background-color: #99ccff;">
                    <asp:TextBox ID="txt4" runat="server" Style="z-index: 100; left: 149px; position: absolute;
                        top: 50px" Width="25px">0</asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtthree"
                        ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 102; left: 133px;
                        position: absolute; top: 51px" Type="Integer"></asp:RangeValidator>
                </td>
                <td style="width: 100px; height: 50px; background-color: #99ccff;">
                    <asp:Label ID="Label12" runat="server" Style="z-index: 100; left: 183px; position: absolute;
                        top: 50px" Text="چهارم دبستان" Width="82px"></asp:Label>
                    <asp:TextBox ID="txt3" runat="server" Style="z-index: 101; left: 286px; position: absolute;
                        top: 50px" Width="25px">0</asp:TextBox>
                    <asp:Label ID="Label13" runat="server" Style="z-index: 102; left: 322px; position: absolute;
                        top: 50px" Text="سوم دبستان" Width="70px"></asp:Label>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="txtthree"
                        ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 104; left: 272px;
                        position: absolute; top: 51px" Type="Integer"></asp:RangeValidator>
                </td>
                <td style="width: 104px; height: 50px; background-color: #99ccff;">
                    <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 457px; position: absolute;
                        top: 50px" Text="دوم دبستان" Width="66px"></asp:Label>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="txtthree"
                        ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 403px;
                        position: absolute; top: 53px" Type="Integer"></asp:RangeValidator>
                    <asp:TextBox ID="txt2" runat="server" Style="z-index: 102; left: 420px; position: absolute;
                        top: 50px" Width="25px">0</asp:TextBox>
                </td>
                <td style="width: 100px; height: 50px; background-color: #99ccff;">
                    <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 589px; position: absolute;
                        top: 51px" Text="اول دبستان" Width="63px"></asp:Label>
                    <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="txt5"
                        ErrorMessage="*" MaximumValue="1000" MinimumValue="0" Style="z-index: 103; left: 537px;
                        position: absolute; top: 54px" Type="Integer"></asp:RangeValidator>
                    <asp:TextBox ID="txt1" runat="server" Style="z-index: 102; left: 553px; position: absolute;
                        top: 51px" Width="25px">0</asp:TextBox>
                </td>
            </tr>
        </table>
                </asp:View>
            </asp:MultiView></div>
    
        <asp:Label ID="Label18" runat="server" ForeColor="Red" Style="z-index: 105; left: 214px;
            position: absolute; top: 338px" Text="باید تمام فیلد ها عدد باشد" Visible="False" Width="155px"></asp:Label>
    
</asp:Content>

