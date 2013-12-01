<h2>List of orders</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Order</th>
			<th>Actions</th>
		</tr>
	</thead>

	<c:forEach items="${orderRepository.orders}" var="next">
		<tr>
			<td>${next.value.id}</td>
			<td><c:forEach items="${next.value.orderitems}" var="orderitems">
				${orderitems.value.quantity} x ${orderitems.value.food.name}<br />
				</c:forEach>
			</td>
			<td>
				<form action="deleteOrderFromRepository.jspf" method="post">
					<input type="hidden" class="form-control" value="${next.value.id}" name="orderid" readonly>
					<button type="submit" class="btn btn-danger">
						<span class="glyphicon glyphicon-trash"></span>
					</button>
				</form>
			</td>
		</tr>
	</c:forEach>
</table>