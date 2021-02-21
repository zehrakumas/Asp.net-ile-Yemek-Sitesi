<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyegiris.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.uyegiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            text-align: right;
            width: 503px;
            background-color: #FFCC66;
        }
        .auto-style3 {
            text-align: right;
            width: 503px;
            height: 26px;
            background-color: #FFCC66;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style4 {
            width: 503px;
        }
        .auto-style5 {
            font-weight: bold;
            background-color: #FFCC66;
        }
        .auto-style10 {
            text-align: right;
            width: 501px;
            background-color: #FF9933;
        }
        .auto-style11 {
            width: 501px;
        }
        .auto-style9 {
            font-weight: bold;
            background-color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6"><strong>Kullanıcı Adı:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><strong>Kullanıcı Şifre:</strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td><strong>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="31px" Text="Giriş Yap" OnClick="Button1_Click" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Height="27px" OnClick="Button3_Click" Text="Üye Olmak İçin Tıklayınız..." Width="206px" />
                            </strong></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10"><strong>Üye Adı:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Üye Soyad:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Üye Mail:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Kullanıcı Adı:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Kullanıcı Şifre</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="34px" Text="Üye Ol" Width="85px" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
