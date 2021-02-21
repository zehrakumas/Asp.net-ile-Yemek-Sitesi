<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yemekler.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    /*.auto-style13 {
        text-align: left;
        width: 264px;
    }
    .auto-style14 {
        text-align: right;
    }
    .auto-style15 {
        font-size: large;
    }
    .auto-style16 {
        background-color: #FFFFFF;
    }
    .auto-style19 {
        width: 58px;
            background-color: #CCCCCC;
        }
    .auto-style20 {
        width: 38px;
            background-color: #CCCCCC;
        }
    .auto-style21 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style22 {
        font-weight: normal;
        font-size: large;
    }
        .auto-style23 {
            background-color: #CCCCCC;
        }
        .auto-style24 {
            background-color: #CCCCCC;
            font-weight: bold;
        }*/
        .auto-style15 {
            background-color: #CCCCCC;
        }
        .auto-style16 {
            width: 187px;
        }
        .auto-style17 {
            width: 245px;
        }
        .auto-style18 {
            background-color: #CCCCCC;
            width: 50px;
        }
        .auto-style21 {
            background-color: #CCCCCC;
            width: 60px;
        }
        .auto-style22 {
            background-color: #CCCCCC;
            width: 59px;
        }
        .auto-style23 {
            background-color: #CCCCCC;
            width: 58px;
        }
        .auto-style25 {
            background-color: #CCCCCC;
            width: 40px;
        }
        .auto-style26 {
            background-color: #CCCCCC;
            width: 59px;
            margin-left: 0px;
        }
        .auto-style29 {
            margin-top: 3px;
        }
        .auto-style31 {
            background-color: #CCCCCC;
            width: 17px;
        }
        .auto-style33 {
            background-color: #CCCCCC;
            width: 12px;
        }
        .auto-style34 {
            text-align: center;
            width: 335px;
        }
        .auto-style35 {
            background-color: #CCCCCC;
            font-weight: bold;
        }
        .auto-style36 {
            height: 110px;
        }
        .auto-style37 {
            width: 350px;
        }
        .auto-style38 {
            height: 110px;
            width: 335px;
        }
        .auto-style39 {
            width: 335px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px"  Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style18">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px"  Text="-" Width="30px" style="font-size: x-large" OnClick="Button2_Click" />
                </td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                           <a href="yemekler.aspx?Yemekid=<%# Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style14">
                        <a href="yemeklerduzenle.aspx?Yemekid=<%# Eval("Yemekid")%>"><asp:Image ID="Image3" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" CssClass="auto-style29">
        <table class="auto-style10">
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px"  style="font-size: x-large; font-weight: bold" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style33">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" style="font-size: x-large" />
                </td>
                <td class="auto-style23">&nbsp;&nbsp;<strong>YEMEKEKLEME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style10">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Adı:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">Malzemeler:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarif:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori:</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style35" Height="36px"  Text="Ekle" Width="133px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
