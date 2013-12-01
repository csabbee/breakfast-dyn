<div class="panel panel-default">
	<div class="panel-heading">List of foods:</div>
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${foods}" var="next">
				<tr>
					<td>${next.value.id}</td>
					<td>${next.value.name}</td>
					<td>${next.value.price} Ft</td>
					<td>
					  <form action="addFoodToOrder.jspf" method="post">
		   				<input type="hidden" class="form-control" value="${next.value.id}" name="id" readonly>
						<button type="submit" class="btn btn-success">
					      <span class="glyphicon glyphicon-plus-sign"></span>
					    </button>
					  </form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<hr/>


<h2>Order</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${orderInstance.orderitems}" var="next">
			<tr>
				<td>${next.value.food.id}</td>
				<td>${next.value.food.name}</td>
				<td>${next.value.food.price} Ft</td>
				<td>${next.value.quantity}</td>
				<td>
				<table>
				<tr>
				<td>
				<form action="deleteFoodFromOrder.jspf" method="post">
				  <input type="hidden" class="form-control" value="${next.value.food.id}" name="deleteid" readonly>
				  <button type="submit" class="btn btn-warning" >
				     <span class="glyphicon glyphicon-trash"></span>
				  </button>
				</form>
				</td>
				<td>
	              <div class="col-md-8"></div>
	            </td>
				<td>
				<form action="decreaseFoodQuantityInTheOrder.jspf" method="post">
				  <input type="hidden" class="form-control" value="${next.value.food.id}" name="deleteid" readonly>
				  <button type="submit" class="btn btn-danger" >
				     <span class="glyphicon glyphicon-thumbs-down"></span>
				  </button>
				</form>
				</td>
				<td>
	              <div class="col-md-8"></div>
	    		</td>
				<td>
				<form action="increaseFoodQuantityInTheOrder.jspf" method="post">
				  <input type="hidden" class="form-control" value="${next.value.food.id}" name="increaseid" readonly>
				  <button type="submit" class="btn btn-success">
				     <span class="glyphicon glyphicon-thumbs-up"></span>
				  </button>
				</form>
				</td>
				</tr>
				</table>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="container">
	<table>
		<tr>
			<td>
				<h2>Total: ${orderInstance.total} Ft</h2>
			</td>
			<td>
				<form action="checkOut.jspf" method="post">
					<div class="col-md-6">
						<button type="submit" class="btn btn-success btn-lg">
							<span class="glyphicon glyphicon-shopping-cart"></span>
						</button>
					</div>
				</form>
			</td>
		</tr>
	</table>
</div>
