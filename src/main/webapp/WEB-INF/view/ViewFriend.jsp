<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="resource/css/mystyle.css">
 --><!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>






</head>

<body>

 <nav class="navbar navbar-default navbar-fixed-top" style="background:#00ffff; solid; padding:20px;">
  <div class="container-fluid">
    <div class="navbar-header">
  
      <a class="navbar-brand" href="#">Collaboration</a>
    </div>
   <ul class="nav navbar-nav">
      <%--  <%
   String user=(String)session.getAttribute("loggedInUserID"); 
   if(user==null)
   {
	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='login'>Login</a></li></button>"); 

	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='user'>Registration</a></li></button");
   }
   else
   {
	   out.println("<li class='active'><a href='logout'>Logout</a></li>");
	   out.println("<li> Welcome"+user+"</li>");
   }
   
   %> --%>
   
   
   
  
      <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Blogs<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="blog">Add New Blog</a></li>
      <li><a href="showblog">Show List of Blogs</a></li>
    </ul></li>
     </button>
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Friends<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="unfriend">View Friends/Unfriend</a></li>
      <li ><a href="viewusers">Send Friend Request</a></li>
    <li ><a href="acceptrejectrequest">Accept/Reject Request</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Jobs<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="applyforjob">Search Job</a></li>
      <li><a href="job">Post New Jobs</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Chat Forums<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="chatforum">Create Chat Forum</a></li>
      <li><a href="viewchatforums">View Existing Forums</a></li>
    </ul></li>
    </button>
    
    
    <!-- ======================================================== -->
         <%
   String user=(String)session.getAttribute("loggedInUserID"); 
   if(user==null)
   {   
	  
	   
	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='login'>Login</a></li></button>"); 

	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='user'>Registration</a></li></button");
   
     
   }
   else
   {
	   out.println("<li class='active'><a href='logout'>Logout</a></li>");
	  /*  out.println("<li> Welcome : " + user + "</li>"); */
   }
   
   %>
    
    <!-- ========================================================= -->
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="personalchatting">Personal Chat</a></li>
    </button>
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs">Update Profile</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showblog">BLOG-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showforum">FORUM-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showchat">CHAT-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showprofile">PROFILE-LISTS</a></li>
   </button>
   
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewFriend">Friend-LISTS</a></li>
   </button>
   



  <div class="text-center">
   <% 
   String user1=(String)session.getAttribute("loggedInUserID");
   
   if(user1==null){}
   else{
	   out.println("<li> Welcome : "+ user1 +"</li>");
   }
   %>
   
   </div>



</ul></div></nav>
<br><br><br> <br><br><br>
<br><br><br> <br><br><br>


 
<script>

var app = angular.module('myApp',[]);
app.controller('ctrl',function($scope,$http){
	
	$http.get("users").then(function(response)
	{
		 $scope.user = response.data;
	});
});

</script>
 
 <div ng-app="myApp" ng-controller="ctrl"> 

<div class="text-center"> 
<input type='text' ng-model='searchtext' placeholder='Search Your Friend' autofocus/><br><br>
</div>  
  
<table class="table">
	
 
		<tr>
		<th></th>
		<th>Name</th>
		<th>Address</th>
	    <th>Role</th>
<th width="120">Sending Request</th>
			</tr>
			
 <tr ng-repeat="b in user | filter:searchtext" >
 <td><img src="https://www.infrascan.net/demo/assets/img/avatar5.png" class="img-circle" width="60px"></td>
<td>{{ b.name }}</td>
<td >{{ b.address }} </td>
<td >{{ b.role }} </td>
 <td><a href="addFriend/{{b.id}}">Send-Request</a></td>
  </tr>
  </table>
</div>











</body>
</html>