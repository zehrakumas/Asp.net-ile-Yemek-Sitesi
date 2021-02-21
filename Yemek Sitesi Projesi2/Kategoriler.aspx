<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.Kategoriler" %>
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
            width: 25px;
        }
        .auto-style19 {
            background-color: #CCCCCC;
            width: 65px;
        }
        .auto-style21 {
            background-color: #CCCCCC;
            width: 62px;
        }
        .auto-style22 {
            background-color: #CCCCCC;
            width: 61px;
        }
        .auto-style23 {
            background-color: #CCCCCC;
            width: 59px;
        }
        .auto-style24 {
            background-color: #CCCCCC;
            width: 55px;
        }
        .auto-style25 {
            background-color: #CCCCCC;
            width: 44px;
        }
        .auto-style26 {
            background-color: #CCCCCC;
            width: 12px;
        }
        .auto-style27 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" />
                    </strong></td>
                <td class="auto-style18">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" style="font-size: x-large" />
                </td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataListKategori" runat="server" Width="447px" Height="223px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                           <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style14">
                            <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image3" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" CssClass="auto-style27" Height="40px" Width="448px">
        <table class="auto-style10">
            <tr>
                <td class="auto-style26"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" style="font-size: x-large; font-weight: bold" />
                    </strong></td>
                <td class="auto-style19">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" style="font-size: x-large" />
                </td>
                <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>KATEGORİEKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style10">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style24" Text="Ekle" Width="56px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
