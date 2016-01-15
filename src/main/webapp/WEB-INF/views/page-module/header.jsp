<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse.collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="navbar-brand">
						<a href="home"><h1>Market</h1></a>
					</div>
				</div>

				<div class="navbar-collapse collapse">
					<div class="menu">
						<ul class="nav nav-tabs" role="tablist">
							<c:choose>
								<c:when test="${empty sessionScope.loginUser}">
									<li role="presentation"><a href="home">Home</a></li>
									<li role="presentation"><a href="login">Login</a></li>
									<li role="presentation"><a href="signup">Signup</a></li>
								</c:when>
								<c:otherwise>
									<li role="presentation"><a href="home">Home</a></li>
									<li role="presentation"><a href="man">MAN</a></li>
									<li role="presentation"><a href="woman">WOMAN</a></li>
									<li role="presentation"><a href="contact">Contact</a></li>
									<li role="presentation"><a href="logout">Logout</a></li>
									<li role="presentation"><a href="list">list</a></li>
									<li role="presentation"><a>환영합니다.${sessionScope.loginUser.name}님!</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>
