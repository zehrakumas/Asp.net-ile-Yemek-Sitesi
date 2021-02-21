<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="hakkımızdaadmin.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.hakkımızdaadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style25 {
            background-color: #CCCCCC;
            width: 44px;
        }
        .auto-style21 {
            background-color: #CCCCCC;
            width: 62px;
        }
        .auto-style18 {
            background-color: #CCCCCC;
            width: 25px;
        }
        .auto-style22 {
            background-color: #CCCCCC;
            width: 61px;
        }
        .auto-style15 {
            background-color: #CCCCCC;
        }
        .auto-style26 {
            width: 444px;
            margin-left: 80px;
        }
        .auto-style27 {
            font-weight: bold;
        }
        .auto-style28 {
            width: 444px;
            margin-left: 80px;
            text-align: right;
        }
        .auto-style29 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" __designer:mapid="115">
        <tr __designer:mapid="116">
            <td class="auto-style25" __designer:mapid="117"><strong __designer:mapid="118">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px"  Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style18" __designer:mapid="11a">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" style="font-size: x-large" OnClick="Button2_Click" />
            </td>
            <td class="auto-style15" __designer:mapid="11c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>HAKKIMIZDA</strong></td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style29" Height="320px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style27" Height="33px" OnClick="Button3_Click" Text="Güncelle" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
  <table>
      </table>
</asp:Content>
