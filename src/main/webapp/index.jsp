<%@page import="com.paf.categoryapi.models.CategoryDAO"%>
<%
CategoryDAO categoryDAO = new CategoryDAO();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Category API</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
<!-- Fontawesome -->
<script src="https://kit.fontawesome.com/66bf06966e.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style/main.css" />
</head>
<body>
	<div id="category-table" class="container-fluid p-3">
		<div>
			<button class="btn btn-warning" id="add-category-button">Add
				Category</button>
		</div>
		<%=categoryDAO.getAllCategories()%>
	</div>
	<div id="add-form"
		class="container-fluid p-5 bg-dark bg-opacity-10 w-75 rounded">
		<!-- back button -->
		<button id="back-btn"
			style="border: none; background-color: #ffffff00">
			<i class="fa-solid fa-circle-left" style="font-size: 20pt"></i>
		</button>
		<form class="row g-3 needs-validation" novalidate
			action="http://localhost:8051/categoryapi/webapi/categories/category"
			method="post" id="add-category-form">
			<!-- Category ID -->
			<div class="col-md-4" style="display: none">
				<input name="categoryID" type="text" class="form-control"
					id="categoryID" value="0" />
			</div>

			<!-- Category name -->
			<div class="col-md-4">
				<label for="categoryName" class="form-label">Category name</label> <input
					name="categoryName" type="text" class="form-control"
					id="categoryName" placeholder="Ex: Domestic" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Fixed charge -->
			<div class="col-md-4">
				<label for="fixedCharge" class="form-label">Fixed charge</label> <input
					name="fixedCharge" type="number" class="form-control"
					id="fixedCharge" placeholder="Ex: 1000.00" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Unit charge -->
			<div class="col-md-4">
				<label for="unitCharge" class="form-label">Unit charge</label> <input
					name="unitCharge" type="number" class="form-control"
					id="unitCharge" placeholder="Ex: 20.00" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Tax charge -->
			<div class="col-md-4">
				<label for="taxCharge" class="form-label">Tax charge</label> <input
					name="taxCharge" type="number" class="form-control" id="taxCharge"
					placeholder="Ex: 10.00" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Relief -->
			<div class="col-md-4">
				<label for="relief" class="form-label">Relief</label> <input
					name="relief" type="number" class="form-control" id="relief"
					placeholder="Ex: 10.00" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Submit button -->
			<div class="col-12">
				<button id="add-category-submit" class="btn btn-primary"
					type="submit">Insert</button>
			</div>

			<!-- clear button -->
			<div class="col-12">
				<button id="reset-form" class="btn btn-danger" type="reset">
					Clear</button>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="js/insert.js"></script>
</body>
</html>
