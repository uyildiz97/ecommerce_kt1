<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eshop.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Alışveriş Yap | Kütahya Konak Tarhana</title>
      <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
  $("#eristesil").click(function(){
    $("#eriste").remove();
  });
  $("#acilisil").click(function(){
      $("#acili").remove();
  });
 $("#acisizsil").click(function(){
    $("#acisiz").remove();
  });
});
</script>
  <script>
$(document).ready(function(){
    $("#btn1").click(function () {
        $("#sepet").append("<tr id='acisiz'><td>Acısız Tarhana</td><td>111111</td><td><p>Fiyat: 34,90 TL </p></td><td><button type='button' onclick='acisizsil' class='btn btn-danger'>Çıkart</button></td></tr>");
        this.click = false;
        alert("Ürün sepete eklendi.");
  });

  $("#btn2").click(function(){
      $("#sepet").append("<tr id='acili'><td><b>Acılı </b>Tarhana</td><td>111112</td><td><p>Fiyat: 34,90 TL </p></td><td><a id='acilisil' class='btn btn-danger'>Çıkart</button></td></tr>");
      alert("Ürün sepete eklendi.");
  });
    $("#btn3").click(function(){
        $("#sepet").append("<tr id='eriste'><td>Erişte <b>(1kg)</b></td><td>111113</td><td><p>Fiyat: 34,90 TL </p></td><td><button type='button' id='eristesil' class='btn btn-danger'>Çıkart</button></td></tr>");
        alert("Ürün sepete eklendi.");
  });
});
</script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">E-shop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="btn btn-link btn-block btn-lg bg-light" href="#">Ana Sayfa <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="btn btn-link btn-block btn-lg bg-light" href="#cokSatanlar">Çok Satanlar</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Ben
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="account.aspx">Profilim</a>
          <div class="dropdown-divider"></div>
            <asp:Button ID="buttonLogout" runat="server" Text="Çıkış Yap" CssClass="dropdown-item" OnClick="buttonLogout_Click" />
        </div>
      </li>
    </ul>
      <button type="button" class="btn btn-outline-success btn-xl bg-default pull-right" data-toggle="modal" data-target="#myModal">Sepet</button>&nbsp
  </div>
</nav>
        
        
<div class="jumbotron text-center">
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://n11scdn1.akamaized.net/a1/1024/02/95/06/40/24493202.jpg" class="img-fluid" alt="Acısız Tarhana" width="1100" height="500" />
      <div class="carousel-caption">
        <h3 style="color:black;">Acısız Tarhana</h3>
        <a href="#acisizList" class="btn btn-primary">Sepete Ekle</a>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://n11scdn1.akamaized.net/a1/1024/02/95/06/40/24493202.jpg" class="img-fluid" alt="Acılı Tarhana" width="1100" height="500" />
      <div class="carousel-caption">
        <h3 style="color:black;">Acılı Tarhana</h3><sup><i style="color:black;">Baharat sevenlere özel</i></sup><p></p>
        <a href="#aciliList" class="btn btn-primary">Sepete Ekle</a>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://n11scdn1.akamaized.net/a1/1024/02/95/06/40/24493202.jpg" class="img-fluid" alt="Erişte" width="1100" height="500" />
      <div class="carousel-caption">
        <h3 style="color:black;">Kütahya' nın leziz eriştesi...</h3>
        <button class="btn btn-primary">Sepete Ekle</button>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

