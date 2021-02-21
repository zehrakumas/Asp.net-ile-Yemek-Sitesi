<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="gununyemegiadmin.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.gununyemegiadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style25 {
            background-color: #CCCCCC;
            width: 40px;
        }
        .auto-style21 {
            background-color: #CCCCCC;
            width: 60px;
        }
        .auto-style18 {
            background-color: #CCCCCC;
            width: 50px;
        }
        .auto-style22 {
            background-color: #CCCCCC;
            width: 59px;
        }
        .auto-style15 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 323px;
        }
        .auto-style26 {
        color: #000000;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" __designer:mapid="153">
    <tr __designer:mapid="154">
        <td class="auto-style25" __designer:mapid="155"><strong __designer:mapid="156">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px"  Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click" />
            </strong></td>
        <td class="auto-style18" __designer:mapid="158">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px"  Text="-" Width="30px" style="font-size: x-large" OnClick="Button2_Click" />
        </td>
        <td class="auto-style15" __designer:mapid="15a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong __designer:mapid="15b">YEMEK LİSTESİ</strong></td>
    </tr>
</table>
<asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style26">
                      <a href="yemeklerduzenle.aspx?Yemekid=<%# Eval("Yemekid")%>">  <asp:Image ID="Image4" runat="server" ImageUrl="~/iconlar/chose.png" Width="30px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
