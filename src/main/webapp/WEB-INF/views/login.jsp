<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Simple Login Template | PrepBootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
	href="resources/loginform/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/loginform/font-awesome/css/font-awesome.min.css" />

<script type="text/javascript"
	src="resources/loginform/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="resources/loginform/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<div class="page-header">
			<h1>Login</h1>
		</div>

		<!-- Simple Login - START -->
		<form class="col-md-12" action="login" method="post">
			<div class="form-group">
				<input type="text" class="form-control input-lg" placeholder="id"
					name="id" value="${user.id}">
			</div>
			<div class="form-group">
				<input type="password" class="form-control input-lg"
					placeholder="Password" name="password">
			</div>
			<div class="form-group">
				<input type="submit" name="submit"
					class="btn btn-primary btn-lg btn-block" value="Login" /> <span><a
					href="#">Need help?</a></span> <span class="pull-right"><a href="#">New
						Registration</a></span>
			</div>
		</form>
		<!-- Simple Login - END -->

	</div>

</body>
</html>