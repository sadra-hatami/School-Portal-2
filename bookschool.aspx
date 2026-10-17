<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookschool.aspx.cs" Theme ="blue"  Inherits="bookschool" MasterPageFile ="~/MasterPage2.master" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" ID ="con1" runat ="server">
    <asp:Panel ID="Panel1" runat="server" Height="354px" Width="626px" BackColor="#9ACBA7" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" DefaultButton="button1" style="left: -372px; top: 166px">
     
    
                            <asp:TextBox style="z-index: 100; left: 416px; position: absolute; top: 85px;" runat ="server" id="txtnamesch" Width="78px"></asp:TextBox>
                            <asp:DropDownList id="dr2" runat="server" style="z-index: 101; left: 226px; position: absolute;
                    top: 86px" DataSourceID="SqlDataSource1" DataTextField="namecity" DataValueField="namecity">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString2 %>" SelectCommand="SELECT distinct( [namecity]) FROM [tblschool]"></asp:SqlDataSource>
                            <asp:Label ID="Label7" runat="server" style="z-index: 102; left: 438px; position: absolute; top: 41px" Text="مقایسه ها بر اساس" Width="121px"></asp:Label>
                            <asp:RadioButtonList id="r2" runat="server" style="z-index: 103; left: 390px; position: absolute;
                    top: 26px" Width="42px">
                                <asp:ListItem Selected="True" Value="or">یا</asp:ListItem>
                                <asp:ListItem Value="and">و</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:DropDownList style="z-index: 104; left: 51px; position: absolute; top: 86px" Font-Bold="False" ID="dr1" runat="server">
                                <asp:ListItem Value="1">ابتدایی</asp:ListItem>
                                <asp:ListItem Value="2">راهنمایی</asp:ListItem>
                                <asp:ListItem Value="3" Selected="True">دبیرستان</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox style="z-index: 105; left: 250px; position: absolute; top: 151px" ID="txtaddress" runat="server" Width="269px"></asp:TextBox>
                            <asp:TextBox id="txtarea" runat="server" style="z-index: 106; left: 118px; position: absolute;
                    top: 149px" Width="24px" MaxLength="2"></asp:TextBox>
                            <asp:TextBox id="txtnameman" runat="server" style="z-index: 107; left: 352px;
                    position: absolute; top: 219px"></asp:TextBox>
                            <asp:Label id="Label1" runat="server" style="z-index: 108; left: 505px; position: absolute;
                    top: 84px" Text="نام مدرسه" Width="59px"></asp:Label>
                            <asp:Label id="Label2" runat="server" style="z-index: 109; left: 141px; position: absolute;
                    top: 85px" Text="پایه"></asp:Label>
                            <asp:Label id="Label3" runat="server" style="z-index: 110; left: 321px; position: absolute;
                    top: 84px" Text="نام شهر"></asp:Label>
                            <asp:Label id="Label4" runat="server" style="z-index: 111; left: 532px; position: absolute;
                    top: 149px" Text="ادرس"></asp:Label>
                            <asp:Label id="Label5" runat="server" style="z-index: 112; left: 154px; position: absolute;
                    top: 137px" Text="منطقه"></asp:Label>
                            <asp:Label id="Label6" runat="server" style="z-index: 113; left: 518px; position: absolute;
                    top: 217px" Text="نام مدیر"></asp:Label>
                            <asp:Button id="Button1" runat="server" SkinID="btn1"
                                OnClick="Button1_Click" style="z-index: 114; left: 54px; position: absolute;
                                top: 269px" Text="جستجو" Width="47px" />
                            <asp:RadioButtonList ID="r1" runat="server" Style="z-index: 115; left: 52px;
                position: absolute; top: 194px">
                                <asp:ListItem Value="1">دخترانه</asp:ListItem>
                                <asp:ListItem Selected="True" Value="0">پسرانه</asp:ListItem>
                            </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Style="z-index: 116; left: 267px; position: absolute;
            top: 217px" Text="نام معلم"></asp:Label>
        <asp:TextBox ID="txtteacher" runat="server" Style="z-index: 117; left: 158px; position: absolute;
            top: 219px" Width="95px"></asp:TextBox>
        &nbsp;
        <asp:Panel ID="Panel2" runat="server" Height="129px" Width="626px" style="z-index: 118; left: 3px; position: absolute; top: 311px; border-top-color :Blue;border-top-style:solid ; " ScrollBars="Both" Visible="False"  BorderWidth="1px" BackColor="White">
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 118;  position: absolute;
               " CellPadding="4" ForeColor="#333333" GridLines="Vertical" Width="710px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="مدرسه ای با چنین مشخصات وجود ندارد" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-VerticalAlign="Middle" EmptyDataRowStyle-Width="5cm" EmptyDataRowStyle-Height="3cm" EmptyDataRowStyle-BorderStyle="Solid" EmptyDataRowStyle-BorderWidth="1">
                                <footerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
                                <columns>
                        <asp:ButtonField ButtonType="Button" Text="ثبت نام" ></asp:ButtonField>
                    </columns>
                                <rowstyle backcolor="#E3EAEB" />
                                <editrowstyle backcolor="#7C6F57" />
                                <selectedrowstyle backcolor="#C5BBAF" font-bold="True" forecolor="#333333" />
                                <pagerstyle backcolor="#666666" forecolor="White" horizontalalign="Center" />
                                <headerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
                                <alternatingrowstyle backcolor="White" />
                            </asp:GridView>
        </asp:Panel>
        <asp:Button ID="Button2" SkinID ="btn1"  runat="server" Style="z-index: 120; left: 135px; position: absolute;
            top: 269px" Text="بازگشت" Width="49px" OnClick="Button2_Click" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>"
            SelectCommand="SELECT tblschool.ns, tblschool.nm, tblschool.s, tblschool.address, tblschool.area, tblschool.tel, tblschool.namecity FROM tblteacher INNER JOIN tblschool ON tblteacher.id_school = tblschool.id">
        </asp:SqlDataSource>
    </asp:Panel>
                            
      
        
                
    </asp:content>
