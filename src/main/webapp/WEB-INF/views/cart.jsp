<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My OPENMARKET - By HacKoung</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Anyar-HTML Bootstrap theme</title>

<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link href="resources/css/style.css" rel="stylesheet" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/datatable/css/vendor/bootstrap.min.css"
	type="text/css" rel="stylesheet">
<link href="resources/datatable/css/vendor/font-awesome.min.css"
	type="text/css" rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<link href="resources/datatable/css/jquery.bdt.css" type="text/css"
	rel="stylesheet">
<link href="resources/datatable/css/style.css" type="text/css"
	rel="stylesheet">

</head>
<body>
	<!-- HEADER SECTION START-->
	<jsp:include page="page-module/header.jsp" flush="false" />
	<!-- HEADER SECTION END-->

	<section>
		<div class="home">
			<div class="slider">
				<h1>My Shopping Cart</h1>
				<c:choose>
					<c:when test="${empty msg}">
						<small>If you want to buy a product, Click the 'Buy'
							button.</small>
					</c:when>
					<c:otherwise>
						<small>${msg}</small>
					</c:otherwise>
				</c:choose>

				<table class="table table-hover" id="bootstrap-table">
					<thead>
						<tr>
							<th>Image</th>
							<th>Name & Description</th>
							<th>Price</th>
							<th>Date</th>
							<th>Seller</th>
							<th>Buy</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${cartList}" varStatus="status">
							<tr>
								<td><img src="${product.imgPath}"
									class="img-thumbnail img-responsive" alt="${product.imgPath}"
									width="100" height="100"></td>
								<td><span style="font-weight: bold">${product.name}</span>
									<br>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.date}</td>
								<td>${product.seller}</td>
								<td><form action="#" method="POST">
										<input class="btn btn-info" type="submit" value="Buy" />
									</form></td>
								<td><form action="deleteProduct" method="POST">
										<input type="hidden" name="productId" value="${product.id}" />
										<input class="btn btn-danger" type="submit" value="Delete" />
									</form></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!-- Footer SECTION END-->
	<jsp:include page="page-module/footer.jsp" flush="false" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="resources/js/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.min.js"></script>
	<script src="resources/js/jquery.isotope.min.js"></script>
	<script src="resources/js/functions.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"
		type="text/javascript"></script>
	<script src="resources/datatable/js/vendor/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="resources/datatable/js/vendor/jquery.sortelements.js"
		type="text/javascript"></script>
	<script src="resources/datatable/js/jquery.bdt.js"
		type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('#bootstrap-table').bdt();
		});
	</script>
</body>
</html>