
<%@page import="bean.adminbean"%>
<%@page import="bean.lichsuMHbean"%>
<%@page import="bean.clientbean"%>
<%@page import="bean.Categorybean"%>
<%@page import="bean.productbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.productbo"%>
<%@page import="bo.Categorybo"%> 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
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
  
 .btn{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  }
  .btn2 {background-color: #008CBA;} /* Blue */
  .btn3 {background-color: #f70000;} /*  Red */
  .btn4 {background-color: #0F0718;} 
  </style>
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
        <a class="nav-link" href="Menuadmin.jsp">Trang ch???</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="htdonhang">????n h??ng</a>
      </li>
        <div class="nav-item" style="text-align: center;">		

									<li class="dropdown profile_details_drop" >
										<a href="#"  data-toggle="dropdown" aria-expanded="false">
												
											 <!-- <span class="prfil-img"><img src="images/in4.jpg" alt=""> </span>  -->
												<div class="nav-link">
													<span>S???n ph???m</span>
												
												<!-- <i class="fa fa-angle-down"></i>
												<i class="fa fa-angle-up"></i>
												<div class="clearfix"></div> -->	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu" style="top: 46px">
											<li> <a href="htsanpham"><i class="fa fa-cog"></i> Qu???n l?? s???n ph???m</a> </li> 
											
											<li> <a href="htloaisanpham"><i class="fa fa-user"></i> Qu???n l?? lo???i s???n ph???m</a> </li>
										</ul>
									</li>
        </div>
              <% adminbean kh=(adminbean)session.getAttribute("dn");
		if(kh!=null){
		%>		 <li class="nav-item"><a class="nav-link" href="#">Xin ch??o: <%=kh.getUser()%> </a></li>
		 <li class="nav-item"><a class="nav-link" href="dangxuatadmin"><span></span> ????ng Xu???t</a></li>
           <%}else{ %>

		 <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> ????ng nh???p</a></li>
              <%  if(session.getAttribute("kt")!=null && session.getAttribute("kt").toString().equals("0")){%>
             		 <script>alert('Dang nhap sai');</script>
              <%} %>
           <%} %>
    </ul>
  </div>  	
</nav>
<div>	


<!-- Button ????ng nh???p -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">????ng nh???p h??? th???ng</h4>
        </div>
        <div class="modal-body">
  				<form action="ktdnController" method="post">
 				<label>T??i kho???n</label><br>
  				<input type="text" id="TenDN" name="TenDN" style="width: 265px"><br>
  				<label>M???t kh???u</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau" style="width:  265px"><br>
  				<input name="btlog" value="????ng nh???p" type="submit" style="margin-top: 10px">
				</form>
  			</div>
      </div>
    </div>
 </div>
 <br>
   <h2 style="text-align:center">X??C NH???N ????N H??NG</h2><table align="center">
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<lichsuMHbean> ds =(ArrayList<lichsuMHbean>) request.getAttribute("dsls");
   
 %>

             <table width="1000" align="center">
    
    <tr> 
       <td>
       		<table class="table table-bordered">
       		 <thead>
    <tr>
   	  <th scope="col">M?? chi ti???t h??a ????n</th>
       <th scope="col">M?? h??a ????n</th>
      <th scope="col" >T??n s???n ph???m</th>
      <th scope="col">S??? l?????ng mua</th>
      <th scope="col">Gi??</th>
      <th scope="col">Th??nh ti???n</th>
      <th scope="col">Tr???ng Th??i</th>
    </tr>
  </thead>
       		 <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                    lichsuMHbean ls=ds.get(i);
                  %>
       			<tr>
       						 <td> <%=ls.getDbID()%> </td>
        					<td><%=ls.getbID() %></td>
                           
                            <td> <%=ls.getName()%> </td>
                             <td><%=ls.getNumber()%> </td>
                             <td><%=ls.getPrice() %> </td> 
                             <td><%=ls.getThanhtien()%> </td>
                            <td> <form action="xacnhanDH?id=<%=ls.getDbID() %>&damua=<%=ls.getDamua() %>" method="post">
                           <%if (Long.parseLong(ls.getDamua())==0){%>
                            <input class="btn btn" type="submit" name="xacnhan" value="X??c nh???n">
                            <input class="btn btn3" type="submit" name="huy" value="H???y"> 
                                  
                            <%}else {%>
                            <input class="btn btn" type="submit" name="xacnhan" value="???? x??c nh???n">
                             <input class="btn btn3 " type="submit" name="huy" value="H???y"> 
                            <%} %>
                            </form> </td>
     
        		
        		</tr>
            <%}%> 
       		</table>
        </td>
        </tr>
        </table>

</body>
</html>








