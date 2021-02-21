<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: medium;
            background-color: #FF9933;
        }
        .auto-style10 {
            text-align: right;
            width: 140px;
        }
        .auto-style11 {
            width: 140px;
        }
        .auto-style12 {
            text-align: center;
            color: #FF9933;
            background-color: #FF9933;
        }
        .auto-style13 {
            text-decoration: underline;
            color: #000000;
        }
        .auto-style14 {
            background-color: #FF9966;
        }
        .auto-style15 {
            width: 294px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style12" colspan="2"><span class="auto-style13"><strong>MESAJ PANELİ<br />
                </strong></span>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Ad Soyad:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Width="200px" BackColor="White" BorderColor="Black" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail Adresiniz:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Width="200px" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Konu:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Width="200px" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mesaj:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="100px" TextMode="MultiLine" Width="200px" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style9" Font-Bold="True" Height="40px" Text="Gönder" Width="106px" background="linear-gradient(to top, #63B8EE, #468CCF)" BorderColor="Black" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
