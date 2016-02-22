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
</head>
<body onload='document.registerForm.name.focus();'>
	<!-- HEADER SECTION START-->
	<jsp:include page="page-module/header.jsp" flush="false" />
	<!-- HEADER SECTION END-->

	<section>
		<div id="contact">
			<div class="container">
				<div class="col-lg-8">

					<div class="col-md-6">

						<img id="img_preview" style="display: none;" class="img-thumbnail"
							alt="Cinque Terre">

					</div>
				</div>
				<section id="contact-page">
					<div class="container">
						<div class="center">
							<h3>OPEN MARKET</h3>
							<p>Your Registration</p>
						</div>
						<div class="col-lg-4">
							<div class="row contact-wrap">
								<div class="status alert alert-success" style="display: none"></div>
								<form id="main-contact-form" class="contact-form"
									name="contact-form" method="post" action="contact"
									enctype="multipart/form-data">
									<div class="form-group">
										<label>Name *</label> <input type="text" name="name"
											class="form-control">
									</div>
									<div class="form-group">
										<label>Image *</label> <input type="file" id="input_file"
											class="form-control" name="imgFile"
											placeholder="Product Image">
									</div>
									<div class="form-group">
										<label>Price *</label> <input type="number" name="Price"
											class="form-control">
									</div>
									<div class="form-group">
										<label>Description *</label>
										<textarea name="description" required class="form-control"
											rows="8"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" name="submit"
											class="btn btn-primary btn-lg" value="submit">Update
									</div>
								</form>
							</div>
							<!--/.row-->
						</div>
					</div>
					<!--/.container-->
				</section>
				<!--/#contact-page-->
			</div>
		</div>
	</section>

	<!-- Footer SECTION END-->
	<jsp:include page="page-module/footer.jsp" flush="false" />


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="resources/js/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.easing.min.js"></script>
	<script src="resources/js/jquery.isotope.min.js"></script>
	<script src="resources/js/functions.js"></script>
	<!-- Image Preview  -->
	<script src="resources/js/image_preview.js"></script>
</body>
</html>