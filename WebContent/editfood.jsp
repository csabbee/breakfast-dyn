<jsp:useBean id="foods" class="java.util.TreeMap" scope="application" />

<h2>L</h2>
<h2>Edit food:</h2>
<div class="col-md-6">
	<form action="editfood.jspf" method="post" class="form-horizontal">
		<b:readonlyfield name="id" value="${param.foodid}"/>
		<b:editfood name="name" value="${param.foodname}"/>
		<b:editfood name="price" value="${param.foodprice}" />
		<div class="col-md-3">
			<button type="submit" class="btn btn-success btn-block">Submit</button>
		</div>
	</form>
</div>