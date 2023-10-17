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
				<h3 class="text-center py-3">Result Management System</h3>

				<c:if test="${not empty succMsg }">
					<h5 class="text-success text-center">${succMsg }</h5>
					<c:remove var="succMsg" />
				</c:if>

				<div class="card" style="background-color: #1f273a;">
					<div class="card-body">
						<form action="handleForm" method="post" class="row g-3">

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="name"
									placeholder="Name.." required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="fname"
									placeholder="Father.." required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="rollNo"
									placeholder="Roll No.." required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="english"
									placeholder="English Marks(0-100)" required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="urdu"
									placeholder="Urdu Marks(0-100)" required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="math"
									placeholder="Math Marks(0-100)" required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="sindhi"
									placeholder="Sindhi Marks(0-100)" required="required">
							</div>

							<div class="col-auto">
								<input type="text" id="abc" class="form-control" name="islamiat"
									placeholder="Islamiat Marks(0-100)" required="required">
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

		<h2 class="text-center mt-3 mb-3">Result</h2>
		<c:if test="${not empty deleteMsg }">
			<h5 class="text-success text-center">${deleteMsg }</h5>
			<c:remove var="deleteMsg" />
		</c:if>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12" style="background-color: #1f273a;">
				<div class="table-responsive">
					<table
						class="table table-bordered border-white text-center text-white mt-3">
						<thead>
							<tr style="color: #fadf35;">
								<th scope="col">No</th>
								<th scope="col">Name</th>
								<th scope="col">Father</th>
								<th scope="col">Roll No</th>
								<th scope="col">English</th>
								<th scope="col">Urdu</th>
								<th scope="col">Math</th>
								<th scope="col">Islamiat</th>
								<th scope="col">Sindhi</th>
								<th scope="col">Total</th>
								<th scope="col">Obt</th>
								<th scope="col">Per %</th>
								<th scope="col">Grade</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${result1 }" var="r">
								<c:set var="i"
									value="${r.english + r.urdu + r.math + r.sindhi + r.islamiat }"
									scope="application"></c:set>
								<tr>
									<th scope="row">${r.id }</th>
									<td>${r.name }</td>
									<td>${r.fname }</td>
									<td>${r.rollNo }</td>
									<td><c:choose>
											<c:when test="${r.english < 40 }">
												<h7 class="text-danger">${r.english }</h7>
											</c:when>
											<c:otherwise>${r.english }</c:otherwise>
										</c:choose></td>

									<td><c:choose>
											<c:when test="${r.urdu < 40 }">
												<h7 class="text-danger">${r.urdu }</h7>
											</c:when>
											<c:otherwise>${r.urdu }</c:otherwise>
										</c:choose></td>

									<td><c:choose>
											<c:when test="${r.math < 40 }">
												<h7 class="text-danger">${r.math }</h7>
											</c:when>
											<c:otherwise>${r.math }</c:otherwise>
										</c:choose></td>

									<td><c:choose>
											<c:when test="${r.sindhi < 40 }">
												<h7 class="text-danger">${r.sindhi }</h7>
											</c:when>
											<c:otherwise>${r.sindhi }</c:otherwise>
										</c:choose></td>

									<td><c:choose>
											<c:when test="${r.islamiat < 40 }">
												<h7 class="text-danger">${r.islamiat }</h7>
											</c:when>
											<c:otherwise>${r.islamiat }</c:otherwise>
										</c:choose></td>

									<td>500</td>
									<td>${i }</td>
									<td><c:out value="${i /500 * 100 }"></c:out></td>
									<td><c:choose>
											<c:when test="${i /500 * 100 >= 80 }">A+</c:when>
											<c:when test="${i /500 * 100 >= 70 }">A</c:when>
											<c:when test="${i /500 * 100 >= 60 }">B</c:when>
											<c:when test="${i /500 * 100 >= 50 }">C</c:when>
											<c:when test="${i /500 * 100 >= 40 }">D</c:when>
											<c:when test="${i /500 * 100 < 40 }">
												<h7 class="text-danger fw-bold">F</h7>
											</c:when>
											<c:otherwise>
												<h7 class="text-danger fw-bold">F</h7>
											</c:otherwise>
										</c:choose></td>
									<td><a href="delete/${r.id }"> <i
											class="fa-solid fa-trash me-1" style="color: #ff0a0a;"></i>
									</a> <a href="update/${r.id }"><i class="fa-solid fa-pen-nib"></i></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>





</body>
</html>
