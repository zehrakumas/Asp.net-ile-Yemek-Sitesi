<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       /* .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
            width: 99px;
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: right;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style11 {
            text-align: right;
            height: 90px;
        }
        .auto-style12 {
            height: 90px;
            margin-left: 40px;
        }*/
   /*     .auto-style8 {
            width: 4711px;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            margin-left: 30px;
        }
        .auto-style11 {
            height: 20px;
            width: 671px;
        }*/
    /*    .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            text-align: left;
            height: 26px;
        }*/
        
    .auto-style9 {
        width: 169px;
    }
    .auto-style10 {
        width: 170px;
    }
    .auto-style11 {
        width: 171px;
    }
    .auto-style12 {
        width: 176px;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12"><strong>Tarif Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style9"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;<strong>Malzemeler:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="auto-style10" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yapılışı:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtYapilisi" runat="server" Height="200px" TextMode="MultiLine" Width="250px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Resim:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" BorderColor="Black" BorderStyle="Solid" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail Adresi:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Font-Bold="True" Font-Italic="False" Height="40px" Text="Tarif Öner" Width="150px" OnClick="Button1_Click" BorderColor="Black" Font-Size="14pt" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
