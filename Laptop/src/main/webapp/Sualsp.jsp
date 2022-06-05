<%@page import="bean.adminbean"%>
<%@page import="bean.productbean"%>
<%@page import="bean.Categorybean"%>
<%@page import="java.util.ArrayList"%>
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
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  }
  .btn2 {background-color: #008CBA;} /* Blue */
  .btn3 {background-color: #f70000;}
  </style>
</head>
<body>
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	
    Categorybean dsloai=(Categorybean)request.getAttribute("dsloai");
    ArrayList<productbean> dssp=(ArrayList<productbean>)request.getAttribute("dsproduct");
 %>
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
              <% adminbean kh=(adminbean)session.getAttribute("dn");
		if(kh!=null){
		%>		 <li class="nav-item"><a class="nav-link" href="#">Xin chào: <%=kh.getUser()%> </a></li>
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

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Cập nhật thông tin loại sản phẩm</h4>
        </div>
        <div class="modal-body">
			<form action="suaLoai" method="post">
			 
								<div class="form-group">
							  <label for="ma">Mã loại sản phẩm:</label>
							  <input type="text" class="form-control" id="ma" name="maloai" value="<%=dsloai.getcateID()%>" readonly>
							</div> 
							<div class="form-group">
							  <label for="ten">Tên loại sản phẩm:</label>
							  <input type="text" class="form-control" id="ten"name="tenloai" value="<%=dsloai.getCname()%>">
							</div>
							 <a href="htloaisanpham"><button type="button" class="btn btn3" data-dismiss="modal">Close</button> </a>
							<button type="submit" class="btn btn2" style="margin-left: 51.5%;">Sửa loại sản phẩm</button>
							</form>

</body>
</html>