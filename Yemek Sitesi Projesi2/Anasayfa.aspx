<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            background-color: #FF9933;
        }
        .auto-style11 {
            color: #FF9933;
        }
        .auto-style12 {
            margin-right: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataListAnasayfa" runat="server" CssClass="auto-style12" Width="447px">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>

                    <td><strong> <%--href ile label yönlendirme işlemi yaptık--%> 
                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text='<%# Eval("YemekAd") %>' ForeColor="#FF9933" CssClass="auto-style11"></asp:Label></a> 
                        </strong></td>

                </tr>
                <tr>
                    <td class="auto-style9"><strong>Malzemeler:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong>
                       
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                       
                        &nbsp;- <strong>Puan:</strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color:black"" class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
