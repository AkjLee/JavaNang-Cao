<%@page import="bean.productbean"%>
<%@page import="bean.Categorybean"%>
<%@page import="bean.productbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.productbo"%>
<%@page import="bo.Categorybo"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://www.google.com/recaptcha/api.js"></script>
	<script>
		function recapcha_callback() {
			var registerBtn = document.querySelector('#register-btn');
			registerBtn.removeAttribute('disabled');
			registerBtn.style.cursor = 'pointer';
		}
	</script>
  <style>
  #registerBtn{
  	cursor: not-allowed;
  }
  
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  #slideshow {
  overflow: hidden;
  height: 200px;
  width: 728px;
  margin: 0 auto;
}

.slide-wrapper {
  width: 2912px;
  -webkit-animation: slide 14s ease infinite;
}

.slide {
  float: left;
  height: 510px;
  width: 728px;
}


@-webkit-keyframes slide {
  20% {margin-left: 0px;}
  30% {margin-left: -728px;}
  50% {margin-left: -728px;}
  60% {margin-left: -1456px;}
  80% {margin-left: -1456px;}
}
  </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="htproductController">ILAPTOP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="htproductController">Trang ch???</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="htproductController">S???n ph???m</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Gi???i thi???u</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="#">L???ch s???</a>
      </li>  
      <li> 
      <form method="POST" class="search_form">
						<div class="input-	group">
							<input type="text" class="search-query form-control input-group" Placeholder="My laptop.">
							<span class="input-group-btn">
								<!-- <button class="btn btn-primary rounded-circle btnpro" type="button" id="btn-search"  >
									<span class="fa fa-search"></span>
								</button> -->
							</span>						
						</div>
					</form>
				</li>	
      <li class="nav-item" style="text-indent: 320px">
        <a class="nav-link" href="htgioController">Gi??? h??ng</a>
      </li>  
      <li class="nav-item" >
        <a class="nav-link" href="#">Thanh to??n</a>
      </li> 
      <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#myModal">
 			????ng nh???p</a>
 	  </li>
 	  <li class="nav-item">
        <a class="nav-link" href="#">????ng k??</a>
      </li>
    </ul>
  </div>  	
</nav>
<div>

<div id="slideshow">
<div class="slide-wrapper">
<div class="slide">
<img src="slider_1.jpg"width="100%"/> 
</div><div class="slide">
<img src="slider_4.png" width="100%" /> 
</div><div class="slide">
<img src="slider_5.png" width="100%"/> 	
</div>
</div>
</div>

<%--     <ul class="nav navbar-nav navbar-right">
      
		<% khachhangbean kh=(khachhangbean)session.getAttribute("dn");
		if(kh!=null){
		   
		%>
		 <li><a href="#">Xin ch??o: <%=kh.getHoten()%> </a></li>
           <%}else {%>
           <li><a href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> ????ng nh???p</a></li>
            <%} %>
    </ul> --%>
  </div>
</nav>
<!-- Button ????ng nh???p -->
<<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
         <h4 class="modal-title">????ng nh???p h??? th???ng</h4>
 <button type="button" class="close" data-dismiss="modal" style="height: 68px">&times;</button>
         
        </div>
        <div class="modal-body">
  				<form action="ktdnController" method="post">
 				<label>T??i kho???n:</label><br>
  				<input type="text" id="TenDN" name="TenDN" style="width: 265px"><br>
  				<label>M???t kh???u:</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau" style="width:  265px"><br>
  				<input name="btlog" value="????ng nh???p" type="submit" style="margin-top: 10px">
				</form>
  			</div>
      </div>
    </div>
 </div>
 <br>
 <h2 style="text-align:center">????NG K?? TH??NH VI??N</h2><table align="center">

                 <form action="ktdkController" style="width: 742px;height: 542px; margin-left: 30px" method="post">
			        <div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="name" type="text" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p h??? t??n" aria-label="Nh???p h??? t??n">
					</div>
					 <div style="width: 740px; height: 30px; margin-top:10px; margin-left: 525px ">
						<input name="adress" type="text" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p ?????a ch???" aria-label="Nh???p ?????a ch???">
					</div>
					 <div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="phone" type="text" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p s??? ??i???n tho???i" aria-label="Nh???p s??? ??i???n tho???i">
					</div>
					 <div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="email" type="text" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p Email" aria-label="Nh???p Email">
					</div>
					<div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="TenDN" type="text" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p t??n ????ng nh???p" aria-label="Nh???p t??n ????ng nh???p">
					</div>
					<div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="Matkhau" type="password" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p m???t kh???u" aria-label="Nh???p m???t kh???u">
					</div>
						<div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px">
						<input name="repass" type="password" style="padding: 3px;float: left;width: 295px;color: #000;font-size: 15px;margin-right: 10px;height: 30px;" placeholder="Nh???p l???i m???t kh???u" aria-label="Nh???p l???i m???t kh???u">
					</div>
					<div class="g-recaptcha" data-sitekey="6Lf-ObQdAAAAAHBNVUs7A2Gd_iQrP7D6EOGZSbgj" 
											 data-callback="recapcha_callback"
					style="width: 742px; margin-left: 525px" method="post"></div>
					<div style="width: 740px; height: 30px;margin-top: 10px; margin-left: 525px	">
						<button type="submit" style="background-color: #1a83d2;height: 33px;width: 100px;float: left;text-align: center;font-weight: bold;color: #FFF;cursor: pointer; border: 1px">????ng k??</button>
						<a href="#" style=" margin-left: 54px" ><button class="btn" disabled>Ti???p t???c mua h??ng</button></a>
					</div>
					
					
		        </form>
                        
</body>
</html>








