<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    </div>
    <div><strong>&nbsp; HAKKIMIZDA</strong></div>
    <div>
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div class="auto-style5">
    <asp:DataList ID="DataListHakkimizda" runat="server" Width="446px" OnSelectedIndexChanged="DataListHakkimizda_SelectedIndexChanged1">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div>
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/resimler/blog.jpg" Width="448px" />
</asp:Content>
