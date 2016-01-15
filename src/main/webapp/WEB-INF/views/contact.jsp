<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
</head>
<body>
	<!-- HEADER SECTION START-->
	<jsp:include page="page-module/header.jsp" flush="false" />
	<!-- HEADER SECTION END-->


	<div id="contact">
		<div class="container">
			<div class="col-lg-8">
				<div class="map">
					<iframe
						src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Kuningan,+Jakarta+Capital+Region,+Indonesia&amp;aq=3&amp;oq=kuningan+&amp;sll=37.0625,-95.677068&amp;sspn=37.410045,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=Kuningan&amp;t=m&amp;z=14&amp;ll=-6.238824,106.830177&amp;output=embed">
					</iframe>
				</div>
			</div>
			<section id="contact-page">
				<div class="container">
					<div class="center">
						<h3>Drop Your Message</h3>
						<p>Sed do eiusmod tempor incididunt ut labore et dolore magna</p>
					</div>
					<div class="col-lg-4">
						<div class="row contact-wrap">
							<div class="status alert alert-success" style="display: none"></div>
							<form id="main-contact-form" class="contact-form"
								name="contact-form" method="post" action="sendemail.php">
								<div class="form-group">
									<label>Name *</label> <input type="text" name="name"
										class="form-control" required="required">
								</div>
								<div class="form-group">
									<label>Email *</label> <input type="email" name="email"
										class="form-control" required="required">
								</div>
								<div class="form-group">
									<label>Subject *</label> <input type="text" name="subject"
										class="form-control" required="required">
								</div>
								<div class="form-group">
									<label>Message *</label>
									<textarea name="message" id="message" required="required"
										class="form-control" rows="8"></textarea>
								</div>
								<div class="form-group">
									<button type="submit" name="submit"
										class="btn btn-primary btn-lg" required="required">Submit
										Message</button>
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
</body>
</html>