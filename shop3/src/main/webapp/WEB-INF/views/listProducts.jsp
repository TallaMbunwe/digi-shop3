<div class="container">

	<div class="row">

		<!--  sidebar display -->
		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>


		</div>

		<!-- actual products display -->
		<div class="col-md-9">

			<!-- Added breadcrumb components -->
			<div class="row">

				<div class="col-xs-12">

					<table id="productListTable"
						class="table table-striped table-borderd">

						<thead>

							<tr>

								<th>ID</th>
								<th>Name</th> 

							</tr>

						</thead>

					</table>

				</div>

				<div class="col-lg-12">


					<c:if test="${userClickAllProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home"> Home </a></li>
							<li class="active">All Products</li>

						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home"> Home </a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>

						</ol>
					</c:if>

				</div>

			</div>

		</div>

	</div>

</div>