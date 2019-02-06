<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
		<div class="col-md-3">

			<%@include file="./common/sidebar.jsp"%>

		</div>

		<!-- to display the actual products -->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllItems == true}">

						<script>
							window.categoryId = '';
						</script>



						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home
									</h3>
							</a></li>
							<li class="active">All Items</li>

						</ol>

					</c:if>

					<c:if test="${userClickCategoryItems == true}">

						<script>
							window.categoryId = '${category.id}';
						</script>



						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>
						</ol>

					</c:if>

				</div>

			</div>


			<div class="row">

				<div class="col-md-6">

					<table id="item" class="table table-striped table-borderd"
						class="display">

						<thead>

							<tr>


								<th>Name</th>
								<th>FoodType</th>
								<th>Price</th>
								<th>Qty Available</th>


							</tr>

						</thead>
						<tbody>
						</tbody>

						<tfoot>

							<tr>


								<th>Name</th>
								<th>FoodType</th>
								<th>Price</th>
								<th>Qty Available</th>


							</tr>

						</tfoot>




					</table>



				</div>





			</div>






		</div>


	</div>

</div>


<spring:url var="js" value="/resources/js" />
<script src="${js}/myapp.js"></script>


