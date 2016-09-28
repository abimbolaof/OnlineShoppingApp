

<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Add Product</h1>
			<p class="lead">Fill the below Information </p>
		</div>
		<form:form method="Post" action="${pageContext.request.contextPath}/admin/productInventory/addProduct" commandName="product" enctype="multipart/form-data">
		<div class="form-group">
		<label for="name">Name</label> 
		<form:errors path="productName" cssStyle="color:#ff0000;" />
		<form:input path="productName" id="name" class="form-control"/>
		</div>
		<div class="form-group">
						<label for="category">Category</label> <label
							class="checkbox-inline"><form:radiobutton
								path="productCategory" id="category" value="Skirts" />Skirts</label>
						<label class="checkbox-inline"><form:radiobutton
								path="productCategory" id="category" value="Pants" />Pants</label> 
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Shoes" />Shoes</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Accessories" />Accessories</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Bags" />Bags</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Sweaters" />Sweaters & Cardigans</label>
					</div>
						<div class="form-group">
						<label for="description">Description</label>
						<form:textarea path="productDescription" id="description"
							class="form-Control" />
					</div>

					<div class="form-group">
						<label for="price">Price</label><form:errors path="productPrice" cssStyle="color:#ff0000;" />
						<form:input path="productPrice" id="price" class="form-Control" />
					</div>

					<div class="form-group">
						<label for="condition">Condition</label> <label
							class="checkbox-inline"><form:radiobutton
								path="productCondition" id="condition" value="new" />New</label> <label
							class="checkbox-inline"><form:radiobutton
								path="productCondition" id="condition" value="used" />Used</label>
					</div>

					<div class="form-group">
						<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
								path="productStatus" id="status" value="active" />Active</label> <label
							class="checkbox-inline"><form:radiobutton
								path="productStatus" id="status" value="inactive" />Inactive</label>
					</div>

					<div class="form-group">
						<label for="unitInStock">Unit In Stock</label><form:errors path="productUnitInStock" cssStyle="color:#ff0000;" />
						<form:input path="productUnitInStock" id="unitInStock"
							class="form-Control" />
					</div>

					<div class="form-group">
						<label for="manufacturer">Manufacturer</label>
						<form:input path="productManufacture" id="manufacturer"
							class="form-Control" />
					</div>

			 		<div class="form-group">
						<label class="control-label" for="productImage">Upload
							Picture</label>
						<form:input id="productImage" path="productImage" type="file"
							class="form:input-large" />
					</div> 

					<br />
					<br />

					<input type="submit" value="submit" class="btn btn-default">
					<a href="<c:url value="/admin/productInventory" />"
						class="btn btn-default">Cancel</a>
		</form:form>
		
		
		<%@ include file="/WEB-INF/views/template/footer.jsp"%>
	</div>
</div>



