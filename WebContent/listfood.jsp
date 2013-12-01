<h2>List of foods</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Actions</th>
		</tr>
	</thead>
	
	<c:forEach items="${foods}" var="next">
	  <tr>
		<td>${next.value.id}</td>
		<td>${next.value.name}</td>
		<td>${next.value.price}</td>
		<td>
		  <table>
		    <tr>
		    <td>
		      <form action="delete.jspf" method="post">
		   		<input type="hidden" class="form-control" value="${next.value.id}" name="foodid" readonly>
				<button type="submit" class="btn btn-danger">
					<span class="glyphicon glyphicon-minus-sign"></span>
				</button>
		      </form>
		    </td>
		    <td>
		       <div class="col-md-8"></div>
		    </td>
		    <td>
		      <form action="editfood.jsp" method="post">
		   		<input type="hidden" class="form-control" value="${next.value.id}" name="foodid" readonly>
		   		<input type="hidden" class="form-control" value="${next.value.name}" name="foodname" readonly>
		   		<input type="hidden" class="form-control" value="${next.value.price}" name="foodprice" readonly>
				<button type="submit" class="btn btn-warning">
					<span class="glyphicon glyphicon-wrench"></span>
				</button>
		      </form>
		    </td>
		    </tr>
		  </table>
		</td>
	  </tr>
	</c:forEach>
</table>