</div>
        <div class="jumbotron bg-light">

            <h3 style="text-align:center">Tüm Ürünler</h3>
                <table class="table table-bordered">
        <tr>
            <td><h3>Ürün Adı</h3></td>
            <td><h3>Ürün Açıklaması</h3></td>
            <td><h3>Fiyatı</h3></td>
            <td><h3>Sepete Ekle</h3></td>
        </tr>
        <tr>
            <td><h4 style="text-align:center">Acısız Tarhana</h4></td>
            <td><h5 style="text-align:center">Acısız Kütahya Tarhanası</h5></td>
            <td><h4 style="text-align:center"> 34,90 ₺</h4></td>
                 <td> 
                     <div class="button btn-group-lg align-content-center" id="acisizList">
                         <button type="button" id="btn1" class="btn btn-info">Sepete Ekle</button>
                         <a id="acisizsil" class="btn btn-danger">Çıkart</a>
                     </div></td>
        
        </tr>
        <tr>
            <td><h4 style="text-align:center">Acılı Tarhana</h4></td>
            <td><h5 style="text-align:center">Acılı Kütahya Tarhanası</h5></td>
            <td><h4 style="text-align:center"> 34,90 ₺ </h4></td>
            <td><div class="button btn-group-lg align-content-center" id="aciliList">
                         <button type="button" id="btn2" class="btn btn-info" data-toggle="button" aria-pressed="false">Sepete Ekle</button>
                <a id="acilisil" class="btn btn-danger">Çıkart</a>
                </div></td>
        
        </tr>
        <tr>
            <td><h4 style="text-align:center">Erişte</h4></td>
            <td><h5 style="text-align:center">Leziz erişte...</h5></td>
            <td><h4 style="text-align:center"> 34,90 ₺</h4></td>
            <td>
                <div class="button btn-group-lg align-content-center" id="eristeList">
                         <button type="button" id="btn3" class="btn btn-info">Sepete Ekle</button>
                    <a id="eristesil" class="btn btn-danger">Çıkart</a>
                </div>
            </td>
        </tr>
    </table>
            <button type="button" class="btn btn-outline-success btn-block" data-toggle="modal" data-target="#myModal">Sepeti Görüntülemek için Tıklayın</button>&nbsp
        </div>


  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Sepetiniz</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <table class="table table-bordered" id="sepet">
    <thead>
      <tr>
        <th>Ürün Adı</th>
        <th>Barkod</th>
        <th>Fiyatı</th>
        <th>#</th>
      </tr>
    </thead>
    <tbody>

    </tbody>
  </table>
            <asp:Button ID="btnPayment" runat="server" Text="Ödeme Yap" PostBackUrl="~/payment.aspx" CssClass="btn btn-success btn-block" />
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
        </div>
        
      </div>
    </div>
  </div>
<div class="container mt-3" id="cokSatanlar">
    <h4>Çok Satanlar</h4>
  <a class="navbar-brand" href="#">Arama Yap</a> 
        <input class="form-control mr-sm-2" id="myInput" type="text" placeholder="Ara"/>

  <br />
  <div class="jumbotron" id="myList">
    <div class="col-sm-4">
        <asp:image runat="server" ID="image1" CssClass="img-fluid" ImageUrl="~/img/0.jpg" ></asp:image>
      <h3>Acısız Tarhana</h3>
      <p>Kütahya' nın eşsiz lezzetli acısız tarhanası...</p>
      <p>Fiyat: 34,90 TL </p>
        <a class="btn-info btn-lg" href="#acisizList">Ürünü incelemek için tıklayın</a>
    </div>
              <div class="col-sm-4">
        <asp:image runat="server" ID="image2" CssClass="img-fluid" ImageUrl="~/img/0.jpg" ></asp:image>
      <h3>Acılı Tarhana</h3>
      <p>Acılı, baharatlı şifa deposu Kütahya tarhanası...</p>
      <p>Fiyat: 34,90 TL </p>
<a class="btn-info btn-lg" href="#aciliList">Ürünü incelemek için tıklayın</a>
    </div>
          <div class="col-sm-4">
        <asp:image runat="server" ID="image3" CssClass="img-fluid" ImageUrl="~/img/0.jpg" ></asp:image>
      <h3>Erişte</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Fiyat: 34,90 TL </p>
<a class="btn-info btn-lg" href="#eristeList">Ürünü incelemek için tıklayın</a>
              <br />
              <asp:Button ID="Button1" runat="server" CssClass="btn-success" OnClick="Button1_Click" OnClientClick="id3" Text="Button" />
    </div>
</div>
    </div>
        
    </form>
</body>
    <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myList div").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</html>
