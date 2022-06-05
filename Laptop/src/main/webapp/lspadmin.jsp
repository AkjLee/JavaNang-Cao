<%@page import="bean.adminbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Categorybean"%>
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
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	
    ArrayList<Categorybean> dsloai=(ArrayList<Categorybean>)request.getAttribute("dsCategory");
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
<div>
<div class="grids">
				
					
				
					<div class="agile-calendar-grid">
						<div class="page">
							
							<div class="w3l-calendar-left">
								<div class="calendar-heading">
<!-- 									<p>Noi dung</p>
 -->								
 					<div class="agile-tables">
					<div class="w3l-table-info">
					  <h2 style="color:#2196F3; text-align: center; ">Thêm loại sản phẩm</h2>
					  <hr>
					  <div class="row">
					  	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
					  		
					  	</div>
					  	<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
					  		<form action="themlsanpham" method="post">
							<div class="form-group">
							  <label for="ten">Tên loại sản phẩm:</label>
							  <input type="text" class="form-control" id="ten" name="TenLoaiSanPham">
							</div>
							<button type="submit" class="btn btn2">Thêm loại sản phẩm</button>
							</form>
							 <hr>
					  	</div>
					  	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
					  		
					  	</div>
					  </div>
					  <h2 style="color:#2196F3; text-align: center;">Cập nhật loại sản phẩm</h2>
					  <hr>
					    <table width="1000" align="center">
    
    <tr> 
       <td valign="top" width="200">
       		<table class="table table-bordered" >
       		 <thead style="color:#2196F3;">
   	  <tr style="background-color: #0984e3;  color: white;">
					<th>Mã loại sản phẩm</th>
					<th>Tên loại sản phẩm</th>
					<th  style="text-align: center;"> Chỉnh sửa</th>
				</tr>
  </thead>

  <tbody style="background-color: #edecec; color: black;">
   <%
   		int n=dsloai.size();
   		for(int i=0;i<n;i++) {
     	Categorybean s=dsloai.get(i);
                  %>
  <tr class="info">
							
							<td><%=s.getcateID() %></td>
							<td><%=s.getCname() %></td>
							<td style="text-align: center;">
													
							<a class="btn "  href="loadLoai?id=<%=s.getcateID()%>"> Sửa </a>
							<a class="btn btn3" href="xoaloaisanpham?malsp=<%=s.getcateID()%>"> Xóa</a>
			
							</td>
						  </tr>
						  <%} %>
</tbody>
       		 
       		</table>
       </td>
      </tr>
 </table>	
					</div>

 </div>
</div>
</div>					
</div>
</div>
</div>


</body>
</html>