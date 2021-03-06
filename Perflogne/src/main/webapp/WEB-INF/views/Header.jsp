<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/mfw.css" />
<link rel="stylesheet"
	href="resources/css/button.css">
<link rel="stylesheet"
	href="resources/css/Demo.css">
	
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="resources/css/chocolat.css" type="text/css" media="screen" charset="utf-8">			  
			<link href="resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
			<link rel="stylesheet" href="resources/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
			<link href="resources/css/style4.css" rel="stylesheet" type="text/css" media="all" />	
	
</head>
<body background="resources/CssImages/bluebg.jpg">
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
			 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
				<a class="navbar-brand" href="#"></a>
			</div>
			<div class=" collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index">Home</a></li>
					<li class="dropdown" >
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact Us <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
					</li>
					<span class="nav-separator"></span>
					<li><a href="https://www.facebook.com/"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
					<li><a href="https://twitter.com/login"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
				
				
				
				
        				
        				<li class="dropdown" >
        				<security:authorize access="hasRole('USER')">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="category">Category Page</a></li>
           						<li><a href="subcategory">Subcategory Page</a></li>
            					<li><a href="product">Product Page</a></li>
            					<li><a href="supplier">Supplier Page</a></li>
            					<li><a href="brand">Brand Page</a></li>
						</ul>
							</security:authorize> 
					</li>
        		
        			        			
        		</ul>	
        			
				<!-- <ul class="nav navbar-nav navbar-right"> -->
		 			<div class="header-text-container pull-right">
    								<p class="header-text"></p>
    								<p class="header-link">
    								<security:authorize access="isAuthenticated()">Welcome
    								<security:authentication property="principal.Username"/>
                                          </security:authorize>
                                          
                                          <security:authorize access="isAnonymous()">
                                <c:if test="${empty pageContext.request.userPrincipal}">
                                  <a href="login">Login</a>    &nbsp;or&nbsp;<a href="userreg">create an account</a>       
                                  </c:if>
                                  </security:authorize>
                                  
                                  <security:authorize access="isAuthenticated()">
                               <c:if test="${!empty pageContext.request.userPrincipal}">
                                      <a href="perform_logout">Logout</a>
                               </c:if>
                          </security:authorize>
		 			</p>
		 			
        				 <security:authorize access="hasRole('ROLE_ADMIN')">
        				<div class="dropdown" >
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="category">Category Page</a></li>
           						<li><a href="subcategory">Subcategory Page</a></li>
            					<li><a href="product">Product Page</a></li>
            					<li><a href="supplier">Supplier Page</a></li>
            					<li><a href="brand">Brand Page</a></li>
						</ul>
					</div>
        			</security:authorize>
		 			
        				
        				 
		 			</div>		
							
			</div>
		</div>
	</nav>
 
			
				

		