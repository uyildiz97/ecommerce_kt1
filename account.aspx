<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="eshop_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">  
    <nav class="navbar">
    <h2><asp:Label ID="LabelWelcome" runat="server" title="">Hoşgeldin, </asp:Label>
        <asp:Label ID="Label1" runat="server" title=""></asp:Label>
    
      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Çıkış" CssClass="btn btn-secondary-xl pull-right" /></h2></nav>
    <div class="btn btn-block btn-default btn-outline-primary" id="flip"> Kapatmak için dokunun/tıklayın.</div>        
    <div class="jumbotron"id="panel">
    <h2>Şifre Değiştir</h2>
    <table class="w-100">
        <tr>
            <td>Şifre</td>
            <td> <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şifre Onayla</td>
            <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
                <br />
            <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-success outline-light btn-block" OnClick="Button1_Click" />
                </div>
            <script> 
$(document).ready(function(){
    $("#flip").click(function () {
    $("#panel").slideToggle("slow");
  });
});
</script>
</asp:Content>

