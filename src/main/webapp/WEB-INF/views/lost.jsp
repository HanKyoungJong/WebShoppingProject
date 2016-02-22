<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>My OPENMARKET - By HacKoung</title>
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
	<section id="reset">
		<div class="container">

			<div class="page-header">
				<h1>
					Foget Your Password?<br>
					<c:choose>
						<c:when test="${empty msg}">

						</c:when>
						<c:otherwise>
							<small>${msg}</small>
						</c:otherwise>
					</c:choose>
				</h1>
			</div>

			<form name="userResetForm" class="col-md-12" action="resetSubmit"
				method="post">
				<div class="form-group">
					<input type="text" class="form-control input-lg" placeholder="Id"
						name="username">
				</div>

				<div class="form-group">
					<input name="submit" type="submit"
						class="btn btn-primary btn-lg btn-block" value="SEND" />
				</div>

			</form>

		</div>
	</section>
	<!-- Footer SECTION END-->
	<jsp:include page="page-module/footer.jsp" flush="false" />

</body>
</html>