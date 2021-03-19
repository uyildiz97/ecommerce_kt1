<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Kütahya Konak Tarhana</title>
    
</head>
<body style="height:1500px" class="img-fluid">
    <form id="form1" runat="server">
        

              <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
                  <canvas id="canvas" width="100" height="100"></canvas>
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <button type="button" class="navbar-brand btn btn-outline-success" data-toggle="modal" data-target="#myModal"> Kullanıcı Girişi</button>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../Default.aspx">Ana Sayfa <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="eshop.aspx">Alışveriş Yap</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Çıkış Yap</a>
      </li>
    </ul>
    
  </div>
</nav>
                   
     <div class="container" style="margin-top:80px">
  <h2 class="align-content-center">Bu Sayfaya Devam Etmek İçin Lütfen <u><a href="" data-toggle="modal" data-target="#myModal">Oturum Açınız.</a></u></h2>&nbsp
         <button type="button" class="navbar-brand btn btn btn-outline-light btn-block bg-primary" data-toggle="modal" data-target="#myModal"> Kullanıcı Girişi</button>&nbsp
  <br>
  
      
         <h3><i><a href="#kayitOl"> Eğer kayıtlı değilseniz </i></h3></a>
         
  <!-- Tab panes -->
  <div class="tab-content">
    <div id="kayitOl" class="container tab-pane active"><br>
      <h3 class="modal-dialog-scrollable">Sizi tanıyalım</h3>
       <iframe width="1000" height="800" src="Register.aspx" class="jumbotron" >

       </iframe>
 
        
    </div>
 

  </div>
</div>   
 <!--SEARCH BAR 
    <nav class="navbar fixed-bottom navbar-light bg-faded bg-light img-thumbnail">
  <a class="navbar-brand" href="#">Arama Yap</a>
        <input class="form-control mr-sm-2" type="text" placeholder="Ara"/>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Ara</button>
        </nav>
       ARAMA DÜZENEĞİ-->

    <!-- Login Modal -->
                          <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Kullanıcı Girişi</h4>
                    <button class="close" data-dismiss="modal" type="button">×</button>
                </div>
                <div class="modal-body">
                    <asp:FormView>
                    <p>Kullanıcı Adı </p>
                <asp:TextBox ID="TextBoxUser" runat="server" TextMode="Phone" CssClass="form-control mr-sm-2"></asp:TextBox>&nbsp
                    <p>Şifre</p>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control mr-sm-2" PostBackUrl="payment.aspx"></asp:TextBox>    
                    &nbsp
                    <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="btn btn-block btn-outline-success"  OnClick="Button1_Click"  />   
                    </asp:FormView>
         </div>
                                
                <div class="modal-footer">
                    
                    <button class="btn btn-light" data-dismiss="modal" type="button">Kapat</button>
                </div>    
                </div>
        </div>
    </div>
    <!-- Giriş Penceresi -->
        </form>
    <script>
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(ctx, radius);
  drawNumbers(ctx, radius);
  drawTime(ctx, radius);
}

function drawFace(ctx, radius) {
  var grad;
  ctx.beginPath();
  ctx.arc(0, 0, radius, 0, 2*Math.PI);
  ctx.fillStyle = 'white';
  ctx.fill();
  grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
  grad.addColorStop(0, '#333');
  grad.addColorStop(0.5, 'white');
  grad.addColorStop(1, '#333');
  ctx.strokeStyle = grad;
  ctx.lineWidth = radius*0.1;
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
  ctx.fillStyle = '#333';
  ctx.fill();
}

function drawNumbers(ctx, radius) {
  var ang;
  var num;
  ctx.font = radius*0.15 + "px arial";
  ctx.textBaseline="middle";
  ctx.textAlign="center";
  for(num = 1; num < 13; num++){
    ang = num * Math.PI / 6;
    ctx.rotate(ang);
    ctx.translate(0, -radius*0.85);
    ctx.rotate(-ang);
    ctx.fillText(num.toString(), 0, 0);
    ctx.rotate(ang);
    ctx.translate(0, radius*0.85);
    ctx.rotate(-ang);
  }
}

function drawTime(ctx, radius){
    var now = new Date();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    //hour
    hour=hour%12;
    hour=(hour*Math.PI/6)+
    (minute*Math.PI/(6*60))+
    (second*Math.PI/(360*60));
    drawHand(ctx, hour, radius*0.5, radius*0.07);
    //minute
    minute=(minute*Math.PI/30)+(second*Math.PI/(30*60));
    drawHand(ctx, minute, radius*0.8, radius*0.07);
    // second
    second=(second*Math.PI/30);
    drawHand(ctx, second, radius*0.9, radius*0.02);
}

function drawHand(ctx, pos, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.rotate(pos);
    ctx.lineTo(0, -length);
    ctx.stroke();
    ctx.rotate(-pos);
}
</script>
    </body>
</html>

          
