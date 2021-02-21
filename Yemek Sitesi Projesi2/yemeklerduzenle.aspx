<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yemeklerduzenle.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.yemeklerduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            margin-left: 80px;
        }
        .auto-style16 {
            text-align: right;
            width: 129px;
        }
        .auto-style17 {
            width: 129px;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style19 {
            text-align: left;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Malzemeler:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Tarif:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Kategori id:</strong></td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style18" OnClick="Button1_Click" Text="Güncelle" Width="154px" Height="29px" />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="29px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="154px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
