<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="tarifler.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style19 {
            background-color: #CCCCCC;
            width: 44px;
        }
        .auto-style18 {
            background-color: #CCCCCC;
            width: 36px;
        }
        
        .auto-style15 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 392px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style19" __designer:mapid="2"><strong __designer:mapid="3">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click"   />
                </strong></td>
            <td class="auto-style18" __designer:mapid="5">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" style="font-size: x-large" OnClick="Button2_Click"  />
            </td>
            <td class="auto-style15" __designer:mapid="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> ONAYSIZ TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataListOneri" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14"><a href="tariflerdetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                            <asp:Image ID="Image4" runat="server" Height="28px" ImageUrl="~/iconlar/proposal.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <table class="auto-style10" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style19" __designer:mapid="2"><strong __designer:mapid="3">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button3_Click"   />
                </strong></td>
            <td class="auto-style18" __designer:mapid="5">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Font-Bold="True" Height="30px" Text="-" Width="30px" style="font-size: x-large" OnClick="Button4_Click"  />
            </td>
            <td class="auto-style15" __designer:mapid="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ONAYLI TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataListOneri0" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14"><a href="tariflerdetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                            <asp:Image ID="Image5" runat="server" Height="28px" ImageUrl="~/iconlar/proposal.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
