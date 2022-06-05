<%@page import="bean.adminbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  .btn{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
  }
  .btn2 {background-color: #008CBA;} /* Blue */
  .btn3 {background-color: #f70000;}
  </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="Menuadmin.jsp">ILAPTOP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Menuadmin.jsp">Trang chủ</a>
      </li>
      <% adminbean kh=(adminbean)session.getAttribute("dn");
		if(kh!=null){
		   
		%>
       <li class="nav-item">
        <a class="nav-link" href="htdonhang">Đơn hàng</a>
      </li>
      <div>
        <div class="nav-item" style="text-align: center;">		

									<li class="dropdown profile_details_drop" >
										<a href="#"  data-toggle="dropdown" aria-expanded="false">
												
											 <!-- <span class="prfil-img"><img src="images/in4.jpg" alt=""> </span>  -->
												<div class="nav-link">
													<span>Sản phẩm</span>
												
												<!-- <i class="fa fa-angle-down"></i>
												<i class="fa fa-angle-up"></i>
												<div class="clearfix"></div> -->	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu" style="top: 46px">
											<li> <a href="htsanpham"><i class="fa fa-cog"></i> Quản lý sản phẩm</a> </li> 
											
											<li> <a href="htloaisanpham"><i class="fa fa-user"></i> Quản lý loại sản phẩm</a> </li>
										</ul>
									</li>
         </div>
       </div>

		 <li class="nav-item"><a class="nav-link" href="#">Xin chào: <%=kh.getUser()%> </a></li>
		 <li class="nav-item"><a class="nav-link" href="dangxuatadmin"><span></span> Đăng Xuất</a></li>
           <%}else{ %>

		 <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
              <%  if(session.getAttribute("kt")!=null && session.getAttribute("kt").toString().equals("0")){%>
             		 <script>alert('Dang nhap sai');</script>
              <%} %>
           <%} %>
   
</ul>				
 </div>
</nav>
 <!-- Button Đăng nhập -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
         <h4 class="modal-title">Đăng nhập hệ thống</h4>
 <button type="button" class="close" data-dismiss="modal" style="height: 68px">&times;</button>
         
        </div>
        <div class="modal-body">
  				<form action="ktdnadminController" method="post">
 				<label>Tài khoản:</label><br>
  				<input type="text" id="TenDN" name="TenDN" style="width: 265px"><br>
  				<label>Mật khẩu:</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau" style="width:  265px"><br>
  				<input name="btlog" value="Đăng nhập" type="submit" style="margin-top: 10px">
				</form>
  			</div>
      </div>
    </div>
 </div>
<% if(kh!=null){ %>
<div>

		<div class="w3l-calendar-left">
 		<div class="calendar-heading">
<!-- <p>Noi dung</p>
 -->								
 					<div class="agile-tables">
					<div class="w3l-table-info" style="color:#2196F3; ">
					  		<h2 style=" text-align: center;">Danh mục chức năng của admin:</h2>
						  <div class="row">
						  	<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						  		
						  	</div>
						  	<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						  		<div class="list-group">
								    <a href="Menuadmin.jsp" class="list-group-item active">Trang chủ</a>
								    <a href="htsanpham" class="list-group-item">Quản lý sản phẩm</a>
								    <a href="htloaisanpham" class="list-group-item">Quản lý loại sản phẩm</a>
								    <a href="adminKHController" class="list-group-item">Quản lý khách hàng</a>
								    <a href="htdonhang" class="list-group-item">Quản lý đơn hàng</a>
								  </div>
						  	</div>
						  	<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						  		
						  	</div>
						  </div>
					</div>
								</div>
								</div>
							</div>


</div>
<%} %>
</body>
</html>