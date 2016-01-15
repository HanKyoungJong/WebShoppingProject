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

<title>Shop Item - Start Bootstrap Template</title>

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

<body>
	<!-- HEADER SECTION START-->
	<jsp:include page="page-module/header.jsp" flush="false" />
	<!-- HEADER SECTION END-->


	<!-- Page Content -->
	<div class="container" style="margin-top: 20px;">


		<div class="col-md-9">

			<div class="thumbnail">

				<img class="img-responsive"
					src="resources/product/img/detail_sample_img.jpg" alt="">
				<div class="caption-full">
					<a class="pull-right"></a>
					<h4>
						<a>Name:  Birkenstock Sandal</a>
					</h4>
					<h4>
						<a>Date:  2015010660103</a>
					</h4>
					
					<h4>
						<a>Size:  245</a>
					</h4>
					<h4>
						<a>Detail:</a>
					</h4>

					<p>Wear comfortable shoes.
					   Many unbelievably popular.
					   Birkenstock shoes sineulsu all ages!
					   Man Sandal</p>
					<h4>
						<a>Price:    $24.99</a>
					</h4>
					
				</div>
				<div class="text-right">
					<a class="btn btn-success">Add to Cart</a> <a
						class="btn btn-success">Add to Wishlist</a>
				</div>

			</div>

		</div>



	</div>

	<!-- jQuery -->
	<script src="resources/productlist/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/productlist/js/bootstrap.min.js"></script>
</body>

</html>
