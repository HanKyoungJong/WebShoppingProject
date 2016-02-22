<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>My OPENMARKET - By HacKoung</title>

<!-- Bootstrap Core CSS -->
<link href="resources/productlist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/productlist/css/shop-item.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link href="resources/css/style.css" rel="stylesheet" />


</head>

<body onload='document.submit.focus();'>
	<!-- HEADER SECTION START-->
	<jsp:include page="page-module/header.jsp" flush="false" />
	<!-- HEADER SECTION END-->


	<!-- Page Content -->
	<section id="register">
		<div class="container" style="margin-top: 20px;">


			<div class="col-md-9">

				<div class="thumbnail">

					<img class="img-responsive" src="${product.imgPath}"
						alt="${product.imgPath}">
					<div class="caption-full">
						<a class="pull-right"></a>
						<h4>
							<a>Name: ${product.name}</a>
						</h4>
						<h4>
							<a>Date: ${product.date}</a>
						</h4>

						<h4>
							<a>Description: ${product.description}</a>

						</h4>
						<h4>
							<a>Price: ${product.price}</a>
						</h4>
						<h4>
							<a>Seller: ${product.seller}</a>
						</h4>

					</div>
					<c:choose>
						<c:when test="${empty seller}">
							<div class="text-right">
								<form action="addProduct" method="POST">
									<input type="hidden" name="productId" value="${product.id}" />
									<input class="btn btn-success" name="submit" type="submit"
										value="Add to Cart" />
								</form>
							</div>
							<div class="text-right">
								<form action="#" method="POST">
									<input class="btn btn-success" name="submit" type="submit"
										value="Add to Buy">
								</form>
							</div>
						</c:when>
						<c:otherwise>
							<div class="text-right">
								<form action="productModify" method="POST">
									<input type="hidden" name="productId" value="${product.id}" />
									<input class="btn btn-success" name="submit" type="submit"
										value="Modify">
								</form>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer SECTION END-->
	<jsp:include page="page-module/footer.jsp" flush="false" />

	<!-- jQuery -->
	<script src="resources/productlist/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/productlist/js/bootstrap.min.js"></script>
</body>

</html>