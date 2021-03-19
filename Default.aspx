<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">  
    <div>

            Adınız Soyadınız <br />
            <asp:TextBox ID="TextName" runat="server" Width="261px" CssClass="form form-control-lg" required="Required"></asp:TextBox>
            <br />
            E-mail<br />
            <asp:TextBox ID="TextEmail" runat="server" Width="263px" CssClass="form form-control-lg" required="Required"></asp:TextBox>
            <br />
            Telefon<br />
            <asp:TextBox ID="TextPhone" runat="server" Width="266px" CssClass="form form-control-lg" required="Required" MaxLength="13" TextMode="Phone">+90</asp:TextBox>
            <br />
            Adres<br />
            <asp:TextBox ID="TextAdres" runat="server" Width="266px" CssClass="form form-control-lg" required="Required" TextMode="MultiLine"></asp:TextBox>
            <br />
            Siparişiniz<br />
            
            <asp:TextBox ID="TextMessage" runat="server" Height="123px" Width="361px" TextMode="MultiLine" Required="Required"></asp:TextBox>
            
            <br />
            
            <br />
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="Gönder"  OnClick="Button1_Click1" CssClass="btn btn-block btn-outline-success" />

        </div>
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    </asp:Content>




