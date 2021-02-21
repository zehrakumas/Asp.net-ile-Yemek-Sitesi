<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style15 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 245px;
        }
        .auto-style16 {
            width: 187px;
        }
        .auto-style18 {
            background-color: #CCCCCC;
            width: 36px;
        }
        .auto-style19 {
            background-color: #CCCCCC;
            width: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" __designer:mapid="0">
            <tr __designer:mapid="1">
                <td class="auto-style19" __designer:mapid="2"><strong __designer:mapid="3">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style18" __designer:mapid="5">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" style="font-size: x-large" OnClick="Button2_Click" />
                </td>
                <td class="auto-style15" __designer:mapid="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>ONAYLANAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataListYorum" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style14">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                            </td>
                            <td class="auto-style14">
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/refresh.png" Width="30px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
<br />
       <table class="auto-style10" __designer:mapid="0">
            <tr __designer:mapid="1">
                <td class="auto-style19" __designer:mapid="2"><strong __designer:mapid="3">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style18" __designer:mapid="5">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" style="font-size: x-large" OnClick="Button4_Click" />
                </td>
                <td class="auto-style15" __designer:mapid="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>ONAYLANMAYAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataListYorum2" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style14">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                            </td>
                            <td class="auto-style14">
                               <a href="yorumlardetay.aspx?Yorumid=<%#Eval("Yorumid") %>" ><asp:Image ID="Image3" runat="server" CssClass="auto-style16" Height="30px" ImageUrl="~/iconlar/refresh.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
&nbsp;
</asp:Content>
