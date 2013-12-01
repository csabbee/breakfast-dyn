<%@taglib tagdir="/WEB-INF/tags" prefix="b"%>
<%@page errorPage="errorHandling.jsp"%>

<jsp:useBean id="foods" class="java.util.TreeMap" scope="application" />
<jsp:useBean id="food" class="com.eggs.domain.Food" scope="session" />
<jsp:setProperty name="food" property="*" />


<h2>Add new food</h2>
<div class="row">
	<div class="col-md-6">
		<form action="addfood.jspf" method="post" class="form-horizontal">
			<b:field name="id" />
			<b:field name="name" />
			<b:field name="price" />
			<div class="col-md-3">
				<button type="submit" class="btn btn-success btn-block">
			    	<span class="glyphicon glyphicon-plus"></span>
				</button>
			</div>
		</form>
	</div>
	<div class="col-md-3 alert alert-success">
		<table class="table">
			<tbody>
				<tr class="success">
					<td>id: <br /> name: <br /> price: <br />
					</td>
					<td>${food.id}<br /> ${food.name}<br /> ${food.price}<br />
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>




