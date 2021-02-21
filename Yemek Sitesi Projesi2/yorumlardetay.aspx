<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlardetay.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.yorumlardetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        margin-left: 40px;
    }
    .auto-style16 {
        font-weight: bold;
    }
    .auto-style17 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Mail Adresi:</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">İçerik:</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Yemek:</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style15"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style16" OnClick="Button1_Click" Text="Onayla" Width="167px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
