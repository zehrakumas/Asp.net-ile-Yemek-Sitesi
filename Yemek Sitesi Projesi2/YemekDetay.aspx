<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            color: #FF9933;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            background-color: #FF9933;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
            width: 150px;
            text-align: right;
        }
        .auto-style13 {
            width: 150px;
        }
        .auto-style14 {
            background-color: #FF9933;
            text-align: center;
        }
        .auto-style15 {
            width: 150px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Font-Size="XX-Large" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="YemekDetayDataList" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style9">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label7" runat="server" Font-Size="X-Small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style14"><strong>YORUM YAPMA PANELİ</strong></div>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style15"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style12"><strong>Mail: </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style15"><strong>Yorumunuz: </strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style10" Font-Bold="True" Font-Size="12pt" Height="34px" OnClick="Button1_Click" Text="Yorum Yap" Width="104px" />
                    </strong></td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>
