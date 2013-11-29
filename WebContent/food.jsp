<%@taglib tagdir="/WEB-INF/tags" prefix="b"%>
<jsp:useBean id="foodList" class="java.util.TreeSet" scope="application"/>
<jsp:useBean id="food" class="com.eggs.domain.Food" scope="session" />
<jsp:setProperty name="food" property="*" />

<h2>Food</h2>
<div class="row">
	<div class="col-md-8">
		<form class="form-horizontal">
			<b:field name="id" />
			<b:field name="name" />
			<b:field name="price" />
			<b:submit caption="Submit" />
		</form>
	</div>
	<div class="col-md-2">
		<table class="table">
			<tbody>
				<tr class="success">
					<td>id: <br /> name: <br /> price: <br />
					</td>
					<td>${food.id} <br /> ${food.name}<br /> ${food.price}<br />
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>


