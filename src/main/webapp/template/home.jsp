<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- head -->
<head>
<c:import url="common/header.jsp"></c:import>
<link href="static/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Nav Bar open -->
	<c:import url="common/nav.jsp"></c:import>
	<!-- nav bar close -->

	<!--  expense item list start -->
	<div class="container">
		<div class="row">
			<c:forEach var="item" items="${ itemList }">
				<c:url var="detailsLink" value="item">
					<c:param name="mode" value="SINGLE" />
					<c:param name="itemId" value="${item.id }" />
				</c:url>
				<div
					class="col-xs-12 col-sm-10 col-md-6 col-lg-4 col-xl-4 col-xxl-3">
					<div class="card list-card mb-3">
						<img src="${ item.image }"
							class="card-img-top card-image list-card-image"
							alt="${ item.title }">
						<div class="card-body text-center">
							<h5 class="card-title">${ item.title }</h5>
							<p class="card-text">${ item.category }</p>
							<p class="card-text">$${ item.subTotal }</p>
							<a href="${detailsLink }" class="btn btn-info float-end">view</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!--  expense item list end -->

	<c:import url="common/footer.jsp"></c:import>
</body>
</html>