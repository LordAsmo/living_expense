<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../common/header.jsp" />
</head>
<body>

	<c:import url="../common/nav.jsp" />

	<!-- container -->
	<div class="container-md">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-header">Update Item Form</div>
				<div class="card-body">
				<c:if test="${not empty updateOk and not updateOk }">
					<div class="alert alert-danger" role="alert">Updating Item is failed</div>
				</c:if>
					
					<!-- form -->
					<form action="item" method="post">
						<input type="hidden" name="mode" value="UPDATE">
						<input type="hidden" name="itemId" value="${item.id }">
						<div class="mb-3">
							<label for="title" class="form-label">Title</label> <input
								type="text" class="form-control" id="title" name="title"
								value="${item.title }"
								required="required">
						</div>
						<div class="mb-3">
							<label for="category" class="form-label">Category</label> <input
								type="text" class="form-control" id="category" name="category"
								value="${item.category }"
								required="required">
						</div>
						<div class="mb-3">
							<label for="price" class="form-label">Price</label> <input
								type="text" class="form-control" id="price" name="price"
								value="${item.price }"
								required="required">
						</div>
						<div class="mb-3">
							<label for="quantity" class="form-label">Quantity</label> <input
								type="number" class="form-control" id="quantity" name="quantity"
								value="${ item.quantity }"
								required="required">
						</div>
						<div class="mb-3">
							<label for="image" class="form-label">Image URL</label> <input
								type="url" class="form-control" id="image" name="image"
								value="${ item.image }"
								required="required">
						</div>

						<div class="mb-3">
							<label for="description" class="form-label">Description</label>
							<textarea rows="10" class="form-control" id="description"
								name="description" required="required">${item.description } </textarea>
						</div>
						<div class="mb-3 form-check">
						<c:choose>
							<c:when test="${item.essential }">
								<input type="checkbox" class="form-check-input" id="essential"
									name="essential" value="true" checked="checked">
							</c:when>
							<c:otherwise>
								<input type="checkbox" class="form-check-input" id="essential"
									name="essential" value="true">
							</c:otherwise>
						
						</c:choose>
							<label for="essential" class="form-check-label">Essential</label>
							
						</div>

						<button type="submit" class="btn btn-primary float-end">Create</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- form -->



	<c:import url="../common/footer.jsp" />

</body>
</html>