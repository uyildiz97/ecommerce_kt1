<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="table">
        <tr>
            <td class="auto-style1">Ad 
                <br />
                <asp:TextBox ID="TextBox3" runat="server" required CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Soyad<br />
            <asp:TextBox ID="TextBox4" runat="server" required CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">Doğum Tarihi<br />
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kullanıcı Adı (Cep Telefonu)<br />
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Phone" required MaxLength="10" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şifre<br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres<br />
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" required CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Şehir<br />
                <asp:TextBox ID="TextBox7" runat="server" required></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block bg-success" Text="Kayıt Ol" OnClick="Button1_Click" />
    <br />
</asp:Content>

