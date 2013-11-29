<h2>L</h2>
<h2>List of foods</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Action</th>
		</tr>
	</thead>
	
	<c:forEach items="${foods}" var="next">
	<tr>
		<td>${next.value.id}</td>
		<td>${next.value.name}</td>
		<td>${next.value.price}</td>
		<c:url value="delete.jspf" var="deleteUrl">
		    <c:param name="foodid" value="${next.value.id}"></c:param>
		</c:url>
		<c:url value="editfood.jsp" var="editUrl">
			<c:param name="foodid" value="${next.value.id}"></c:param>
			<c:param name="foodname" value="${next.value.name}"></c:param>
			<c:param name="foodprice" value="${next.value.price}"></c:param>
		</c:url>
		<td>
			<a class="btn btn-small" href='${deleteUrl}'><span class="glyphicon glyphicon-remove-circle"></span></a>
			<a class="btn btn-small" href='${editUrl}'><span class="glyphicon glyphicon-wrench"></span></a>
		</td>
	</tr>
	</c:forEach>
</table>