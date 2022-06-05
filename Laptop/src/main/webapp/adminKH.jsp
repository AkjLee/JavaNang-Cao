   
<%@page import="bean.adminbean"%>
<%@page import="bean.clientbean"%>
<%@page import="bean.accountbean"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	
    ArrayList<clientbean> ds=(ArrayList<clientbean>)request.getAttribute("dskh");
 %>
<meta charset="utf-8">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <style type="text/css">.table&amp;amp;gt;tbody&amp;amp;gt;tr&amp;amp;gt;td, .table&amp;amp;gt;tfoot&amp;amp;gt;tr&amp;amp;gt;td {  
vertical-align: middle;
}
 
@media screen and (max-width: 600px) { 
table#cart tbody td .form-control { 
width:20%; 
display: inline !important;
} 
 
.actions .btn { 
width:36%; 
margin:1.5em 0;
} 
 
.actions .btn-info { 
float:left;
} 
 
.actions .btn-danger { 
float:right;
} 
 
table#cart thead {
display: none;
} 
 
table#cart tbody td {
display: block;
padding: .6rem;
min-width:320px;
} 
 
table#cart tbody tr td:first-child {
background: #333;
color: #fff;
} 
 
table#cart tbody td:before { 
content: attr(data-th);
font-weight: bold; 
display: inline-block;
width: 8rem;
} 
 
table#cart tfoot td {
display:block;
} 
table#cart tfoot td .btn {
display:block;
}
}</style>
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
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

<h2 class="text-center">Quản lý Khách hàng</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
    </td> 
   <tr class="text-center"> 
    <th style="width:20%">Mã khách hàng</th> 
    <th style="width:20%">Tên khách hàng</th> 
    <th style="width:10%">Tên địa chỉ</th>  
    <th style="width:20%">Tên đăng nhập</th> 
    <th style="width:20%"> Mật khẩu </th> 
    <th style="width:10%"> Lựa chọn</th> 
   </tr> 
  </thead> 
  <tbody>
   <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                      clientbean s=ds.get(i);
                  %>
  <tr class="text-center">  
   <td data-th="Product"> 
    <%=s.getCliID() %>
    </td> 
   <td data-th=""><%=s.getName() %></td> 
	<td data-th="Price"><%=s.getAddress()%></td> 
	<td data-th="Price"><%=s.getAccount()%></td>
	<td data-th="Price"><%=s.getPass()%></td> 	
  
   </td> 
 <%--   <td data-th="Subtotal" class="text-center"><%=s.getDiachi()%></td>  --%>
   <td class="actions" data-th="">
    <a href="adminSuaKH.jsp?makh=<%=s.getCliID() %>" class="btn btn-info btn-sm">Sửa<i class="fa fa-edit"></i></a>
   
    <a href="adminXoaKHController?makh=<%=s.getCliID() %>" class="btn btn-danger btn-sm">Xóa<i class="fa fa-trash-o"></i></a>
    
   </td> 
  </tr> 
 
  </tbody>
  <%} %>
  <tfoot> 
 
   <tr> 
   
   </tr> 
  </tfoot> 
 </table>
</div>
</body>
</html>
