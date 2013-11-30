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
					<c:url value="editfood.jsp" var="editUrl">
						<c:param name="foodid" value="${next.value.id}"></c:param>
						<c:param name="foodname" value="${next.value.name}"></c:param>
						<c:param name="foodprice" value="${next.value.price}"></c:param>
					</c:url>
					<td>
					  <form action="addfoodtoorder.jspf" method="post">
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
					<form action="deletefoodfromorder.jspf" method="post">
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
	<h2>Total: ${orderInstance.total} Ft</h2>
</div>
