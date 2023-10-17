<html>

<head>

<%@include file="./base.jsp"%>

<!-- jstl uri -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<style type="text/css">
* {
	font-family: "Poppins", sans-serif;
	font-weight: bold !important;
	outline: none !important;
	box-sizing: border-box !important;
	text-decoration: none !important;
	font-style: normal !important;
}

.backColor {
	background-color: #15182b;
}

#abc {
	width: 350px;
	height: 45px;
	color: #fff;
	background-color: #15182b;
	border-radius: 5px;
	border-color: #15182b;
	padding: 1em !important;
}

#abc::placeholder {
	color: #ccc;
}
</style>
</head>

<body class="backColor">

	<div class="container text-white">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center py-2">Result Management System</h3>

				<div class="card" style="background-color: #1f273a;">
					<div class="card-body">
						<form action="${pageContext.request.contextPath }/updateresult"
							method="post" class="row g-3">

							<input type="hidden" class="form-control" name="id"
								value="${result.id }">

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="name"
									placeholder="Name.." value="${result.name }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="fname"
									placeholder="Father.." value="${result.fname }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="rollNo"
									placeholder="Roll No.." value="${result.rollNo }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="english"
									placeholder="English Marks(0-100)" value="${result.english }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="urdu"
									placeholder="Urdu Marks(0-100)" value="${result.urdu }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="math"
									placeholder="Math Marks(0-100)" value="${result.math }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="sindhi"
									placeholder="Sindhi Marks(0-100)" value="${result.sindhi }"
									required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="islamiat"
									placeholder="Islamiat Marks(0-100)" value="${result.islamiat }"
									required="required">
							</div>

							<div class="col-auto">
								<button type="submit" class="btn btn-primary"
									style="width: 350px; height: 45px">+Submit</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
