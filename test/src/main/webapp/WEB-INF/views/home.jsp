<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	
  	<header class="p-5 bg-dark text-white">
    	<div class="container">
	      	<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
	        	<a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
	          		<svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
	        	</a>
	
	        	<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
	          		<li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
	          		<li><a href="#" class="nav-link px-2 text-white">Caps</a></li>
	          		<li><a href="#" class="nav-link px-2 text-white">Tops</a></li>
	          		<li><a href="#" class="nav-link px-2 text-white">Bottoms</a></li>
	          		<li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
	        	</ul>
				
				<a href=""><img src=""/></a>
				
	        	<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
	          		<input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
	        	</form>
	
	        	<div class="text-end">
	          		<button type="button" class="btn btn-outline-light me-2">Login</button>
	          		<button type="button" class="btn btn-warning">Sign-up</button>
	        	</div>
	      	</div>
    	</div>
	</header>
	
	<div class="container">
  		<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    		<div class="col-md-4 d-flex align-items-center">
      			<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        			<svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      			</a>
      			<span class="text-muted">&copy; 2022 Pave the way, Inc</span>
    		</div>

    		<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
      			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
      			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
    		</ul>
  		</footer>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>