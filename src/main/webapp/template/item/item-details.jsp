<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- header -->
<head>
<c:import url="../common/header.jsp"></c:import>
<link href="../static/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- nav -->
	<c:import url="../common/nav.jsp" />

	<!-- item details card  -->
	<div class="container">
		<div class="row">
			<div class="col-8 mx-auto">
				<div class="card details-card mb-3">
								<img src="${ item.image }" class="card-img-top details-card-image"
									alt="${ item.title }">
								<div class="card-body text-center">
									<h5 class="card-title">${ item.title }</h5>
									<p class="card-text">category : ${ item.category }</p>
									<p class="card-text">price : ${ item.price }</p>
									<p class="card-text">quantity : ${ item.quantity }</p>
									<p class="card-text">subTotal : $${ item.subTotal }</p>
									<p class="card-text">issueDate : ${ item.issueDate }</p>
									<p class="card-text">essential : ${ item.essential ? 'Yes' : 'No' }</p>
									<h3>Item Description :</h3>
									<p class="card-text">${ item.description }</p>
									
									<c:url var="updateLink" value="item">
										<c:param name="mode" value="LOAD"/>
										<c:param name="itemId" value="${item.id }"/>
									</c:url>
									
									<c:url var="deleteLink" value="item">
										<c:param name="mode" value="DELETE"/>
										<c:param name="itemId" value="${item.id }"/>
									</c:url>

									<a href="${updateLink }" class="btn btn-info">Update</a>
									 <a href="${deleteLink }" class="btn btn-danger">Delete</a>
								</div>
							</div>
						</div>
					
				</div>
			</div>


	<!--  footer -->
	<c:import url="../common/footer.jsp" />

</body>
</html>