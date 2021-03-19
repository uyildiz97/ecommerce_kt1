<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="eshop_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Table ID="Table1" runat="server"></asp:Table>   </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="btn btn-block btn-default btn-outline-primary" id="flip"> Kapatmak için dokunun/tıklayın.</div>        
  <div class="jumbotron"id="panel">  <table class="w-100">
        <tr>
            <td class="auto-style1">Kart Üzerindeki İsim</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kart No</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" MaxLength="16" TabIndex="1" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CCV</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" MaxLength="3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Son Kullanma Tarihi</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-selec">
                    <asp:ListItem Selected="True">01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>&nbsp
                <asp:TextBox ID="TextBox8" runat="server" MaxLength="4" Width="60px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btn-default btn-block outline-success bg-default" Text="Ödeme Yap" />
            </td>
        </tr>
    </table></div>
    <script> 
$(document).ready(function(){
    $("#flip").click(function () {
    $("#panel").slideToggle("slow");
  });
});
</script>
</asp:Content>

