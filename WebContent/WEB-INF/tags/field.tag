<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="name" description="" required="true"
	type="java.lang.String"%>

<div class="form-group">
	<label for="input${name}" class="col-sm-2 control-label">${name}</label>
	<div class="col-sm-3">
		<input type="text" class="form-control" id="input${name}" placeholder="${name}">
	</div>
</div>
