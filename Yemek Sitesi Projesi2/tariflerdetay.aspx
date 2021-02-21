<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="tariflerdetay.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.tariflerdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            font-weight: bold;
        }
        .auto-style17 {
            height: 23px;
            text-align: right;
        }
        .auto-style18 {
            text-align: right;
        }
        .auto-style19 {
            height: 23px;
            text-align: left;
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
            <td class="auto-style18"><strong>Tarif Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Yapılış:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="170px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Tarif Resim:</strong></td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Öneren Mail:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Kategori:</strong></td>
            <td class="auto-style19">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px" OnClick="Button1_Click" Text="Onayla" Width="167px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
